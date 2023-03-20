<%@ Page Title="Home page" Language="C#" MasterPageFile="~/WebHocThem.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebHocThem.WebForm1" %>

<asp:Content ID="HeadContent" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="BodyContent" ContentPlaceHolderID="ContentPlaceHolderWebHocThem" runat="server">
    <div class="page-main">
<section class="section section-hero">
<picture>
<source media="(max-width:767px)" srcset="https://www.anhngumshoa.com/uploads/images/resize/750x750/banner_web2.jpg">
<img class="img-fluid w-100 section-img" src="https://www.anhngumshoa.com/uploads/images/resize/750x750/banner_web2.jpg" alt="" />
</picture>
</section> <section class="section section-1 pt-0">
<div class="container">
<p class="text-muted section-text-1" style="font-weight: bold;">Khám phá các khóa học nổi bật</p>
<div class="row justify-content-center g-3 g-xl-4">
<div class="col-lg-4 col-md-6">
<a class="card card-banner" id="linkKH1" runat="server" href="#">
    <img class="card-img" id="imgKH1" runat="server" src="#" alt="TOEIC số 1 Việt Nam" />
    <div class="card-img-overlay">        
    <strong class="card-lead">
        <asp:Label ID="txtKH1" runat="server" Text="Label"></asp:Label></strong>
    </div>
