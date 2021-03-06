<!DOCTYPE html>
<html lang="en">
   <head>
      <meta charset="utf-8" />
      <meta name="viewport"
         content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no" />
      <link rel="icon" type="image/x-icon" href="https://edumall.vn/static/version1600623380/frontend/Edumall/winstrike/vi_VN/Magento_Theme/favicon.ico" />
      <title>LearnUp - Online Course & Education HTML</title>
      <!-- Custom CSS -->
      <link href="{{asset('public/Learnup/assets/css/styles.css')}}" rel="stylesheet" />
      <!-- Custom Color Option -->
      <link href="{{asset('public/Learnup/assets/css/colors.css')}}" rel="stylesheet" />
   </head>
   <body class="red-skin">
      <!-- load icon plyr -->
      <div hidden="" id="sprite-plyr">
         <!--?xml version="1.0" encoding="UTF-8"?-->
         <svg xmlns="http://www.w3.org/2000/svg">
            <symbol id="plyr-airplay">
               <path d="M16 1H2a1 1 0 0 0-1 1v10a1 1 0 0 0 1 1h3v-2H3V3h12v8h-2v2h3a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1z"></path>
               <path d="M4 17h10l-5-6z"></path>
            </symbol>
            <symbol id="plyr-captions-off">
               <path
                  d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z"
                  fill-rule="evenodd" fill-opacity=".5"></path>
            </symbol>
            <symbol id="plyr-captions-on">
               <path
                  d="M1 1c-.6 0-1 .4-1 1v11c0 .6.4 1 1 1h4.6l2.7 2.7c.2.2.4.3.7.3.3 0 .5-.1.7-.3l2.7-2.7H17c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1H1zm4.52 10.15c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41C8.47 4.96 7.46 3.76 5.5 3.76c-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69zm7.57 0c1.99 0 3.01-1.32 3.28-2.41l-1.29-.39c-.19.66-.78 1.45-1.99 1.45-1.14 0-2.2-.83-2.2-2.34 0-1.61 1.12-2.37 2.18-2.37 1.23 0 1.78.75 1.95 1.43l1.3-.41c-.28-1.15-1.29-2.35-3.25-2.35-1.9 0-3.61 1.44-3.61 3.7 0 2.26 1.65 3.69 3.63 3.69z"
                  fill-rule="evenodd"></path>
            </symbol>
            <symbol id="plyr-download">
               <path d="M9 13c.3 0 .5-.1.7-.3L15.4 7 14 5.6l-4 4V1H8v8.6l-4-4L2.6 7l5.7 5.7c.2.2.4.3.7.3zM2 15h14v2H2z">
               </path>
            </symbol>
            <symbol id="plyr-enter-fullscreen">
               <path d="M10 3h3.6l-4 4L11 8.4l4-4V8h2V1h-7zM7 9.6l-4 4V10H1v7h7v-2H4.4l4-4z"></path>
            </symbol>
            <symbol id="plyr-exit-fullscreen">
               <path d="M1 12h3.6l-4 4L2 17.4l4-4V17h2v-7H1zM16 .6l-4 4V1h-2v7h7V6h-3.6l4-4z"></path>
            </symbol>
            <symbol id="plyr-fast-forward">
               <path d="M7.875 7.171L0 1v16l7.875-6.171V17L18 9 7.875 1z"></path>
            </symbol>
            <symbol id="plyr-logo-vimeo">
               <path
                  d="M17 5.3c-.1 1.6-1.2 3.7-3.3 6.4-2.2 2.8-4 4.2-5.5 4.2-.9 0-1.7-.9-2.4-2.6C5 10.9 4.4 6 3 6c-.1 0-.5.3-1.2.8l-.8-1c.8-.7 3.5-3.4 4.7-3.5 1.2-.1 2 .7 2.3 2.5.3 2 .8 6.1 1.8 6.1.9 0 2.5-3.4 2.6-4 .1-.9-.3-1.9-2.3-1.1.8-2.6 2.3-3.8 4.5-3.8 1.7.1 2.5 1.2 2.4 3.3z">
               </path>
            </symbol>
            <symbol id="plyr-logo-youtube">
               <path
                  d="M16.8 5.8c-.2-1.3-.8-2.2-2.2-2.4C12.4 3 9 3 9 3s-3.4 0-5.6.4C2 3.6 1.3 4.5 1.2 5.8 1 7.1 1 9 1 9s0 1.9.2 3.2c.2 1.3.8 2.2 2.2 2.4C5.6 15 9 15 9 15s3.4 0 5.6-.4c1.4-.3 2-1.1 2.2-2.4.2-1.3.2-3.2.2-3.2s0-1.9-.2-3.2zM7 12V6l5 3-5 3z">
               </path>
            </symbol>
            <symbol id="plyr-muted">
               <path
                  d="M12.4 12.5l2.1-2.1 2.1 2.1 1.4-1.4L15.9 9 18 6.9l-1.4-1.4-2.1 2.1-2.1-2.1L11 6.9 13.1 9 11 11.1zM3.786 6.008H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z">
               </path>
            </symbol>
            <symbol id="plyr-pause">
               <path
                  d="M6 1H3c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1zM12 1c-.6 0-1 .4-1 1v14c0 .6.4 1 1 1h3c.6 0 1-.4 1-1V2c0-.6-.4-1-1-1h-3z"></path>
            </symbol>
            <symbol id="plyr-pip">
               <path d="M13.293 3.293L7.022 9.564l1.414 1.414 6.271-6.271L17 7V1h-6z"></path>
               <path d="M13 15H3V5h5V3H2a1 1 0 0 0-1 1v12a1 1 0 0 0 1 1h12a1 1 0 0 0 1-1v-6h-2v5z"></path>
            </symbol>
            <symbol id="plyr-play">
               <path
                  d="M15.562 8.1L3.87.225C3.052-.337 2 .225 2 1.125v15.75c0 .9 1.052 1.462 1.87.9L15.563 9.9c.584-.45.584-1.35 0-1.8z"></path>
            </symbol>
            <symbol id="plyr-restart">
               <path
                  d="M9.7 1.2l.7 6.4 2.1-2.1c1.9 1.9 1.9 5.1 0 7-.9 1-2.2 1.5-3.5 1.5-1.3 0-2.6-.5-3.5-1.5-1.9-1.9-1.9-5.1 0-7 .6-.6 1.4-1.1 2.3-1.3l-.6-1.9C6 2.6 4.9 3.2 4 4.1 1.3 6.8 1.3 11.2 4 14c1.3 1.3 3.1 2 4.9 2 1.9 0 3.6-.7 4.9-2 2.7-2.7 2.7-7.1 0-9.9L16 1.9l-6.3-.7z"></path>
            </symbol>
            <symbol id="plyr-rewind">
               <path d="M10.125 1L0 9l10.125 8v-6.171L18 17V1l-7.875 6.171z"></path>
            </symbol>
            <symbol id="plyr-settings">
               <path
                  d="M16.135 7.784a2 2 0 0 1-1.23-2.969c.322-.536.225-.998-.094-1.316l-.31-.31c-.318-.318-.78-.415-1.316-.094a2 2 0 0 1-2.969-1.23C10.065 1.258 9.669 1 9.219 1h-.438c-.45 0-.845.258-.997.865a2 2 0 0 1-2.969 1.23c-.536-.322-.999-.225-1.317.093l-.31.31c-.318.318-.415.781-.093 1.317a2 2 0 0 1-1.23 2.969C1.26 7.935 1 8.33 1 8.781v.438c0 .45.258.845.865.997a2 2 0 0 1 1.23 2.969c-.322.536-.225.998.094 1.316l.31.31c.319.319.782.415 1.316.094a2 2 0 0 1 2.969 1.23c.151.607.547.865.997.865h.438c.45 0 .845-.258.997-.865a2 2 0 0 1 2.969-1.23c.535.321.997.225 1.316-.094l.31-.31c.318-.318.415-.781.094-1.316a2 2 0 0 1 1.23-2.969c.607-.151.865-.547.865-.997v-.438c0-.451-.26-.846-.865-.997zM9 12a3 3 0 1 1 0-6 3 3 0 0 1 0 6z"></path>
            </symbol>
            <symbol id="plyr-volume">
               <path
                  d="M15.6 3.3c-.4-.4-1-.4-1.4 0-.4.4-.4 1 0 1.4C15.4 5.9 16 7.4 16 9c0 1.6-.6 3.1-1.8 4.3-.4.4-.4 1 0 1.4.2.2.5.3.7.3.3 0 .5-.1.7-.3C17.1 13.2 18 11.2 18 9s-.9-4.2-2.4-5.7z"></path>
               <path
                  d="M11.282 5.282a.909.909 0 0 0 0 1.316c.735.735.995 1.458.995 2.402 0 .936-.425 1.917-.995 2.487a.909.909 0 0 0 0 1.316c.145.145.636.262 1.018.156a.725.725 0 0 0 .298-.156C13.773 11.733 14.13 10.16 14.13 9c0-.17-.002-.34-.011-.51-.053-.992-.319-2.005-1.522-3.208a.909.909 0 0 0-1.316 0zM3.786 6.008H.714C.286 6.008 0 6.31 0 6.76v4.512c0 .452.286.752.714.752h3.072l4.071 3.858c.5.3 1.143 0 1.143-.602V2.752c0-.601-.643-.977-1.143-.601L3.786 6.008z"></path>
            </symbol>
         </svg>
      </div>
      <!-- ============================================================== -->
      <!-- Main wrapper - style you can find in pages.scss -->
      <!-- ============================================================== -->
      <div id="main-wrapper">
         <section class="container-fluid pt-3 pb-2 bg-dark header">
            <div class="container">
               <div class="row">
                  @foreach ($course_detail as $key => $value)
                  <div class="col-lg-8 course_header_col">
                     <h5 class="text-white">
                        <a href="{{URL::to('/trang-chu')}}">
                        <img class="mr-3" src="{{URL::to('public/Learnup/assets/img/logo-light.png')}}" height="25" />
                        </a>
                        |
                        <span class="ml-3">
                        {{$value->course_name}}
                        </span>
                     </h5>
                  </div>
                  <div class="col-lg-4 course_header_col">
                     <a href="{{URL::to('/khoa-hoc-cua-toi/'.Session::get('student_id'))}}" class="course_btn text-white">
                     <i class="fa fa-chevron-left"></i> Khóa học của tôi</a>
                     <a href="{{URL::to('/chi-tiet-khoa-hoc/'.$value->course_id)}}" class="course_btn text-white">Chi tiết khóa học <i
                        class="fa fa-chevron-right"></i></a>
                  </div>
                  @endforeach
               </div>
            </div>
         </section>
         <div class="container-fluid mt-5">
            <div class="row" id="lesson-container">
               <div class="col-lg-8 order-md-1 course_col" id="video_player_area">
                  <form>
                     @csrf
                     <div class="" style="text-align: center">
                        <link rel="stylesheet" href="{{URL::to('public/Learnup/assets/css/plugins/plyr.css')}}" />
                        <div class="plyr__video-embed" id="player">
                           <div id="iframe_video_play"></div>
                           <div id="iframe_video_play_click"></div>
                        </div>
                     </div>
                  </form>
                  <div class="" style="margin: 20px 0" id="lesson-summary">
                     <div class="card">
                        <div class="card-body">
                           <h5 class="card-title">Lưu ý:</h5>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- Course content, video, quizes, files ends-->
               <!-- Course sections and lesson selector sidebar starts-->
               <div class="col-lg-4 mt-5 order-md-2 course_col hidden" id="lesson_list_loader"
                  style="text-align: center; display: none">
                  <img src="http://demo.academy-lms.com/default/assets/backend/images/loader.gif" alt="" height="50"
                     width="50" />
               </div>
               <div class="col-lg-4 order-md-2 course_col" id="lesson_list_area" style="">
                  <div class="text-center" style="margin: 12px 10px">
                     <h5>Nội dung khóa học</h5>
                  </div>
                  <div class="row" style="margin: 12px -1px">
                     <div class="col-12">
                        <ul class="nav nav-tabs" id="lessonTab" role="tablist">
                           <li class="nav-item lessons-border">
                              <a class="nav-link" id="section_and_lessons-tab" data-toggle="tab"
                                 href="#section_and_lessons" role="tab" aria-controls="section_and_lessons"
                                 aria-selected="true">Bài học</a>
                           </li>
                        </ul>
                        <div class="tab-content" id="lessonTabContent">
                           <div class="tab-pane fade show active" id="section_and_lessons" role="tabpanel"
                              aria-labelledby="section_and_lessons-tab">
                              <!-- Lesson Content starts from here -->
                              <div class="accordion" id="accordionExample">
                                 @foreach ($chappter_course as $key => $chappter_course)
                                 <div class="card" style="margin: 0px 0px">
                                    <div class="card-header course_card" id="heading-{{$chappter_course->chappter_id}}">
                                       <h5 class="mb-0">
                                          <button class="btn btn-link w-100 text-left collapsed text-decoration-none"
                                             type="button" data-toggle="collapse" data-target="#collapse{{$chappter_course->chappter_id}}"
                                             aria-expanded="false" aria-controls="collapse{{$chappter_course->chappter_id}}" style="
                                             color: #535a66;
                                             background: none;
                                             border: none;
                                             white-space: normal;
                                             text-decoration: none;
                                             " onclick="toggleAccordionIcon(this, '22')">
                                             <h6 style="color: #959aa2; font-size: 13px">
                                                <span style="float: right; font-weight: 100" class="accordion_icon"
                                                   id="accordion_icon_22"><i class="fa fa-plus"></i></span>
                                             </h6>
                                             {{$chappter_course->chappter_name}}
                                          </button>
                                       </h5>
                                    </div>
                                    <div id="collapse{{$chappter_course->chappter_id}}" class="collapse" aria-labelledby="heading{{$chappter_course->chappter_id}}"
                                       data-parent="#accordionExample" style="">
                                       <div class="card-body" style="padding: 0px">
                                          <table style="width: 100%">
                                             <tbody>
                                                @foreach ($chappter_content as $key => $keyname1)
                                                @if($chappter_course->chappter_id==$keyname1->chappter_id)
                                                <tr style="
                                                   width: 100%;
                                                   padding: 5px 0px;
                                                   background-color: #fff;
                                                   border-bottom: 1px solid rgb(153, 153, 153);
                                                   ">
                                                   <style type="text/css">
                                                      input.button_learn {
                                                      border: none;
                                                      background: none;
                                                      outline: none;
                                                      cursor: pointer;
                                                      }
                                                      input.button_learn.active{
                                                         color: #da0b4e
                                                      }
                                                      input.button_learn:hover{                                      
                                                      color: #da0b4e;
                                                      }
                                                      input.button_learn:active{                                      
                                                      color: #da0b4e;
                                                      }
                                                   </style>
                                                   <td class="d-flex justify-content-between" style="text-align: left; padding: 10px">
                                                      <div>
                                                         <div style="
                                                            color: #444549;
                                                            font-size: 14px;
                                                            font-weight: 400;
                                                            ">
                                                            <form>
                                                               @csrf
                                                               <input type="button" data-content_id="{{$keyname1->chappter_content_id}}" class="button_learn" value="{{$keyname1->chappter_content_name}}">
                                                            </form>
                                                            <input type="hidden" class="chappter_content_id" value="{{$keyname1->chappter_content_id}}">
                                                         </div>
                                                      </div>
                                                      <div class="form-group">
                                                         <span class="text-ellipsis">
                                                         <?php
                                                            if($keyname1 -> is_mandatory == 0){
                                                            ?>
                                                         <a href="{{URL::to('/unactive-mandatory/'.$keyname1->chappter_content_id)}}">
                                                         <i class="fa fa-times text-danger"></i>
                                                         </a>
                                                         <?php
                                                            }else{
                                                               ?>  
                                                         <a href="{{URL::to('/active-mandatory/'.$keyname1->chappter_content_id)}}">
                                                         <i class="fa fa-check text-success"></i>
                                                         </a>
                                                         <?php
                                                            }
                                                               ?>
                                                         </span>
                                                      </div>
                                                   </td>
                                                </tr>
                                                @endif
                                                @endforeach
                                             </tbody>
                                          </table>
                                       </div>
                                    </div>
                                 </div>
                                 @endforeach
                              </div>
                              <!-- Lesson Content ends from here -->
                           </div>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
         <!-- ============================ Find Courses with Sidebar End ================================== -->
         <!-- ============================ Footer Start ================================== -->
         <footer class="dark-footer skin-dark-footer mt-5">
            <div>
               <div class="container">
                  <div class="row">
                     <div class="col-lg-4 col-md-3">
                        <div class="footer-widget">
                           <img src="{{URL::to('public/Learnup/assets/img/logo-light.png')}}" class="img-footer" alt="" />
                           <div class="footer-add">
                              <p>
                                 <i class="fa fa-location-arrow" aria-hidden="true"></i>
                                 450 Tran Dai Nghia, Ngu Hanh Son, Da Nang
                              </p>
                              <p>
                                 <i class="fa fa-phone" aria-hidden="true"></i> +84 961 340 573
                              </p>
                              <p>
                                 <i class="fa fa-envelope" aria-hidden="true"></i>
                                 support@learnup.com
                              </p>
                           </div>
                        </div>
                     </div>
                     <div class="col-lg-2 col-md-3">
                        <div class="footer-widget">
                           <h4 class="widget-title">LearnUp</h4>
                           <ul class="footer-menu">
                              <li><a href="#">Giới Thiệu</a></li>
                              <li><a href="#">Câu Hỏi Thường Gặp</a></li>
                              <li><a href="#">Liên Hệ</a></li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-lg-2 col-md-3">
                        <div class="footer-widget">
                           <h4 class="widget-title">Hỗ Trợ</h4>
                           <ul class="footer-menu">
                              <li><a href="#">Hỗ Trợ</a></li>
                              <li><a href="#">Đóng Góp</a></li>
                           </ul>
                        </div>
                     </div>
                     <div class="col-lg-4 col-md-12">
                        <div class="footer-widget">
                           <h4 class="widget-title">Tải Ứng Dụng</h4>
                           <a href="#" class="other-store-link">
                              <div class="other-store-app">
                                 <div class="os-app-icon">
                                    <i class="lni-playstore theme-cl"></i>
                                 </div>
                                 <div class="os-app-caps">Google Play</div>
                              </div>
                           </a>
                           <a href="#" class="other-store-link">
                              <div class="other-store-app">
                                 <div class="os-app-icon">
                                    <i class="lni-apple theme-cl"></i>
                                 </div>
                                 <div class="os-app-caps">App Store</div>
                              </div>
                           </a>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
            <div class="footer-bottom">
               <div class="container">
                  <div class="row align-items-center">
                     <div class="col-lg-6 col-md-6">
                        <p class="mb-0">
                           © 2020 LearnUp. Designd By <a href="#">Mèo</a>.
                        </p>
                     </div>
                     <div class="col-lg-6 col-md-6 text-right">
                        <ul class="footer-bottom-social">
                           <li>
                              <a href="#"><i class="ti-facebook"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="ti-twitter"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="ti-instagram"></i></a>
                           </li>
                           <li>
                              <a href="#"><i class="ti-linkedin"></i></a>
                           </li>
                        </ul>
                     </div>
                  </div>
               </div>
            </div>
         </footer>
         <!-- ============================ Footer End ================================== -->
         <a id="back2Top" class="top-scroll" title="Back to top" href="#"><i class="ti-arrow-up"></i></a>
      </div>
      <!-- ============================================================== -->
      <!-- End Wrapper -->
      <!-- ============================================================== -->
      <script src="{{asset('public/Learnup/assets/js/jquery.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/popper.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/bootstrap.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/select2.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/slick.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/jquery.counterup.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/counterup.min.js')}}"></script>
      <script src="{{asset('public/Learnup/assets/js/custom.js')}}"></script>
      <script src="https://cdn.plyr.io/3.6.2/plyr.polyfilled.js"></script>
      <script type="text/javascript">
         default_video();
         function default_video(){
            var chappter_content_id = $('.chappter_content_id').val();
            var _token = $('input[name="_token"]').val();
            $.ajax({
               url:"{{url('/default-video')}}",
               method:"POST",
               data:{chappter_content_id:chappter_content_id, _token:_token},
               success:function(data){
                 $('#iframe_video_play').html(data);
              }
           });
         }  
      </script>
      <script type="text/javascript">
         $('.button_learn').click(function(){
            var content_id = $(this).data('content_id');
            var _token = $('input[name="_token"]').val();
             $.ajax({
                  url:"{{url('/watch-course')}}",
                  method:"POST",
                  data:{content_id:content_id, _token:_token},
                  success:function(data){
                     $('#iframe_video_play').css('display','none');
         
                     $('#iframe_video_play_click').html(data);
                 }
              });
         });
      </script>

      <script>
         document.addEventListener("DOMContentLoaded", function(){
            var btn = document.getElementsByClassName('button_learn');
            for (let i = 0; i < btn.length; i++) {
                btn[i].onclick = function () {
                    if (this.classList[1] == 'active') {
                        //Nếu tồn tại class active thì remove đi
                        this.classList.remove('active');                    
                    } else {
                        //Cho tất cả đối tượng bỏ class active
                    for (let j = 0; j < btn.length; j++) {
                        btn[j].classList.remove('active');
                    }
                    //Cho đối tượng được click thêm class active
                    this.classList.add('active');
                  }
               }
            }
    },false)
      </script>
      <!-- ============================================================== -->
      <!-- ============================================================== -->
   </body>
</html>