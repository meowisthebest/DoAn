

@extends('page_layout')
@section('pages_content')
    

<!-- ============================ Page Title Start================================== -->
<section class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">

                <div class="breadcrumbs-wrap">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Khóa học</li>
                        </ol>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</section>
<!-- ============================ Page Title End ================================== -->


<!-- ============================ Find Courses with Sidebar ================================== -->
<section class="pt-0">
    <div class="container">

        <!-- Row -->
        <div class="row">

            <div class="col-lg-4 col-md-12 col-sm-12 order-2 order-lg-1 order-md-2">
                <div class="page_sidebar hide-23">

                    <!-- Search Form -->
                    <form action="{{URL::to('/tim-kiem')}}" class="form-inline addons mb-3">
                        {{csrf_field()}}
                        <input class="form-control" name="keywords_submit" type="search" placeholder="Tìm kiếm khóa học"
                            aria-label="Search">
                        <button class="btn my-2 my-sm-0" type="submit"><i class="ti-search"></i></button>
                    </form>

                    <h4 class="side_title">Danh mục</h4>
                    @foreach ($category as $key => $category)
                    <ul class="no-ul-list mb-3 ">
                        <li class="p-2">
                            <a class="ml-2 " href="{{URL::to('/danh-muc-khoa-hoc/'.$category->category_id)}}" class="checkbox-custom-label">{{$category->category_name}}</a>
                        </li>
                    </ul>
                    @endforeach
                </div>

            </div>

            <div class="col-lg-8 col-md-12 col-sm-12 order-1 order-lg-2 order-md-1">
                <!-- /Row -->
                <div class="row">
                    <!-- Cource Grid 1 -->
                    @foreach ($course as $key => $value)
                    <div class="col-xl-12 col-lg-12 col-md-12 col-sm-12">
                        <div class="education_block_list_layout">
                            <div style="width: 40%" class="education_block_thumb n-shadow">
                                <a href="{{URL::to('/chi-tiet-khoa-hoc/'.$value->course_id)}}">
                                    <img src="{{('public/uploads/course/'.$value->course_img)}}" class="img-fluid" alt="">
                                </a>
                            </div>

                            <div class="list_layout_ecucation_caption">

                                <div class="education_block_body">
                                    <h4 class="bl-title"><a href="{{URL::to('/chi-tiet-khoa-hoc/'.$value->course_id)}}">{{$value->course_name}}</a></h4>
                                </div>

                                <div class="education_block_footer">
                                    <div class="cources_info_style3">
                                        @foreach ($category_name as $keyname)
                                            @if($value->category_id==$keyname->category_id)
                                                <ul class="cources_facts_list">
                                                    <li class="facts-1">{{$keyname->category_name}}</li>
                                                </ul>
                                            @endif
                                        @endforeach                                           
                                    </div>
                                </div>

                            </div>

                        </div>
                    </div>
                    @endforeach

                </div>

                <!-- Row -->
                <div class="row">
                    <div class="col-lg-12 col-md-12 col-sm-12">

                        <!-- Pagination -->
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-12">
                                {{ $course->links() }}
                            </div>
                        </div>

                    </div>
                </div>
                <!-- /Row -->

            </div>

        </div>
        <!-- Row -->

    </div>
</section>
<!-- ============================ Find Courses with Sidebar End ================================== -->
@endsection