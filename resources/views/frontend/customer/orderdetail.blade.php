@extends('frontend.layout')

@section('content')
    <div class="container" style="margin-top: 50px; margin-bottom: 50px">
        @include('frontend.note')
        <div class="row">
            <center><p style="color: #c43b68; font-size: 2em">Chi Tiết Đơn Hàng Ngày {{date('d/m/Y',strtotime($dataOrder->created_at))}}</p></center>
        </div>
        <br>
        
        <div class="row mt-5">
            <div class="col-md-3 ">
                @include('frontend.customer.menu')
                <form action="/customer/logout" method="post">
                    @csrf
                    <button class="btn" style="color: #c43b68; border: 1px solid #c43b68; background: transparent; border-radius: 0">Đăng Xuất</button>
                </form>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <div class="col-md-12">
                        {{$dataOrder->order_shipping}}
                    </div>
                </div>
                <div class="row">
                    <div class="col-md-12">
                        <br>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Sản phẩm</th>
                                    <th>Ảnh sản phẩm</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data as $item)
                                <tr>
                                    <td>
                                        <a style="font-size: 20px" href="shop/product/{{$item->product_id}}-{{Str::slug($item->product_name, '-')}}.html">{{$item->product->product_name ?? 'Sản phẩm'}}</a>
                                        <br>
                                        <span>Số lượng: {{$item->order_detail_quantity}}</span><br>
                                        <span>Giá: {{number_format($item->order_detail_price)}}</span>
                                    </td>
                                    <td><img style="width: 150px; height: 170px" src="{{$item->product->product_image}}" alt=""></td>
                                </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection