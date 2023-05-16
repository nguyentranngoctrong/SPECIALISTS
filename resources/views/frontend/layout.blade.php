<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Đặc Sản Vùng Miền - {{$data_seo->meta_title}}</title>
    <!---seo------->
    <meta name="description" content="{{$data_seo->meta_description}}">
    <meta name="keywords" content="{{$data_seo->meta_keyword}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="canonical" href="{{$data_seo->url_canonical}}">
    <meta content="" name="author"/>
    <!---seo fb------->
    <meta property="og:site_name" content="http://127.0.0.1:8000/"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="{{$data_seo->url_canonical}}"/>
    <meta property="og:title" content="Long Decor - {{$data_seo->meta_title}}"/>
    <meta property="og:description" content="{{$data_seo->meta_description}}"/>
    @if (isset($data_seo_image))
        <meta property="og:image" content="{{$data_seo_image}}"/>
    @else
        <meta property="og:image" content="../libs/testlogo.jpg"/>
    @endif

    <link rel="shortcut icon" type="image/x-icon" href="../libs/testlogo.jpg">
    <link rel="apple-touch-icon" href="apple-touch-icon.png">
    

    <base href="/">
    <!-- All css files are included here. -->
    <!-- Bootstrap fremwork main css -->
    <link rel="stylesheet" href="../frontend_assets/css/bootstrap.min.css">
    <!-- Owl Carousel min css -->
    <link rel="stylesheet" href="../frontend_assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="../frontend_assets/css/owl.theme.default.min.css">
    <!-- This core.css file contents all plugings css file. -->
    <link rel="stylesheet" href="../frontend_assets/css/core.css">
    <!-- Theme shortcodes/elements style -->
    <link rel="stylesheet" href="../frontend_assets/css/shortcode/shortcodes.css">
    <!-- Theme main style -->
    <link rel="stylesheet" href="../frontend_assets/style.css">
    <!-- Responsive css -->
    <link rel="stylesheet" href="../frontend_assets/css/responsive.css">
    <!-- User style -->
    <link rel="stylesheet" href="../frontend_assets/css/custom.css">

    @yield('style')
    <!-- Modernizr JS -->
    <script src="../frontend_assets/js/vendor/modernizr-3.5.0.min.js"></script>
</head>

<body>

    <!-- Body main wrapper start -->
    <div class="wrapper">
        <!-- Start Header Style -->
        @include('frontend.menu')
        <!-- End Header Area -->

        <div class="body__overlay"></div>
        <!-- Start Offset Wrapper -->
        @include('frontend.offset')
        <!-- End Offset Wrapper -->
        
        @yield('content')

        <!-- Start Footer Area -->
        <footer id="htc__footer">
            <!-- Start Footer Widget -->
            <div class="footer__container bg__cat--1">
                <div class="container">
                    <div class="row">
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-6 col-sm-6 col-xs-12">
                            <div class="footer">
                                <h2 class="title__line--2">Thông tin</h2>
                                <div class="ft__details">
                                    <div class="row">
                                        <div class="col-sm-9">
                                            <p>Đặc Sản Vùng Miền luôn luôn mong muốn đem đến cho quý khách hàng những sản phẩm uy tín, chất lượng, giá cả tốt nhất thị trường</p>
                                        </div>
                                    </div>
                                    <div class="ft__social__link">
                                        <ul class="social__link">
                                            <li><a href="https://www.instagram.com/ntn.trong/?fbclid=IwAR0eEDBi7uyEq7Y6-Ap3vSZKe2pB9Ox-NLCauQ5yB6kCstSnt_TxuqrnH5Q"><i class="icon-social-instagram icons"></i></a></li>

                                            <li><a href="https://www.facebook.com/profile.php?id=100090554097338"><i class="icon-social-facebook icons"></i></a></li>

                                            <li><a href="http://127.0.0.1:8000/contact"><i class="icon-social-google icons"></i></a></li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer">
                                <h2 class="title__line--2">MENU</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        <li><a href="/">Trang chủ</a></li>
                                        <li><a href="/shop">Cửa hàng</a></li>
                                        <li><a href="/blog">Bài viết</a></li>
                                        <li><a href="/contact">Liên hệ</a></li>
                                    </ul>
                                </div>  
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer">
                                <h2 class="title__line--2">Tỉnh/Thành Phố</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        @foreach ($dataBrand as $item)
                                            <li><a href="/shop/brand/{{$item->brand_id}}-{{Str::slug($item->brand_name, '-')}}.html">{{$item->brand_name}}</a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                        <!-- Start Single Footer Widget -->
                        <div class="col-md-2 col-sm-6 col-xs-12 xmt-40">
                            <div class="footer">
                                <h2 class="title__line--2">LOẠI SẢN PHẨM</h2>
                                <div class="ft__inner">
                                    <ul class="ft__list">
                                        @foreach ($dataCategory as $item)
                                            <li><a href="/shop/category/{{$item->category_id}}-{{Str::slug($item->category_name, '-')}}.html">{{$item->category_name}}</a></li>
                                        @endforeach
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- End Single Footer Widget -->
                    </div>
                </div>
            </div>
            <!-- End Footer Widget -->
        </footer>





    <!-- chat fb thêm mới -->
