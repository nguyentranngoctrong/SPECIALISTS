<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
        <meta name="description" content="">
        <meta name="author" content="">
        <title>Tạo mới đơn hàng</title>
        <!-- Bootstrap core CSS -->
        <link href="/vnpay_assets/assets/bootstrap.min.css" rel="stylesheet"/>
        <!-- Custom styles for this template -->
        <link href="/vnpay_assets/assets/jumbotron-narrow.css" rel="stylesheet">  
        <script src="/vnpay_assets/assets/jquery-1.11.3.min.js"></script>
    </head>
<style>
button:hover {
  background-color: #FFDC00;
  font-size: calc(100% + 2px);
  text-align: center;
}
    .header h3  {
  font-weight: bold;
  text-align: center;
  background: linear-gradient(to right, #0074D9, #FF4136, #2ECC40, #FFDC00);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: animate-gradient 4s linear infinite;
}
   .container h3{
  font-weight: bold;
  text-align: center;
  background: linear-gradient(to right, #0074D9, #FF4136, #2ECC40, #FFDC00);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: animate-gradient 4s linear infinite;
}
.form-group label{
  font-weight: bold;
  text-align: center;
  size: 50px;
  background: linear-gradient(to right, #0074D9, #FF4136, #2ECC40, #FFDC00);
  -webkit-background-clip: text;
  -webkit-text-fill-color: transparent;
  animation: animate-gradient 4s linear infinite;
}
.form-group button{
   text-align: center;

}
@keyframes animate-gradient {
  from {
    background-position: 0 0;
  }
  to {
    background-position: 100% 0;
  }
}
</style>
    <body>
        <div class="container">
            <div class="header clearfix">
                <h3 class="text-muted">VNPAY DEMO</h3>
            </div>
            <h3>Tạo mới thanh toán đơn hàng</h3>
            <div class="table-responsive">
                <form action="/payment/online" id="create_form" method="post">       
                    @csrf
                    <!-- <div class="form-group">
                        <label for="amount">Số tiền</label>
                        <input class="form-control" id="amount"
                               name="amount" type="number" value="{{$order_total}}"/>
                    </div> -->
                    <div class="form-group">
                        <label for="amount">Số tiền</label>
                        <input class="form-control" id="amount" name="amount"
                            type="number" value="{{$order_total}}" readonly />
                    </div>
                    <div class="form-group">
                        
                    </div>
                    <div class="form-group">
                        <label for="language">Ngôn ngữ</label>
                        <select name="language" id="language" class="form-control">
                            <option value="vn">Tiếng Việt</option>
                            <option value="en">English</option>
                        </select>
                    </div>
                    <div class="container">
           <div class="header clearfix">

                <!-- <h3 class="text-muted">VNPAY DEMO</h3> -->
            
                    <!-- <button type="submit" class="btn btn-primary" id="btnPopup">Xác nhận thanh toán</button> -->
                    <button type="submit" name="redirect" id="redirect" class="btn btn-default" onclick="history.back()">Tiếp Tục</button>

                </form>
            </div>
                <h3>Phương thức thanh toán</h3>
                <div class="form-group">
                    <button onclick="pay()">Giao dịch thanh toán</button><br>
                </div>
                <div class="form-group">
                    <button onclick="querydr()">API truy vấn kết quả thanh toán</button><br>
                </div>
                <div class="form-group">
                    <button onclick="refund()">API hoàn tiền giao dịch</button><br>
                </div>
            <p>
                &nbsp;
            </p>
            <footer class="footer">
                   <p>&copy; VNPAY <?php echo date('Y')?></p>
            </footer>
        </div> 
        <script>
             function pay() {
              window.location.href = "/vnpay/vnpay_pay.php";
            }
            function querydr() {
              window.location.href = "/vnpay/vnpay_querydr.php";
            }
             function refund() {
              window.location.href = "/vnpay/vnpay_refund.php";
            }
        </script>
            </div>
            
            <p>
                &nbsp;
            </p>
        
        </div>
        
    </body>
</html>
<!-- <label for="bank_code">Ngân hàng</label>
                        <select name="bank_code" id="bank_code" class="form-control">
                            <option value="">---Chọn----</option>
                            <option value="NCB"> Ngan hang NCB</option>
                            <option value="AGRIBANK"> Ngan hang Agribank</option>
                            <option value="SCB"> Ngan hang SCB</option>
                            <option value="SACOMBANK">Ngan hang SacomBank</option>
                            <option value="EXIMBANK"> Ngan hang EximBank</option>
                            <option value="MSBANK"> Ngan hang MSBANK</option>
                            <option value="NAMABANK"> Ngan hang NamABank</option>
                            <option value="VNMART"> Vi dien tu VnMart</option>
                            <option value="VIETINBANK">Ngan hang Vietinbank</option>
                            <option value="VIETCOMBANK"> Ngan hang VCB</option>
                            <option value="HDBANK">Ngan hang HDBank</option>
                            <option value="DONGABANK"> Ngan hang Dong A</option>
                            <option value="TPBANK"> Ngân hàng TPBank</option>
                            <option value="OJB"> Ngân hàng OceanBank</option>
                            <option value="BIDV"> Ngân hàng BIDV</option>
                            <option value="TECHCOMBANK"> Ngân hàng Techcombank</option>
                            <option value="VPBANK"> Ngan hang VPBank</option>
                            <option value="MBBANK"> Ngan hang MBBank</option>
                            <option value="ACB"> Ngan hang ACB</option>
                            <option value="OCB"> Ngan hang OCB</option>
                            <option value="IVB"> Ngan hang IVB</option>
                            <option value="VISA"> Thanh toan qua VISA/MASTER</option>
                        </select> -->