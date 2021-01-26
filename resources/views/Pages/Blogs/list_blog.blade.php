@extends('page_layout')
@section('pages_content')
    

<!-- ============================ Page Title Start================================== -->
<section class="page-title">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 col-md-12">
                
                <div class="breadcrumbs-wrap">
                    <h1 class="breadcrumb-title">Tin Tức</h1>
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item"><a href="#">Trang chủ</a></li>
                            <li class="breadcrumb-item active" aria-current="page">Tin tức</li>
                        </ol>
                    </nav>
                </div>
                
            </div>
        </div>
    </div>
</section>
<!-- ============================ Page Title End ================================== -->	

<!-- ========================== Articles Section =============================== -->
<section class="pt-0">
    <div class="container">
        
        <div class="row">
            @foreach ($all_blog as $key => $blog)

            <!-- Single Article -->
            <div class="col-lg-4 col-md-4 col-sm-12">
                <div class="articles_grid_style">
                    <div style="height: 240px" class="articles_grid_thumb">
                        <a href="{{URL::to('/tin-tuc/'.$blog->blog_id)}}"><img style="height: 210px; background-size: cover; width: 100%" src="{{URL::to('public/uploads/blog/'.$blog->blog_img)}}" class="img-fluid" alt="" /></a>
                    </div>
                    
                    <div style="height: 70px" class="articles_grid_caption">
                        <a href="{{URL::to('/tin-tuc/'.$blog->blog_id)}}">
                            <h4>{{$blog->blog_title}}</h4>
                        </a>
                    </div>
                </div>
            </div>
                
            @endforeach
        </div>
        
        <!-- Pagination -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12">
                {{ $all_blog->links() }}
            </div>
        </div>

    </div>
</section>
<!-- ========================== Articles Section =============================== -->

@endsection