<!-- <div id="fb-root"></div>
<script>(function(d, s, id) {
var js, fjs = d.getElementsByTagName(s)[0];
if (d.getElementById(id)) return;
js = d.createElement(s); js.id = id;
js.src = "//connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v2.5";
fjs.parentNode.insertBefore(js, fjs);
}(document, 'script', 'facebook-jssdk'));</script>
<style>
#cfacebook{position:fixed;bottom:38px;right:20px;z-index:99;width:260px;height:auto;box-shadow:6px 6px 6px 10px rgba(0,0,0,0.2);border-top-left-radius:5px;border-top-right-radius:5px;overflow:hidden;}
#cfacebook .fchat{float:left;width:100%;height:270px;overflow:hidden;display:none;background-color:#fff;}
#cfacebook .fchat .fb-page{margin-top:-5px;float:left;}
#cfacebook a.chat_fb{float:left;padding:0 25px;width:260px;color:#fff;text-decoration:none;height:40px;line-height:40px;text-shadow:0 1px 0 rgba(0,0,0,0.1);background-image:url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAAqCAMAAABFoMFOAAAAWlBMV…8/UxBxQDQuFwlpqgBZBq6+P+unVY1GnDgwqbD2zGz5e1lBdwvGGPE6OgAAAABJRU5ErkJggg==);background-repeat:repeat-x;background-size:auto;background-position:0 0;background-color:#3a5795;border:0;border-bottom:1px solid #133783;z-index:9999999;margin-right:12px;font-size:18px;}
#cfacebook a.chat_fb:hover{color:yellow;text-decoration:none;}
.fchat span{ width:260px!important;}
</style>
<script>
document.addEventListener('DOMContentLoaded', function() {
    var button = document.querySelector('.chat_fb');
    var chatBox = document.querySelector('.fchat');

    button.addEventListener('click', function() {
        chatBox.classList.toggle('show');
    });
});
</script>
<div id="cfacebook">
<a href="javascript:;" class="chat_fb" onClick="return:false;"><i class="fa fa-facebook-square"></i> Trò chuyện với chúng tôi</a>
<div class="fchat">
<div style="width:250px;" class="fb-page"
data-href="m.me/118229974531149"
data-tabs="messages"
data-width="260"
data-height="280"
data-small-header="true">
<div class="fb-xfbml-parse-ignore">
<blockquote></blockquote>
</div>
</div>
</div>
</div>
</div> -->

<!-- Test4 00000000000000000000000000000 -->

<!--Start of Tawk.to Script-->
<!--Start of Tawk.to Script-->
<!-- <script type="text/javascript">
var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();
(function(){
var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];
s1.async=true;
s1.src='https://embed.tawk.to/6409837931ebfa0fe7f1857e/1gr2ij5a9';
s1.charset='UTF-8';
s1.setAttribute('crossorigin','*');
s0.parentNode.insertBefore(s1,s0);
})();
</script> -->
<!--End of Tawk.to Script-->
<!--End of Tawk.to Script-->



<!--Start of Fchat.vn-->
<script type="text/javascript" src="https://cdn.fchat.vn/assets/embed/webchat.js?id=64098e7354105c25661a3f52" async="async">
  
</script><!--End of Fchat.vn-->

 <!--Tét 3 00000000000000000000000000000  -->
<!-- <div id="fb-root"></div>
<div id="chatBox">
  <div class="chatTitle">Tôi đang ở đây để giúp đỡ! Bạn có cần hỗ trợ gì không?</div>
  <div class="chatInput">
    <input type="text" placeholder="Nhập tin nhắn...">
    <button type="submit">Gửi</button>
  </div>
