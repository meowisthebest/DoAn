@extends('admin_layout')
@section('admin_content')

<div class="row">   
    <div class="col-xs-12 col-sm-12 col-md-12 col-lg-12">
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
        @foreach ($edit_chappter_content as $key => $chappter_content)
        <form action="{{URL::to('/update-chappter-content/'.$chappter_content->chappter_content_id)}}" method="post" id="main-form" enctype="multipart/form-data">
            {{@csrf_field()}}
            <div class="card">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">
                      Sửa videos
                    </h6>
                  </div>
                  <div class="card-body">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12 form-group">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 form-group">
                                <label>Tên video</label>
                                <input type="text" value="{{$chappter_content->chappter_content_name}}" name="chappter_content_name" class="form-control"> 
                            </div>

                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 form-group">
                                <label>Link mới</label>
                                <input type="text" name="chappter_content_link" class="form-control"> 
                            </div>

                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 form-group">
                                <label>Chương <span class="error">*</span></label>
                                <select  name="chappter_id" class="form-control">
                                    @foreach ($chappter as $key => $chappter)
                                            @if ($chappter->chappter_id == $chappter_content->chappter_id)
                                                <option selected value="{{$chappter->chappter_id}}">{{$chappter->chappter_name}}</option>
                                            @else
                                                <option value="{{$chappter->chappter_id}}">{{$chappter->chappter_name}}</option>
                                            @endif
                                    @endforeach
                                </select>
                            </div>
                            
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 form-group">
                                <button type="submit" class="btn btn-primary">Cập nhật</button>
                                <a href="{{URL::to('/view-chappter-content/'.$chappter->chappter_id)}}" class="btn btn-primary">Trở về</a> 
                            </div>
                        </div>                      
                    </div>
                </div>

            </div>
        </form>
        @endforeach
    </div>
</div>

@endsection