</a>
</div>
<div class="col-lg-4 col-md-6">
<a class="card card-banner" id="linkKH2" runat="server" href="#">
<img class="card-img" id="imgKH2" runat="server" src="#" alt="Tiếng Anh là chuyện nhỏ" />
<div class="card-img-overlay">
<strong class="card-lead"><asp:Label ID="txtKH2" runat="server" Text="Label"></asp:Label></strong>
</div>
</a>
</div>
<div class="col-lg-4 col-md-6">
<a class="card card-banner" id="linkKH3" runat="server" href="#">
<img class="card-img" id="imgKH3" runat="server" src="#" alt="English For Future" />
<div class="card-img-overlay">
<strong class="card-lead"><asp:Label ID="txtKH3" runat="server" Text="Label"></asp:Label></strong>
</div>
</a>
</div>
</div>
<hr class="divider my-5">
<div class="section-bottom">
<div class="row g-4 align-items-center pt-lg-4">
<div class="col-lg-6 d-flex">
<a class="thumbnail thumbnail-video d-flex flex-grow-1" href="javascript:;" style="min-height: 315px">
<img class="card-img" src="https://www.anhngumshoa.com/theme/frontend/default/new/images/hanhtrinh.jpg" data-video="https://www.youtube.com/watch?v=pL-guvvqrKk" alt="image">
<span class="thumbnail-buttons">
<button class="btn btn-play" type="button"><svg class="iconsvg-play-o"><use xlink:href="https://www.anhngumshoa.com/theme/frontend/default/new/images/sprite.svg#play-o"></use></svg></button>
</span>
</a>
</div>
<div class="col-lg-6">
<h2 class="section-title mb-4">DHH CENTER - CƠ SỞ GIÁO DỤC
<br class="d-none d-lg-inline"><span style="color: red">SỐ 1</span> VIỆT NAM
</h2>
<div class="number-1-wrapper">
<div class="row g-4 justify-content-between section-number">
<div class="col-sm-4 col-6 text-center">
<span class="number-1 number-1-plus h1 text-primary mb-1" data-number="10">10</span>
<p class="mb-0">Năm truyền cảm hứng</p>
</div>
<div class="col-sm-4 col-6 text-center">
<span class="number-1 number-1-plus h1 text-primary mb-1" data-number="300">300</span>
<p class="mb-0">Giáo viên giỏi kiến thức giàu kĩ năng</p>
</div>
<div class="col-sm-4 col-6 text-center">
<span class="number-1 number-1-plus h1 text-primary mb-1" data-number="1000000">1.000.000</span>
<p class="mb-0">Học viên đạt mục tiêu</p>
</div>
<div class="col-sm-4 col-6 text-center">
<span class="number-1 number-1-plus h1 text-primary mb-1" data-number="200">200</span>
<p class="mb-0">Đối tác thường niên</p>
</div>
<div class="col-sm-4 col-6 text-center">
<span class="number-1 h1 text-primary mb-1" data-number="30">30</span>
<p class="mb-0">Cơ sở trên toàn quốc</p>
</div>
<div class="col-sm-4 col-6 text-center">
<span class="number-1 number-1-plus h1 text-primary mb-1" data-number="100000">100.000</span>
<p class="mb-0">Học viên online năm châu</p>
</div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<section class="section section-4">
<div class="container">
<div class="section-nested section-nested-1">
<div class="row g-4">
<div class="col-lg-6">
<h2 class="section-title">ĐA DẠNG HỌC <span class="text-primary">OFFLINE, ONLINE,</span> đáp ứng mọi nhu cầu học tập</h2>
<img alt="" class="img-fluid w-100 rounded" src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/home-s4-img.jpg"></div>
<div class="col-lg-6">
<p class="text-muted">Hơn 1000 lớp học online được mở ra tại Ms Hoa TOEIC mỗi tháng:</p>
<div class="accordion accordion-1 accordion-icon-caret" id="accordion-s4">
<div class="accordion-item">
<h2 class="accordion-header" id="accordion-s4-header-1"><button aria-controls="accordion-s4-1" aria-expanded="true" class="accordion-button" data-bs-target="#accordion-s4-collapse-1" data-bs-toggle="collapse" type="button"><svg class="iconsvg-laptop-graduation-cap flex-shrink-0 me-3"> <use xss="removed"></use> </svg>Lộ trình tinh gọn, tiết kiệm thời gian</button></h2>
<div aria-labelledby="accordion-s4-header-1" class="accordion-collapse collapse show" data-bs-parent="#accordion-s4" id="accordion-s4-collapse-1">
<div class="accordion-body">Nhờ phương pháp RIPL đột phá hiệu quả. Học viên nghe giảng, làm bài, trao đổi tài liệu và thảo luận trực tiếp với giáo viên, như đến tận lớp học Offline.</div>
</div>
</div>
<div class="accordion-item">
<h2 class="accordion-header" id="accordion-s4-header-2"><button aria-controls="accordion-s4-2" aria-expanded="false" class="accordion-button collapsed" data-bs-target="#accordion-s4-collapse-2" data-bs-toggle="collapse" type="button"><svg class="iconsvg-headset flex-shrink-0 me-3"> <use xss="removed"></use> </svg> Lớp học tràn đầy năng lượng tích cực</button></h2>
<div aria-labelledby="accordion-s4-header-2" class="accordion-collapse collapse" data-bs-parent="#accordion-s4" id="accordion-s4-collapse-2">
<div class="accordion-body">Công nghệ được lồng ghép sử dụng trong giảng dạy như áp dụng công cụ Slide hiện đại, bảng cảm ứng, ứng dụng Quizizz, Quizlet, Kahoot, website hỗ trợ học tập, video, youtube... giúp nâng cao trải nghiệm học, tăng khả năng tiếp thu của học viên. Dưới sự dẫn dắt của giáo viên chuyên môn giỏi, nhiệt tình, năng lượng, các bạn học viên từng bước nâng cao trình độ của bản thân.</div>
</div>
</div>
<div class="accordion-item">
<h2 class="accordion-header" id="accordion-s4-header-3"><button aria-controls="accordion-s4-3" aria-expanded="false" class="accordion-button collapsed" data-bs-target="#accordion-s4-collapse-3" data-bs-toggle="collapse" type="button"><svg class="iconsvg-headset flex-shrink-0 me-3"> <use xss="removed"></use> </svg> Tương tác đa chiều, thực hành tối đa</button></h2>
<div aria-labelledby="accordion-s4-header-3" class="accordion-collapse collapse" data-bs-parent="#accordion-s4" id="accordion-s4-collapse-3">
<div class="accordion-body">Các hoạt động tương tác giáo viên - học viên, học viên - học viên được đẩy lên cao nhất để người học được thực hành ngôn ngữ liên tục trong mỗi giờ học. Giờ học sôi nổi, học viên được phản xạ tối đa nên ghi nhớ kiến thức và rèn luyện kỹ năng hiệu quả hơn.</div>
</div>
</div>
<div class="accordion-item">
<h2 class="accordion-header" id="accordion-s4-header-4"><button aria-controls="accordion-s4-4" aria-expanded="false" class="accordion-button collapsed" data-bs-target="#accordion-s4-collapse-4" data-bs-toggle="collapse" type="button"><svg class="iconsvg-calendar-clock flex-shrink-0 me-3"> <use xss="removed"></use> </svg> Lịch học linh hoạt</button></h2>
<div aria-labelledby="accordion-s4-header-4" class="accordion-collapse collapse" data-bs-parent="#accordion-s4" id="accordion-s4-collapse-4">
<div class="accordion-body">Lịch học sẽ được sắp xếp sao cho phù hợp với lịch đi học của sinh viên, học sinh và lịch đi làm của những người bận rộn. Tạo điều kiện học bù nếu như học viên có công việc đột xuất không thể tham gia lớp học, nhằm giúp học viên không bị “hổng” kiến thức, hiệu quả học tập cao hơn.</div>
</div>
</div>
<div class="accordion-item">
<h2 class="accordion-header" id="accordion-s4-header-5"><button aria-controls="accordion-s4-5" aria-expanded="false" class="accordion-button collapsed" data-bs-target="#accordion-s4-collapse-5" data-bs-toggle="collapse" type="button"><svg class="iconsvg-truck-free flex-shrink-0 me-3"> <use xss="removed"></use> </svg> Thu hẹp mọi khoảng cách</button></h2>
<div aria-labelledby="accordion-s4-header-5" class="accordion-collapse collapse" data-bs-parent="#accordion-s4" id="accordion-s4-collapse-5">
<div class="accordion-body">Lớp học với sự tương tác hai chiều giữa học viên và giáo viên, kết hợp với lớp học vui nhộn tạo sự gắn kết khăng khít giữa không chỉ giữa giáo viên và học viên, mà còn giữa học viên với học viên, học viên với trung tâm.</div>
</div>
</div>
</div>
</div>
</div>
</div>
<div class="section-nested section-nested-2">
<h2 class="section-title text-center mb-2"><img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/doingu.png"> <span style="color: #222">GIÁO VIÊN</span> <br> <span style="color:red;">GIÀU KIẾN THỨC GIỎI KỸ NĂNG</span>
</h2>
<div class="row mb-5">
<div class="col-lg-4">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/star.PNG"> Sẵn sàng cháy hết mình cùng học viên
</div>
<div class="col-lg-4">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/star.PNG"> Đam mê truyền lửa trong từng con chữ
</div>
<div class="col-lg-4">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/star.PNG"> Kết nối yêu thương như gia đình nhỏ
</div>
</div>
<div class="swiper swiper-teacher swiper-pagination-outside swiper-buttons-outside">
<div class="swiper-container" data-plugin="swiper" data-options='{"spaceBetween":16,"slidesPerView":2,"breakpoints":{"768":{"spaceBetween":24,"slidesPerView":3},"992":{"spaceBetween":24,"slidesPerView":4}}}'>
<div class="swiper-wrapper">
<div class="swiper-slide">
<div class="card card-teacher">
<a class="thumbnail thumbnail-hover rounded mb-3" href="#">
<img class="thumbnail-img" id="imgGV1" runat="server" src="#" alt="Ms. Thùy Chi" />
</a>
<div class="card-body p-0">
<h5 class="card-title">
<a href="#">
    <asp:Label ID="txtGT1" runat="server" Text="Label"></asp:Label><asp:Label ID="txtGV1" runat="server" Text="Label"></asp:Label></a>