</div>
<a href="#" class="chatBtn"><i class="fa fa-facebook-square"></i> Trò chuyện với tôi</a>
<script>
document.addEventListener('DOMContentLoaded', function() {
  var button = document.querySelector('.chatBtn');
  var chatBox = document.getElementById('chatBox');
  var inputField = chatBox.querySelector('.chatInput input');
  var submitBtn = chatBox.querySelector('.chatInput button');

  // Toggle chat box display
  button.addEventListener('click', function() {
    chatBox.classList.toggle('show');
    inputField.focus();
  });

  // Submit message
  submitBtn.addEventListener('click', function(e) {
    e.preventDefault();
    var message = inputField.value.trim();
    if (message !== '') {
      // Replace this line with code to send message to a chat bot or customer service agent
      console.log('Sent: ' + message);
      inputField.value = '';
      inputField.focus();
    }
  });

  // Hide chat box when ESC is pressed
  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
      chatBox.classList.remove('show');
    }
  });
});
</script>
<style>
    #chatBox {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 9999;
  width: 300px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  overflow: hidden;
  display: none;
  font-family: Arial, sans-serif;
}

#chatBox .chatTitle {
  background-color: #4267B2;
  color: #fff;
  font-weight: bold;
  padding: 10px;
  text-align: center;
}

#chatBox .chatInput {
  display: flex;
}

#chatBox .chatInput input {
  flex-grow: 1;
  padding: 10px;
  border: none;
  border-radius: 0;
  font-size: 14px;
}

#chatBox .chatInput button {
  background-color: #4267B2;
  border: none;
  color: #fff;
  font-size: 14px;
  padding: 10px;
  width: 80px;
  border-radius: 0;
  cursor: pointer;
}

#chatBox.show {
  display: block;
}

.chatBtn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background-color: #4267B2;
  color: #fff;
  font-size: 14px;
  font-weight: bold;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  border-radius: 5px;
  transition: all 0.2s ease-in-out;
}

.chatBtn:hover {
  background-color: #29487d;
}

</style> -->

<!-- Test 2
<div class="fb-customerchat"
  attribution=setup_tool
  page_id="100090913712714">
</div>
<script>
  window.fbAsyncInit = function() {
    FB.init({
      appId            : '100090913712714', // thay `your_app_id` bằng App ID của bạn (nếu có)
      autoLogAppEvents : true,
      xfbml            : true,
      version          : 'v11.0'
    });
  };
</>
<script async defer crossorigin="anonymous" src="https://connect.facebook.net/en_US/sdk.js"></script> -->



<!-- Test 6 0000000000000000000000000000 -->
<!-- <div id="chatBox">
  <div class="fb-customerchat"
    page_id="100090554097338"
    minimized="true"
    theme_color="#4267B2">
  </div>
  <div class="chatPlaceholder" onclick="showChat()">Nhấp để mở chat</div>
</div>
<a href="https://connect.facebook.net/vi_VN/sdk.js#xfbml=1&version=v10.0&appId=2279996392178770&autoLogAppEvents=1" class="chatBtn"><i class="fa fa-facebook-square"></i> Trò chuyện với tôi</a>

<style>
    #chatBox {
  position: fixed;
  bottom: 20px;
  right: 20px;
  z-index: 9999;
  width: 320px;
  height: 500px;
  box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
  border-radius: 5px;
  overflow: hidden;
  display: none;
  font-family: Arial, sans-serif;
}

#chatBox .chatPlaceholder {
  display: flex;
  align-items: center;
  justify-content: center;
  height: 100%;
  font-size: 16px;
  font-weight: bold;
  background-color: #fff;
  color: #4267B2;
  cursor: pointer;
}

#chatBox.show {
  display: block;
}

.chatBtn {
  position: fixed;
  bottom: 20px;
  right: 20px;
  background-color: #4267B2;
  color: #fff;
  font-size: 14px;
  font-weight: bold;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  border-radius: 5px;
  transition: all 0.2s ease-in-out;
}

.chatBtn:hover {
  background-color: #29487d;
}

</style>

<script>
    function showChat() {
  var chatPlaceholder = document.querySelector('.chatPlaceholder');
  chatPlaceholder.style.display = 'none';
}

document.addEventListener('DOMContentLoaded', function() {
  var button = document.querySelector('.chatBtn');
  var chatBox = document.getElementById('chatBox');

  // Toggle chat box display
  button.addEventListener('click', function() {
    chatBox.classList.toggle('show');
  });

  // Hide chat box when ESC is pressed
  document.addEventListener('keydown', function(e) {
    if (e.key === 'Escape') {
      chatBox.classList.remove('show');
    }
  });
});

