<head>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css">

</head>
<style>
.mega__item {
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between;
  
}
.mega__item li {
  width: calc(50% - 20px);
}

</style>
<header id="htc__header" class="htc__header__area header--one">
    <!-- Start Mainmenu Area -->
    <div id="sticky-header-with-topbar" class="mainmenu__wrap sticky__header">
        <div class="container">
            <div class="row">
                <div class="menumenu__container clearfix">
                    <div class="col-lg-2 col-md-2 col-sm-3 col-xs-5"> 
                        <div class="logo">
                             <a href="/"><img src="../libs/testlogo.jpg" alt="logo images" width="100" height="80"></a>
                        </div>
                    </div>
                    <div class="col-md-7 col-lg-8 col-sm-5 col-xs-3">
                        <nav class="main__menu__nav hidden-xs hidden-sm">
                            <ul class="main__menu">
                                <li class="drop"><a href="/">Trang Chủ</a></li>
                                <li class="drop"><a href="/shop">Cửa Hàng</a>
                                    <ul class="dropdown mega_dropdown">
                                        <!-- Start Single Mega MEnu -->
                                        <li><a class="mega__title" href="/shop">Đặc Sản</a>
                                            <ul class="mega__item"> 
                                                
                                                @foreach ($dataBrand as $item)
                                                <li><a href="/shop/brand/{{$item->brand_id}}-{{Str::slug($item->brand_name, '-')}}.html">{{$item->brand_name}}</a></li>
                                                @endforeach
                                                
                                            </ul>
                                        </li>
                                        <!-- End Single Mega MEnu -->
                                        <!-- Start Single Mega MEnu -->
                                        <li><a class="mega__title" href="/shop">Loại Sản Phẩm</a>
                                            <ul class="mega__item">
                                                <!-- <div class="col-sm-6"> -->
                                                @foreach ($dataCategory as $item)
                                                <li><a href="/shop/category/{{$item->category_id}}-{{Str::slug($item->category_name, '-')}}.html">{{$item->category_name}}</a></li>
                                                @endforeach
                                                <!-- </div> -->
                                            </ul>
                                        </li>
                                        <!-- End Single Mega MEnu -->
                                    </ul>
                                </li>
                                <li class="drop"><a href="/blog">Bài Viết</a></li>
                                <li><a href="/contact">Liên Hệ</a></li>
                            </ul>
                        </nav>

                        <div class="mobile-menu clearfix visible-xs visible-sm">
                            <nav id="mobile_dropdown">
                                <ul>
                                    <li class="drop"><a href="/">Trang Chủ</a></li>
                                    <li class="drop"><a href="/shop">Của Hàng</a>
                                    </li>
                                    <li class="drop"><a href="/blog">Bài Viết</a></li>
                                    <li><a href="/contact">Liên Hệ</a></li>
                                </ul>
                            </nav>
                        </div>  
                    </div>
                    <div class="col-md-3 col-lg-2 col-sm-4 col-xs-4">
                        <div class="header__right">
                            <div class="header__search search search__open">
                                <a href=""><i class="icon-magnifier icons"></i></a>
                            </div>
                            <div class="header__account">
                                <a href="/customer"><i class="fa fa-user"></i></a>
                            </div>
                            <div class="header__account">
                                <a href="/customer/order"><i class="fa fa-truck"></i></a>
                            </div>
                            <div class="header__account">
                                <a href="/customer/wishlist"><i class="fa fa-heart"></i></a>
                            </div>
                        
                            <div class="htc__shopping__cart">
                                {{-- <button class="cart__menu" type="button"><i class="icon-handbag icons"></button> --}}
                                <a class="cart__menu" href="javascript:;"><i class="icon-handbag icons"></i></a>
                                {{-- <a href="#"> --}}
                                    
                                    {{-- <span class="htc__qua">{{$countCart}}</span> --}}
                                </a>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
            <div class="mobile-menu-area"></div>
        </div>
    </div>
    <!-- End Mainmenu Area -->
</header>