</h5>
<ul class="list list-bullets list-gap-1 text-muted ms-3 mb-0">
<li class="list-item">
    <asp:Label ID="txtSDT1" runat="server" Text="Label"></asp:Label></li>
<li class="list-item">Người giáo viên khơi dậy niềm đam mê với việc học Tiếng Anh trong các em</li>
<li class="list-item">Sở thích: Nghe nhạc và xem phim tiếng Anh</li>
</ul>
</div>

</div>

</div>
<div class="swiper-slide">
<div class="card card-teacher">
<a class="thumbnail thumbnail-hover rounded mb-3" href="#">
<img class="thumbnail-img" id="imgGV2" runat="server" src="#" alt="" />
</a>
<div class="card-body p-0">
<h5 class="card-title">
<a href="#"><asp:Label ID="txtGT2" runat="server" Text="Label"></asp:Label><asp:Label ID="txtGV2" runat="server" Text="Label"></asp:Label></a>
</h5>
<ul class="list list-bullets list-gap-1 text-muted ms-3 mb-0">
<li class="list-item"><asp:Label ID="txtSDT2" runat="server" Text="Label"></asp:Label></li>
<li class="list-item">Cô giáo năng động và tràn đầy nhiệt huyết với nghề</li>
<li class="list-item">Cô có phong cách giảng dạy vô cùng cuốn hút</li>
</ul>
</div>
</div>
</div>
<div class="swiper-slide">
<div class="card card-teacher">
<a class="thumbnail thumbnail-hover rounded mb-3" href="#">
<img class="thumbnail-img" id="imgGV3" runat="server" src="#" alt="Ms. Thu Trang" />
</a>
<div class="card-body p-0">
<h5 class="card-title">
<a href="#"><asp:Label ID="txtGT3" runat="server" Text="Label"></asp:Label><asp:Label ID="txtGV3" runat="server" Text="Label"></asp:Label></a>
</h5>
<ul class="list list-bullets list-gap-1 text-muted ms-3 mb-0">
<li class="list-item"><asp:Label ID="txtSDT3" runat="server" Text="Label"></asp:Label></li>
<li class="list-item">Tốt nghiệp Học viện Ngân Hàng khoa Quản trị kinh doanh GPA 3.3</li>
<li class="list-item">Tốt nghiệp City University of Seattle chuyên ngành Quản trị tài chính GPA 3.45</li>
<li class="list-item">Là một game thủ của bộ môn CS:GO</li>
</ul>
</div>
</div>
</div>
<div class="swiper-slide">
<div class="card card-teacher">
<a class="thumbnail thumbnail-hover rounded mb-3" href="#">
<img class="thumbnail-img" id="imgGV4" runat="server" src="#" alt="Ms. Nguyệt Ánh" />
</a>
<div class="card-body p-0">
<h5 class="card-title">
<a href="#"><asp:Label ID="txtGT4" runat="server" Text="Label"></asp:Label><asp:Label ID="txtGV4" runat="server" Text="Label"></asp:Label></a>
</h5>
<ul class="list list-bullets list-gap-1 text-muted ms-3 mb-0">
<li class="list-item"><asp:Label ID="txtSDT4" runat="server" Text="Label"></asp:Label></li>
<li class="list-item">Sinh và lớn lên ở thành phố biển Hạ Long</li>
<li class="list-item">Là giáo viên tại Ms Hoa TOEIC Đà Nẵng</li>
</ul>
</div>
</div>
</div>
</div>
<div class="swiper-buttons">
<div class="swiper-button-prev btn rounded-circle btn-primary text-white">
<svg class="iconsvg-chevron-right rotate-180">
<use xlink:href="https://www.anhngumshoa.com/theme/frontend/default/new/images/sprite.svg#chevron-right"></use>
</svg>
</div>
<div class="swiper-button-next btn rounded-circle btn-primary text-white">
<svg class="iconsvg-chevron-right">
<use xlink:href="https://www.anhngumshoa.com/theme/frontend/default/new/images/sprite.svg#chevron-right"></use>
</svg>
</div>
</div>
<div class="swiper-pagination"></div>
</div>
</div>
</div> </div>
</section>
<section class="section lotrinh">
<div class="container text-center">
<h2 class="section-title mb-2 ">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/lotrinh1.png" style="max-width: 300px" ; />
</h2>
<div class="row text-center mb-5 button_lotrinh">
<div class="col-md-6 col-12 active" data-id="2">
Lộ trình học toeic 2 kỹ năng
</div>
<div class="col-md-6 col-12" data-id="4">
Lộ trình học toeic 4 kỹ năng
</div>
</div>
<span id="lotrinh2">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/lotrinh2.png" style="width: 100%;" />
<a class="btn btn-secondary-light mt-5" href="https://www.anhngumshoa.com/tin-tuc/khoa-800-toeic-tron-doi-va-tu-tin-giao-tiep-dinh-cao-37536.html">Khám phá chi tiết lộ trình & học phí</a>
</span>
<span id="lotrinh4" style="display: none;">
<img src="https://www.anhngumshoa.com/theme/frontend/default/new/images/ex/home/lotrinh4.png" style="width: 100%;" />
<a class="btn btn-secondary-light mt-5" href="https://www.anhngumshoa.com/tin-tuc/khoa-toeic-4-ky-nang-a-plus-37805.html">Khám phá chi tiết lộ trình & học phí</a>
</span>
</div>
</section>
</div>
</asp:Content>