</script> -->

     <!-- Messenger Plugin chat Code00000000000000000000000000000000000000000000000
    // <div id="fb-root"></div>

    //  Your Plugin chat code -->
     <!-- <div id="fb-customer-chat" class="fb-customerchat">
    // </div> -->

     <!-- <script>
    //   var chatbox = document.getElementById('fb-customer-chat');
    //   chatbox.setAttribute("page_id", "118229974531149");
    //   chatbox.setAttribute("attribution", "biz_inbox");
    // </script>

     Your SDK code -->
    <!-- <script>
      window.fbAsyncInit = function() {
        FB.init({
          xfbml            : true,
          version          : 'v16.0'
        });
      };

      (function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = 'https://connect.facebook.net/vi_VN/sdk/xfbml.customerchat.js';
        fjs.parentNode.insertBefore(js, fjs);
      }(document, 'script', 'facebook-jssdk'));
    </script> -->



        <!-- End Footer Style -->
    </div>
    <!-- Body main wrapper end -->

    <!-- Placed js at the end of the document so the pages load faster -->

    <!-- jquery latest version -->
    <script src="../frontend_assets/js/vendor/jquery-3.2.1.min.js"></script>
    <!-- Bootstrap framework js -->
    <script src="../frontend_assets/js/bootstrap.min.js"></script>
    <!-- All js plugins included in this file. -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <script src="../frontend_assets/js/plugins.js"></script>
    <script src="../frontend_assets/js/slick.min.js"></script>
    <script src="../frontend_assets/js/owl.carousel.min.js"></script>
    <!-- Waypoints.min.js. -->
    <script src="../frontend_assets/js/waypoints.min.js"></script>
    <!-- Main js file that contents all jQuery plugins activation. -->
    <script src="../frontend_assets/js/main.js"></script>
    @include('sweetalert::alert')
    @yield('script')
    <script>
        $('#keyword').keyup(function () {
            var query = $(this).val();
            var _token = $('input[name=_token]').val();
            // alert(query)
            if(query != ''){
                $.ajax({
                    url: 'get-data-search',
                    method: 'POST',
                    data: {
                        _token: _token,
                        query: query,
                    },
                    success: function (data) {
                        $('.ajax-search').fadeIn();
                        $('.ajax-search').html(data);

                        $('.choose').click(function () {
                            
                            $('#keyword').val($(this).text())
                            $('.ajax-search').fadeOut();
                        })
                    }
                })
            }
        })

       

        $('.cart__menu').click(function(){
            var output = '';
            $.ajax({
                type: "GET",
                url: 'get_data_cart',
                success: function(data) {
                    var formatter = new Intl.NumberFormat('en-US', {
                    // style: 'currency',
                    currency: 'VND',
                    });
                    if(Array.isArray(data[0])){
                        data[0].forEach(item => {
                        output +=`<div class="shp__single__product tr-${item['cart_id']}">
                                <div class="shp__pro__thumb">
                                    <a href="#">
                                        <img src="${item['cart_image']}" alt="product images">
                                    </a>
                                </div>
                                <div class="shp__pro__details">
                                    <h2><a href="/shop/product/${item['cart_id']}">${item['cart_product']}</a></h2>
                                    <span class="quantity">QTY: ${item['cart_quantity']}</span>
                                    <span class="shp__price">${formatter.format(item['cart_price_sale'])+ ' VNĐ'}</span>
                                </div>
                                <form>
                                @csrf
                                <div class="remove__btn">
                                    <button type="button" class="button_del" data-id-delete-cart="${item['cart_id']}">
                                        <i class="zmdi zmdi-close"></i>
                                    </button>
                                </div>
                                </form>
                            </div>`
                    });
                    }else{
                        output = data[0]
                    }
                    

                    $('.total__price').text(data[1].toLocaleString('ja-JP')+ ''+ ' VNĐ');
                    $('.shp__cart__wrap').html(output);
                    
                    //Handle delete product in cart offset
                    $('.button_del').click(function () {
                        var id = $(this).data('id-delete-cart');
                        var _token = $('input[name=_token]').val();
                        
                        $.ajax({
                            url: 'delete_cart_offset',
                            method: 'POST',
                            data: {
                                _token: _token,
                                cart_id: id,
                            },
                            success: function(dataDel){
                                $('.tr-'+id).remove();
                                $('.total__price').text(dataDel[0].toLocaleString('ja-JP')+ ''+ ' VNĐ');
                            }
                        })
                    })
                }
            });
        })
    </script>




</body>

</html>