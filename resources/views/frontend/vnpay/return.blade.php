<?php
// Giỏ hàng
namespace App\Http\Controllers\frontend;

error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED);
date_default_timezone_set('Asia/Ho_Chi_Minh');
use App\Http\Requests\CheckoutRequest;
use App\Helpers\SeoHelper;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\ProductModel;
use App\Models\CategoryModel;
use App\Models\BrandModel;
use App\Models\CouponModel;
use App\Models\OrderModel;
use App\Models\UserModel;
use App\Models\OrderdetailModel;
use App\Models\Ship\CityModel;
use App\Models\Ship\DistrictModel;
use App\Models\Ship\ShipModel;
use Illuminate\Support\Facades\Auth;
use Session;
use Carbon\Carbon;
use Mail;
use App\Mail\OrderDone;
use Illuminate\Support\Str;
use App\Http\Services\CartService;

class CartController extends Controller
{
    public $cart;
    public $coupon;
    public $cartService;     
    public function paymentCreate(Request $request)
    {
        $vnp_TmnCode = "UDOPNWS1"; //Mã website tại VNPAY 
        $vnp_HashSecret = "EBAHADUGCOEWYXCMYZRMTMLSHGKNRPBN"; //Chuỗi bí mật
        $vnp_Url = "http://sandbox.vnpayment.vn/paymentv2/vpcpay.html";
        $vnp_Returnurl = "http://127.0.0.1:8000/payment/return";
        $vnp_TxnRef = Str::random(10); //Mã đơn hàng. Trong thực tế Merchant cần insert đơn hàng vào DB và gửi mã này sang VNPAY
        $vnp_OrderInfo = "Thanh toán hóa đơn phí dich vụ";
        $vnp_OrderType = 'billpayment';
        $vnp_Amount = $request->input('amount') * 100;
        $vnp_Locale = 'vn';
        $vnp_IpAddr = $_SERVER['REMOTE_ADDR'];

        $inputData = array(
            "vnp_Version" => "2.1.0",
            "vnp_TmnCode" => $vnp_TmnCode,
            "vnp_Amount" => $vnp_Amount,
            "vnp_Command" => "pay",
            "vnp_CreateDate" => date('YmdHis'),
            "vnp_CurrCode" => "VND",
            "vnp_IpAddr" => $vnp_IpAddr,
            "vnp_Locale" => $vnp_Locale,
            "vnp_OrderInfo" => $vnp_OrderInfo,
            "vnp_OrderType" => $vnp_OrderType,
            "vnp_ReturnUrl" => $vnp_Returnurl,
            "vnp_TxnRef" => $vnp_TxnRef,
        );

        if (isset($vnp_BankCode) && $vnp_BankCode != "") {
            $inputData['vnp_BankCode'] = $vnp_BankCode;
        }
        ksort($inputData);
        $query = "";
        $i = 0;
        $hashdata = "";
        foreach ($inputData as $key => $value) {
            if ($i == 1) {
                $hashdata .= '&' . $key . "=" . $value;
            } else {
                $hashdata .= $key . "=" . $value;
                $i = 1;
            }
            $query .= urlencode($key) . "=" . urlencode($value) . '&';
        }

        $vnp_Url = $vnp_Url . "?" . $query;
        if (isset($vnp_HashSecret)) {
            // $vnpSecureHash = md5($vnp_HashSecret . $hashdata);
            $vnpSecureHash = hash('sha256', $vnp_HashSecret . $hashdata);
            $vnp_Url .= 'vnp_SecureHashType=SHA256&vnp_SecureHash=' . $vnpSecureHash;
        }
        return redirect($vnp_Url);
    }

    //Hàm xử lý đơn hàng sau khi nhận đã thanh toán
    public function paymentReturn(Request $request)
    {

        if ($request->vnp_ResponseCode == "00") {
            $dataOrder = new OrderModel();
            $dataCustomerOrderShow = Session::get('dataCustomer');
            $dataUser = UserModel::find($dataCustomerOrderShow['user_id']);

            $dataOrder->user_id = $dataCustomerOrderShow['user_id'];
            $dataOrder->order_note = $dataCustomerOrderShow['order_note'];
            $dataOrder->order_shipping = $dataCustomerOrderShow['order_shipping'];
            $dataOrder->order_pay_type = $dataCustomerOrderShow['order_pay_type'];
            $dataOrder->order_profit = $dataCustomerOrderShow['order_profit'];
            $dataOrder->order_total = $dataCustomerOrderShow['order_total'];
            $dataOrder->order_status = 1;
            $dataOrder->created_at = $dataCustomerOrderShow['created_at'];

            $dataOrder->save();

            $order_id = $dataOrder->order_id; //Lấy id order vừa insert vào bảng

            foreach ($this->cart as $val) {
                //Xử lý xóa sản phẩm khi đặt đơn
                $dataProduct = ProductModel::find($val['cart_id']);
                $dataProduct->product_amount = $dataProduct->product_amount - $val['cart_quantity'];
                $dataProduct->save();
                //Kết Thúc Xử lý xóa sản phẩm khi đặt đơn

                $dataOrderdetail = new OrderdetailModel();
                $dataOrderdetail->order_id = $order_id;
                $dataOrderdetail->product_id = $val['cart_id'];
                $dataOrderdetail->order_detail_quantity = $val['cart_quantity'];
                $dataOrderdetail->order_detail_price = $val['cart_price_sale'];

                $dataOrderdetail->save();
            }

            // $this->sendMailOrder($dataUser->user_email, $dataOrder, $dataUser, $dataCustomerOrderShow['order_shipping'], $this->cart, $this->coupon, Session::get('priceShip'));

            $this->deleteSession();

            return redirect('/')->with('msgSuccess', 'Đặt Hàng và thanh toán Thành Công');
        }
        return redirect('/')->with('msgError', 'Lỗi trong quá trình thanh toán phí dịch vụ');
    }

    Hàm gửi mail sau khi đặt hàng thành công
    // public function sendMailOrder($mail_to, $order,$dataUser, $orderShipping, $orderdetail, $coupon, $ship){
    //     Mail::to($mail_to)->send((new OrderDone($order,$dataUser, $orderShipping, $orderdetail, $coupon, $ship))->delay(60));
    // }
    //Hàm xóa session sau khi đặt hàng thành công
    public function deleteSession()
    {
        Session::forget('cart');
        Session::forget('coupon');
        Session::forget('totalCart');
        Session::forget('priceShip');
        Session::forget('dataCustomer');
    }
}