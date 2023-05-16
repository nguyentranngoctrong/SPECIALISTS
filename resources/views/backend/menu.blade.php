<head>
  <script src="https://kit.fontawesome.com/939aaac269.js" crossorigin="anonymous"></script>

</head>
<div class="sidebar" data-color="purple" data-background-color="white" data-image="../assets/img/sidebar-1.jpg">
    <div class="logo"><a href="/" class="simple-text logo-normal">
        Đặc Sản
      </a></div>
    <div class="sidebar-wrapper">
      <ul class="nav">
        <li class="nav-item @php
            if(isset($activeDashboard))
            echo $activeDashboard;
        @endphp">
          <a class="nav-link" href="admin/dashboard">
            <i class="material-icons">dashboard</i>
            <p>Thống kê</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeCategory))
              echo $activeCategory;
          @endphp">
          <a class="nav-link" href="admin/categorys">
            <i class="fa-solid fa-list"></i>
            <p>Quản lý Loại Sản Phẩm</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeBrand))
              echo $activeBrand;
          @endphp">
          <a class="nav-link" href="admin/brands">
            <i class="fa fa-city"></i>
            <p>Tỉnh/Thành Phố</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeProduct))
              echo $activeProduct;
          @endphp">
          <a class="nav-link" href="admin/products">
            <i class="material-icons">content_paste</i>
            <p>Quản lý Sản Phẩm</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activePost))
              echo $activePost;
          @endphp">
          <a class="nav-link" href="admin/posts">
            <i class="fa-sharp fa-solid fa-pencil"></i>
            <p>Quản lý Bài Viết</p>
          </a>
        </li>
        @if (Auth::user()->role_id == 1)
          <li class="nav-item 
            @php
            if(isset($activeUser))
            echo $activeUser;
            @endphp">
            <a class="nav-link" href="admin/users">
              <i class="fa-solid fa-users"></i>
              <p>Quản lý Người Dùng</p>
            </a>
          </li>
        @endif
        
        <li class="nav-item @php
              if(isset($activeOrder))
              echo $activeOrder;
          @endphp">
          <a class="nav-link" href="admin/orders">
            <i class="fa-solid fa-money-bill"></i>
            <p>Quản lý đơn hàng</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeComment))
              echo $activeComment;
          @endphp">
          <a class="nav-link" href="admin/comments">
            <i class="fa-solid fa-thumbs-up"></i>
            <p>Quản lý Bình Luận</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeShip))
              echo $activeShip;
          @endphp">
          <a class="nav-link" href="admin/ships">
            <i class="fa-solid fa-truck-fast"></i>
            <p>Phí Vận Chuyển</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeCoupon))
              echo $activeCoupon;
          @endphp">
          <a class="nav-link" href="admin/coupons">
            <i class="fa-solid fa-gifts"></i>
            <p>Mã Giảm Giá</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeSlide))
              echo $activeSlide;
          @endphp">
          <a class="nav-link" href="admin/slides">
            <i class="fa-brands fa-slideshare"></i>
            <p>Quản lý Slide/Banner</p>
          </a>
        </li>
        <li class="nav-item @php
              if(isset($activeRequirement))
              echo $activeRequirement;
          @endphp">
          <a class="nav-link" href="admin/requirements">
            <i class="fa-regular fa-message"></i>
            <p>Phản Hồi/Lời Nhắn</p>
          </a>
        </li>
      </ul>
    </div>
  </div>