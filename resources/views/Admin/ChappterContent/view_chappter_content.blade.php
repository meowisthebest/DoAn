@extends('admin_layout')
@section('admin_content')

<!-- Page Heading -->
<div class="d-sm-flex align-items-center justify-content-between mb-4">
    @foreach ($chappter_name as $key => $chappter_name)
    <h1 class="h3 mb-0"><span class="text-danger">{{$chappter_name->chappter_name}}</span></h1>
    @endforeach
</div>
<div class="row">               
  <div class="col-12 col-sm-12 col-md-12 col-lg-12 ">
    <?php
            $message_ChappterContent = Session::get('message_ChappterContent');
            if($message_ChappterContent){
                echo '<div class="alert alert-success alert-dismissible" role="alert"> 
                        <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>'
                        .$message_ChappterContent.
                    '</div>';  
                Session::put('message_ChappterContent', null);
            };
        ?>
    <div class="card shadow mb-4">
        <div class="card-header py-3 d-flex justify-content-between">
          <h6 class="m-0 font-weight-bold text-primary">
            Danh sách các bài học
          </h6>

          <div>
            <a href="{{URL::to('/add-chappter-content/'.$chappter_name->chappter_id)}}" class="btn btn-primary mt-2">Thêm videos mới</a>
            <a href="{{URL::to('/view-chappter/'.$chappter_name->course_id)}}" class="btn btn-primary mt-2">Trở về</a> 
          </div>
        </div>
        <div class="card-body">
          <div class="table-responsive">
            <table
              class="table table-bordered"
              id="dataTable"
              width="100%"
              cellspacing="0"
            >
              <thead>
                <tr class="text-center">
                  <th>ID</th>
                  <th>Tên bài học</th>
                  <th>Link videos</th>
                  <th>Đã học</th>
                  <td>Hành động</td>
                </tr>
              </thead>
              <tbody>
                @foreach ($view_chappter_content as $key => $chappter_content)
                  <tr class="text-center">
                    <td>{{$chappter_content->chappter_content_id}}</td>
                    <td>{{$chappter_content->chappter_content_name}}</td>
                    <td><iframe width="300" height="200" src="https://www.youtube.com/embed/{{$chappter_content->chappter_content_link}}" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
                    </td>
                    <td>
                      <span class="text-ellipsis">
                        <?php
                        if($chappter_content -> is_mandatory == 0){
                          ?>
                          <a href="{{URL::to('/unactive-video/'.$chappter_content->chappter_content_id)}}">
                            <i class="fa fa-times text-danger"></i>
                          </a>
                          <?php
                          }else{
                          ?>  
                          <a href="{{URL::to('/active-video/'.$chappter_content->chappter_content_id)}}">
                            <i class="fa fa-check text-success"></i>
                          </a>
                          <?php
                        }
                        ?>
                      </span>
                    </td>
                    <td>
                      <a href="{{URL::to('/edit-chappter-content/'.$chappter_content->chappter_content_id)}}" class="btn btn-outline-primary mt-2"
                        ><i class="fas fa-edit"></i> Sửa</a
                      >
                      <a onclick="return confirm('Are you sure to delete?')" href="{{URL::to('/delete-chappter-content/'.$chappter_content->chappter_content_id)}}" class="btn btn-outline-danger mt-2"
                        ><i class="fas fa-trash-alt"></i> Xóa</a
                      >
                    </td>
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