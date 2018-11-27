<?php

namespace App\Http\Controllers;

use App\Http\Requests\PageFormRequest;
use App\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Redirect;
use App\Components\FlashMessages;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Session;
class PageController extends Controller
{
     public function __construct()
    {
       $this->middleware('auth', ['except' => ['forgot_password', 'save_password']]);
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */

     public function ads(){
          $active = "ads";
       $active_menu = "ads";
       return view('page/ads', compact('active','active_menu'));
    }

    public function forgot_password(Request $request){
       return view('page/email');
    }
    public function save_password(Request $request){
      //echo "<pre>"; print_r($_POST); die;
      $email=$_POST['email'];
      $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
      $charactersLength = strlen($characters);
      $password1 = '';
      $length = 8;
      for ($i = 0; $i < $length; $i++) {
          $password1 .= $characters[rand(0, $charactersLength - 1)];
      }
      $password  = Hash::make($password1);
      // $password = md5($password1);
      $pages = DB::table('admin')->where('email',$email)->first();
      if(isset($pages) && !empty($pages)) {
        $pages->name;
        $password1;
        $user_text = "<html><head></head><body style='font-family: Arial; font-size: 12px;'><div>
        Hello $pages->name<p>
        You have requested a Forget password, Your new password $password1</p><p>
        Please ignore this email if you did not request a gorget password.</p></div></body></html>";
        //echo $user_text; die;
        $to = $email;
        $subject = 'Forgot-password jatt-juliet';
        $from = $email;
        // To send HTML mail, the Content-type header must be set
        $headers  = 'MIME-Version: 1.0' . "\r\n";
        $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";
        $headers .= 'From: '.$from."\r\n".
                  'Reply-To: '.$from."\r\n" .
                  'X-Mailer: PHP/' . phpversion();
        mail($to, $subject, $user_text, $headers);
        $update=DB::table('admin')
              ->where('email', $email)
              ->update(array(
              'password'  => $password,  
          ));
        $request->session()->flash('status', 'Your password send your email successfully');
        return Redirect::to('/forgot-password');
      }else{
        $request->session()->flash('error', 'Invalid credentials');
        return Redirect::to('/forgot-password');
      }
    }
    public function index(Request $request)
    {
      //echo "sdsds";die();
       $active = "Dashboard";
       $active_menu = "Dashboard";
       return view('page/index', compact('active','active_menu'));
    }

    // This function use for manage-category START --
  

       public function leads()
    {

      $paginationlimit=10;

     

      $vendors = DB::table('vendors')
           ->get();
      
      $pages = DB::table('leads')
      ->leftJoin('vendors', 'vendors.id', '=', 'leads.uid')
      ->leftJoin('vendors as ven', 'ven.id', '=', 'leads.vid')
      ->select('leads.date','leads.id','leads.status','ven.Institute_Name as vend','vendors.name as user')
          ->orderBy('leads.id','DESC');

           if(isset($_GET['limit']) && !empty($_GET['limit'])){
      $paginationlimit = $_GET['limit'];
      }

      $pages = $pages->paginate($paginationlimit);
          


          $active_menu = "Manageleads";
          $active='active';
       
          return view('page/leads',compact('pages','active','active_menu','vendors'));
      
    }

    public function update_status()
    {
     $id=$_POST['id'];
     $value=$_POST['value'];
     if ($value==1) {  $vl=0;
       # code...
     }
     else
     {
      $vl=1;
     }
      $update=DB::table('leads')
          ->where('id', $id)
          ->update(array(
         
          'status'      => $vl
          
      ));
          echo $vl;

    }

     public function manage_category()
    {
 
        
          $pages = DB::table('category')
          ->where('pid',0)
          ->orderBy('id','DESC')
          ->get();
          
          //echo "<pre>"; print_r($pages); die;
          $active = "Category";
          $active_menu = "ManageCategory";
          return view('page/manage_category',compact('pages','active','active_menu'));
      
    }

    public function manage_sub_category($id=null)
    {
 
        
          $pages = DB::table('category')
          ->where('pid',$id)
          ->orderBy('id','DESC')
          ->get();
          
          //echo "<pre>"; print_r($pages); die;
          $active = "Category";
          $active_menu = "ManageCategory";
          return view('page/manage_sub_category',compact('pages','active','active_menu'));
      
    }

    
    public function add_category()
    {
    	 $pages=DB::table('category')
      ->where('status', 1)
      ->where('pid', 0)
      ->get();
	        $active = "Categories";
	        $active_menu = "SoundC";

	        return view('page/add_category',compact('active','active_menu','pages'));
	    
    }

    public function save_category(Request $request)
    {
      //echo "<pre>"; print_r($_POST); die;
      $category_title  = $_POST['title'];
      $status  = $_POST['status'];
      $today = date("Y-m-d h:i:sa"); 
      $pid    = (@$_POST['cat']) ?: '';
      $update=DB::table('category')
          ->insert(array(
          'category'      => $category_title,
          'status'      => $status,
          'pid'      => $pid
          
      ));
      $request->session()->flash('success', 'Your category has been added');
      return Redirect::to('/admin/manage-category');
    }
    public function edit_category($id)
    {
    	
			$pages=DB::table('category')
			->where('id', $id)->get();

      $category=DB::table('category')
      ->where('status', 1)
      ->where('pid', 0)
      ->get();
			// echo "<pr>"; print_r($pages);
			$active = "Categories";
			$active_menu = "SoundC";
			return view('page/edit_category',compact('pages','active','active_menu','category'));
  		
      }
    public function update_category(Request $request)
    {
      //echo "<pre>"; print_r($_POST); die;
      $category_id  = $_POST['id'];
      $category_title  = $_POST['title'];
      $status  = $_POST['status'];
      $today = date("Y-m-d h:i:sa"); 
       $pid    = (@$_POST['cat']) ?: '';
      $update=DB::table('category')
         ->where('id', $category_id)
          ->update(array(
          'category'      => $category_title,
          'status'      => $status,
          'pid'      => $pid
          
      ));
      $request->session()->flash('success', 'Your category has been updated');
      return Redirect::to('/admin/manage-category');
    }
    public function remove_category(Request $request)
    {
      $teams = $_POST['clients'];
      $teams1=DB::table('category')->whereIn('id', $teams)->delete();
  
      //echo "<pre>"; print_r($_POST); die;
      $request->session()->flash('success', 'Your category has been deleted');
      //return Redirect::to('/manage-category');
      return redirect()->back();
    }
    // This function use for manage-category END START --

   

    // This function use for manage-product START --
    public function product()
    {
        
        $paginationlimit=10;
  
     
  			$pages = DB::table('product')
    			->leftJoin('vendors', 'vendors.id', '=', 'product.vid')
          ->select('product.*', 'vendors.name')
    			->orderBy('product.id','DESC');
           $pages = $pages->paginate($paginationlimit);
          if(isset($_GET['limit']) && !empty($_GET['limit'])){
      $paginationlimit = $_GET['limit'];
      }

     //echo '<pre>';print_r($pages);die();
          $active = "product";

          //print_r($pages);

  			$active_menu = "Manageproduct";
  			return view('page/manage_product',compact('pages','active','active_menu'));
		  
    }
    public function add_product()
    {
    	
			
			$active = "Product";
			$active_menu = "ManageProduct";
			return view('page/add_product',compact('active','active_menu'));
		  
    }

    public function get_sucategory(Request $request)
    {
      if(isset($_POST) && !empty($_POST)){
        $id = $_POST['id'];
        $category=DB::table('sub_category')
        ->where('category_id', $id)
        ->where('status', '1')->get();
        $category_list = "";
        if(isset($category) && !empty($category)){
          foreach ($category as $key => $value) {
              $category_list .= "<option value='$value->id'>$value->title</option>";
          }
          return $category_list;
        }else{
            return "<option value=''>Select Sub-category</option>";
        }
      }else{
          return "<option value=''>Select Sub-category</option>";
      }
    }
    public function save_product(Request $request)
    {
      //echo "<pre>"; print_r($_POST); print_r($_FILES); die;
      $category_title  = $_POST['title'];
      $description  = $_POST['description'];
      $status  = $_POST['status'];
      $price=$_POST['price'];
      $today = date("Y-m-d h:i:sa"); 

      
      if(!empty($_FILES['image']['name'])){
          $image1 = $_FILES['image']['name'];
          $temp_anme1 = $_FILES["image"]["tmp_name"];
          $name1 = rand(10,99999).$image1;
          $uploadfile1 = $_SERVER['DOCUMENT_ROOT'] . '/x-ray/public/uploads/';
          $imagePath1 = $uploadfile1. $name1;
          move_uploaded_file($temp_anme1,$imagePath1);
          $hm_image1 = $name1;
      }else{
          $hm_image1 = "";
      }
      $update=DB::table('product')
          ->insert(array(
          'title'     => $category_title,
          'description' => $description,
          'price'           => $price,
          'image'           => $hm_image1,
          'created'   => $today,
          'status'   => $status,

      ));
      $request->session()->flash('success', 'product has been added');
      return Redirect::to('/admin/manage-product');
    }
    public function edit_product($id)
    {
      
       
        $product=DB::table('product')
          ->where('id', $id)->first();
        $active = "Product";
        $active_menu = "ManageProduct";
      return view('page/edit_product',compact('active','active_menu','product'));
      
    }
    public function update_product(Request $request)
    {
      //echo "<pre>"; print_r($_FILES); die;
      $id  = $_POST['id'];
      $category_title  = $_POST['title'];
      $description  = $_POST['description'];
      $status  = $_POST['status'];
      $price=$_POST['price'];
      $today = date("Y-m-d h:i:sa"); 

      $old_image  = $_POST['old_image'];
      $today = date("Y-m-d h:i:sa"); 
      if(!empty($_FILES['image']['name'])){
          $image1 = $_FILES['image']['name'];
          $temp_anme1 = $_FILES["image"]["tmp_name"];
          $name1 = rand(10,99999).$image1;
          $uploadfile1 = $_SERVER['DOCUMENT_ROOT'] . '/x-ray/public/uploads/';
          $imagePath1 = $uploadfile1. $name1;
          move_uploaded_file($temp_anme1,$imagePath1);
          @unlink($uploadfile1.$old_image);
          $hm_image1 = $name1;
      }else{
          $hm_image1 = $old_image;
      }
      $update=DB::table('product')
          ->where('id', $id)
          ->update(array(
          'title'     => $category_title,
          'description' => $description,
          'price'           => $price,
          'image'           => $hm_image1,
          'status'   => $status,

      ));
      $request->session()->flash('success', 'product has been updated');
      return Redirect::to('/admin/manage-product');
    }
    public function remove_product(Request $request)
    {
      $teams = $_POST['clients'];
      $teams=DB::table('product')->whereIn('id', $teams)->delete();
      $request->session()->flash('success', 'product has been deleted');
      return redirect()->back();
    }
    // This function use for manage-product END START --

    
    // This function use for manage-Slider END START --
    
// This function use for manage-vendors START --
    public function manage_vendor()
    {
 
        
          $pages = DB::table('vendors')
          ->orderBy('id','DESC')
          ->get();
          
          //echo "<pre>"; print_r($pages); die;
          $active = "vendor";
          $active_menu = "Managevendor";
          return view('page/manage_vendor',compact('pages','active','active_menu'));
      
    }

     public function remove_vendor(Request $request)
    {
     // echo "ds";die();
      
      $teams = $_POST['clients'];
      $teams1=DB::table('vendors')->whereIn('id', $teams)->delete();
      $request->session()->flash('success', 'Selected vendors has been deleted');
      return redirect()->back();
    }

    // This function use for manage-users START --
    public function vendors()
    {

         $paginationlimit=10;
          $pages = DB::table('vendors')
              ->orderBy('id','DESC');
          if(isset($_GET['limit']) && !empty($_GET['limit'])){
            $paginationlimit = $_GET['limit'];
          }
        
          $pages = $pages->paginate($paginationlimit);
          //echo "<pre>"; print_r($pages); die;

          $state = DB::table('vendors')
          ->groupBy('State')
          ->get();
          $active = "users";
          $active_menu = "Manageusers";
          return view('page/manage_users',compact('pages','active','active_menu','state'));
      
    }
    public function add_blog()
    {
   
          $active = "Blogs";
          $active_menu = "ManageBlogs";
          return view('page/add_blog',compact('active','active_menu'));
    
    }
    public function save_blog(Request $request)
    {

      $category_title  = $_POST['title'];
      $description  = $_POST['description'];
      $status  = $_POST['status'];
      $today = date("Y-m-d h:i:sa"); 
      if(!empty($_FILES['image']['name'])){
          $image1 = $_FILES['image']['name'];
          $temp_anme1 = $_FILES["image"]["tmp_name"];
          $name1 = rand(10,99999).$image1;
          $uploadfile1 = $_SERVER['DOCUMENT_ROOT'] . '/x-ray/public/blogs/';
          $imagePath1 = $uploadfile1. $name1;
          move_uploaded_file($temp_anme1,$imagePath1);
          $hm_image1 = $name1;
      }else{
          $hm_image1 = "";
      }
      $update=DB::table('blogs')
          ->insert(array(
          'title'     => $category_title,
          'description' => $description,
          'image'     => $hm_image1,
          'status'    => $status,
          'created'   => $today
      ));
      $request->session()->flash('success', 'Your blog has been added');
      return Redirect::to('/admin/manage-blog');
    }
public function manage_blog()
    {
     
          $pages = DB::table('blogs')
          ->orderBy('id','DESC')
          ->get();
        
         
          //echo "<pre>"; print_r($pages); die;
          $active = "Blogs";
          $active_menu = "ManageBlogs";
          return view('page/manage_blog',compact('pages','active','active_menu'));
      
    }
   
 public function upload_cv(){

          $active = "Blogs";
          $active_menu = "ManageBlogs";
          return view('page/upload_csv',compact('pages','active','active_menu'));
 }
    public function upload_vendor(){

        $fileName = $_FILES["image"]["tmp_name"];
        $file = fopen($fileName, "r");
        
        while (($column = fgetcsv($file, 10000, ",")) !== FALSE) {
        // echo '<pre>'; print_r($column);die();
          $inst_name=$column[0];
          $email=$column[7];
          $phone=$column[6];
          $Institute_Address=$column[1];
          $City=$column[2];
          $state=$column[4];

          $Pin=$column[3];

          $category=$column[1];
         // print_r($column[5]);die();
          $sub_category=$column[5];

          $username=$column[9];
          $password=md5($column[10]);
          $status=$column[11];

         $arr='';
         $sub_categorys=explode(',', $sub_category);
            $get_cat = DB::table('category')
                 ->where('category',$column[8])
                 ->first();


                        $get_sub = DB::table('category')
                        ->whereIn('category', $sub_categorys)
                        ->get();
                         foreach ($get_sub as $key => $value) {
                         $arr.=$value->id.',';
                         }
                        
                         //echo $get_cat->id;

       //$sub=implode(',', $arr);
            $City=DB::table('vendors')
          ->insert(array(
          'email'      => $email,
          'phone'      => $phone,
          'Institute_Name' => $inst_name,
          'Institute_Address' => $Institute_Address,
          'City' => $City,
          'Pin' => $Pin,
          'State' => $state,
          'category' => $get_cat->id,
          'sub_category' => $arr,
          'name' => $username,
          'password' => $password,
          'status' => $status,
      ));

          /*  $sqlInsert = "INSERT into users (userId,userName,password,firstName,lastName)
                   values ('" . $column[0] . "','" . $column[1] . "','" . $column[2] . "','" . $column[3] . "','" . $column[4] . "')";
            $result = mysqli_query($conn, $sqlInsert);
            */
            
        }
        die();
    }
    public function edit_blog($id)
    {
      $pages=DB::table('blogs')
      ->where('id', $id)->first();
      // echo "<pr>"; print_r($pages);
      $active = "Blogs";
      $active_menu = "ManageBlogs";
      return view('page/edit_blog',compact('pages','active','active_menu'));
     
      }
    public function update_blog(Request $request)
    {
      $category_id  = $_POST['id'];
      $category_title  = $_POST['title'];
      $description  = $_POST['description'];
      $status  = $_POST['status'];
      $old_image  = $_POST['old_image'];
      $today = date("Y-m-d h:i:sa"); 
      if(!empty($_FILES['image']['name'])){
          $image1 = $_FILES['image']['name'];
          $temp_anme1 = $_FILES["image"]["tmp_name"];
          $name1 = rand(10,99999).$image1;
          $uploadfile1 = $_SERVER['DOCUMENT_ROOT'] . '/x-ray/public/blogs/';
          $imagePath1 = $uploadfile1. $name1;
          move_uploaded_file($temp_anme1,$imagePath1);
          @unlink($uploadfile1.$old_image);
          $hm_image1 = $name1;
      }else{
          $hm_image1 = $old_image;
      }
      $update=DB::table('blogs')
          ->where('id', $category_id)
          ->update(array(
          'title'     => $category_title,
          'description' => $description,
          'image'     => $hm_image1,
          'status'    => $status,
          'created'   => $today
      ));
      $request->session()->flash('success', 'Your blog has been updated');
      return Redirect::to('/admin/manage-blog');
    }
    public function remove_blog(Request $request)
    {

      $teams = $_POST['clients'];
      $teams1=DB::table('blogs')->whereIn('id', $teams)->delete();
      $request->session()->flash('success', 'Your blogs has been deleted');
      return redirect()->back();
    }
    // This function use for manage-Blogs END START --
    // This function use for Admin-setting Start --
    public function profile()
    {
    	$user = Auth::user();
         	$pages = DB::table('admin')->where('id',$user->id)->first();
  		$active = "";
  		$active_menu = "ADMIN";
  		return view('page/profile',compact('pages','active','active_menu'));
    }
    public function update_profile(Request $request)
    {
      //echo "<pre>"; print_r($_POST); die;
      $admin_first_name = $_POST['name'];
      $admin_email      = $_POST['email'];
      $admin_password   = $_POST['password'];
      $old_pass         = $_POST['old_pass'];
      if(!empty($admin_password)){
        $pass  = Hash::make($admin_password);
      }else{
         $pass = $old_pass;
      }
      $user = Auth::user();
      $userid = $user->id;
      $update=DB::table('admin')
          ->where('id', $userid)
          ->update(array(
          'name'=> $admin_first_name,
          'email' => $admin_email,
          'password'  => $pass
      ));
      $request->session()->flash('success', 'Your profile has been updated!');
      return Redirect::to('/profile');
    }
    public function upload_profile()
    {
      //echo "kp"; die;
      //echo "<pre>"; print_r($_FILES); die;
      $old_image  = $_POST['old_image'];
      if(!empty($_FILES['admin_picture']['name'])){
          $image = $_FILES['admin_picture']['name'];
          $temp_anme = $_FILES["admin_picture"]["tmp_name"];
          $name = rand(10,99999).$image;
           $uploadfile = $_SERVER['DOCUMENT_ROOT'] . '/jatt/jatt/public/users/';
           //$uploadfile = $_SERVER['DOCUMENT_ROOT'] . '/jatt_juliet/public/users/';
          //echo $uploadfile; die;
          //$destinationPath = url('/').'/home/';
          $imagePath = $uploadfile. $name;
          //echo $temp_anme."<br>".$imagePath; die;
          move_uploaded_file($temp_anme,$imagePath);
          @unlink($uploadfile.$old_image);
          $hm_image = $name;
      }else{
          $hm_image = $old_image;
      }
      $user = Auth::user();
      $userid = $user->id;
      $update=DB::table('admin')
          ->where('id', $userid)
          ->update(array(
          'picture'      => $hm_image
      ));
      return $hm_image; 
      //return Redirect::to('/profile');
    }

     public function update_status_category(Request $request)
    {
      $status = $_POST['status'];
       $id = $_POST['id'];
        $table = $_POST['table'];
    $update=DB::table($table)
          ->where('id', $id)
          ->update(array(
          'status'   => $status,
          ));
    /*  $request->session()->flash('success', 'Author has been deleted');
      return redirect()->back();*/
    }

     public function delete_users(Request $request)
    {
      $state=$_POST['state'];
      $city=$_POST['city'];

      $teams1=DB::table('vendors')->where('City', $city)->delete();
  
      //echo "<pre>"; print_r($_POST); die;
      $request->session()->flash('success', 'Users has been deleted');
      //return Redirect::to('/manage-category');
      return redirect()->back();
    /*  $request->session()->flash('success', 'Author has been deleted');
      return redirect()->back();*/
    }

    public function city_by_state()
    {

      $pages = DB::table('vendors')
          ->where('State', $_POST['state'])
          ->groupBy('City')
          ->get();
          foreach ($pages as $key => $value) {
            # code...
          
          ?>
          <option value="<?php echo $value->City ?>"><?php echo $value->City ?></option>
          <?php
        }
    }

    // This function use for Admin-setting End --
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('page/create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(PageFormRequest $request)
    {
        $page = Page::create($request->all());

        alert()->success('Page has been added.');

        return redirect()->route('page.edit', $page->id);
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Page $page)
    {
        return view('page/show', compact('page'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Page $page)
    {
        return view('page/edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(PageFormRequest $request, Page $page)
    {
        $page->update($request->all());

        alert()->success('Page has been updated.');

        return back();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Page::destroy($id);

        alert()->success('Page has been deleted.');

        return redirect('/page');
    }
}
