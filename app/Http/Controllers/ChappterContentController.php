<?php

namespace App\Http\Controllers;
use App\Chappter;
use App\ChappterContent;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Session;
use Illuminate\Support\Facades\Redirect;
session_start();

class ChappterContentController extends Controller
{
    //Auth
    public function AuthLogin(){
        $admin_id = Session::get('admin_id');
        if($admin_id){
            Redirect::to('dashboard');
        }else{
            return Redirect::to('admin')->send();
        }
    }

    public function viewChappterContent($chappter_id){
        $this->AuthLogin();
        $chappter_name = Chappter::Where('chappter_id', $chappter_id)->limit(1)->get();
        $view_chappter_content = DB::table('tbl_chappter_content')
        ->join('tbl_chappter','tbl_chappter_content.chappter_id', '=' ,'tbl_chappter.chappter_id')
        ->where('tbl_chappter_content.chappter_id', $chappter_id)->get();
        $manager_chappter = view('Admin.ChappterContent.view_chappter_content')->with('view_chappter_content', $view_chappter_content)->with('chappter_name', $chappter_name);

        return view('admin_layout')
        ->with('Admin.ChappterContent.view_chappter_content', $manager_chappter)
        ->with('chappter_name', $chappter_name);
    }

    public function addChappterContent($chappter_id){
        $this->AuthLogin();
        //Hiển thị phần select option
        $chappter = Chappter::Where('chappter_id', $chappter_id)->get();
        return view('Admin.ChappterContent.add_chappter_content')->with('chappter', $chappter);
    }

    public function saveChappterContent(Request $request){
        $this->AuthLogin();
        $data = array();
        $data['chappter_content_name'] = $request->chappter_content_name;
        $newlink = substr($request->chappter_content_link, 17);
        $data['chappter_content_link'] = $newlink;     
        $data['is_mandatory'] = $request->is_mandatory;
        $data['chappter_id'] = $request->chappter_id;
        $data["created_at"] =  \Carbon\Carbon::now(); # new \Datetime()

        DB::table('tbl_chappter_content')->insert($data);
        Session::put('message_ChappterContent', 'Thêm videos thành công');

        return redirect('view-chappter-content/'.$data['chappter_id']);
    }

    public function editChappterContent($chappter_content_id){
        $this->AuthLogin();
        $chappter = Chappter::OrderBy('chappter_id', 'DESC')->get();
        $edit_chappter_content = DB::table('tbl_chappter_content')->where('chappter_content_id', $chappter_content_id)->get();
        $manager_chappter_content = view('Admin.ChappterContent.edit_chappter_content')->with('edit_chappter_content', $edit_chappter_content)->with('chappter', $chappter);
        return view('admin_layout')->with('Admin.ChappterContent.edit_chappter_content', $manager_chappter_content);
    }

    public function updateChappterContent(Request $request,$chappter_content_id){
        $this->AuthLogin();
        $data = array();
        $data['chappter_content_name'] = $request->chappter_content_name;
        if($request->chappter_content_link){
            $newlink = substr($request->chappter_content_link, 17);
            $data['chappter_content_link'] = $newlink;
        }
        $data['chappter_id'] = $request->chappter_id;
        $data["updated_at"] = \Carbon\Carbon::now();  # new \Datetime()
        
        DB::table('tbl_chappter_content')->where('chappter_content_id', $chappter_content_id)->update($data);
        Session::put('message_ChappterContent', 'Videos đã được cập nhật');
        return redirect('view-chappter-content/'.$data['chappter_id']);
    }

    public function deleteChappterContent($chappter_content_id){
        $this->AuthLogin();
        ChappterContent::destroy($chappter_content_id);
        Session::put('message_ChappterContent','Xóa videos thành công');
        return back()->withInput();
    }

    public function active_videos($chappter_content_id){
        $this->AuthLogin();
        DB::table('tbl_chappter_content')->where('chappter_content_id',$chappter_content_id)->update(['is_mandatory'=>0]);
        return back()->withInput();
    }
    
    public function unactive_videos($chappter_content_id){
        $this->AuthLogin();
        DB::table('tbl_chappter_content')->where('chappter_content_id',$chappter_content_id)->update(['is_mandatory'=>1]);
        return back()->withInput();
    }
}
