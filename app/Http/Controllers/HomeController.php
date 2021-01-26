<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class HomeController extends Controller
{
    //Hiển thị khóa học & danh mục ra home
    public function index(Request $request){
        // START SEO
        $meta_desc = "Học Online tại LearnUp - Nền tảng học tập trực tuyến hàng đầu Việt Nam với hơn 10+ Khoá Học và 3 nghìn học viên.";
        $meta_keywords = "LearnUp, Học trực tuyến, Online Course";
        $meta_title = "LearnUp - Nothing is impossible";
        //Lấy ra đường dẫn trang hiện tại đang đứng
        $url_caninical = $request->url();
        // END SEO
        $category = DB::table('tbl_category')->orderBy('category_id', 'asc')->limit(6)->get();

        //Khóa học nổi bật
        $course = DB::table('tbl_course')->orderBy('course_id', 'asc')->limit(6)->get();

        //Khóa học mới nhất
        $new_course = DB::table('tbl_course')->orderBy('course_id', 'desc')->limit(6)->get();

        $count_course = DB::table('tbl_course')->select('course_id')->count();
        $count_student = DB::table('tbl_student')->select('student_id')->count();
        $count_category = DB::table('tbl_category')->select('category_id')->count();

        return view('index')
        ->with('category', $category)
        ->with('course',$course)
        ->with('newcourse',$new_course)
        ->with('count_course', $count_course)
        ->with('count_student',$count_student)
        ->with('count_category',$count_category)
        ->with('meta_desc',$meta_desc)
        ->with('meta_keywords',$meta_keywords)
        ->with('meta_title',$meta_title)
        ->with('url_caninical',$url_caninical)
        ;
    }

    public function search(Request $request){
        $keywords = $request->keywords_submit;
        $category = DB::table('tbl_category')->orderBy('category_id', 'asc')->limit(6)->get();
        $search_course = DB::table('tbl_course')->where('course_name','like','%'.$keywords.'%')->paginate(5); 

        return view('Pages.Courses.search_course')
        ->with('category',$category)
        ->with('search_course',$search_course)
        ;
    }  

    public function saveEmail(Request $request){
        $data = array();
        $data['email'] = $request->email;
        $data["created_at"] =  \Carbon\Carbon::now(); # new \Datetime()
        DB::table('tbl_listemail')->insert($data);
        return back()->withInput();
    }

    public function showContact(){
        return view('Pages.Contacts.contact');
    }

    public function saveContact(Request $request){
        $validated = $request->validate([
            'name' => 'required|min:5',
            'email' => 'required',
            'title' => 'required',
            'message' => 'required'
        ]);

        $data = array();
        $data['name'] = $request->name;
        $data['email'] = $request->email;
        $data['title'] = $request->title;
        $data['message'] = $request->message;
        $data["created_at"] =  \Carbon\Carbon::now(); # new \Datetime()
        DB::table('tbl_contact')->insert($data);
        Session::put('message_contact', 'LearnUp đã nhận được tin nhắn. Chúng tôi sẽ phản hồi lại sớm nhất có thể. Xin cảm ơn!!');
        return back()->withInput();
    }
}
