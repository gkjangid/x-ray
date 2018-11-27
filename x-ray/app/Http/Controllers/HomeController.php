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

class HomeController extends Controller
{
	// public function __construct()
 //    {
 //       $this->middleware('auth', ['except' => ['index']]);
 //    }
    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
			$category = DB::table('category')
			->where('status', 1)
			->where('pid', 0)
			->get();

			$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
		return view('home/home',compact('category','city'));
    }

   

    public function dashboard(){
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();

    	$active='home';
    	return view('home/dashboard',compact('active','city'));
    }

      public function add_product(){
      	$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();

    	$active='product';
    	return view('home/add_product',compact('active','city','profile'));
    }
    public function save_product(Request $request)
    {
      //echo "<pre>"; print_r($_POST); print_r($_FILES); die;
      $category_title  = $_POST['title'];
      $description  = $_POST['des'];
      $price=$_POST['price'];
      $today = date("Y-m-d h:i:sa"); 
      $vid = Session::get('user_id'); 

      
      if(!empty($_FILES['file']['name'])){
          $image1 = $_FILES['file']['name'];
          $temp_anme1 = $_FILES["file"]["tmp_name"];
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
          'vid'   => $vid,

      ));
      
      return Redirect::to('/manage-product');
    }
      public function product()
    {
        $profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
  			$product = DB::table('product')
    			->leftJoin('vendors', 'vendors.id', '=', 'product.vid')
          ->select('product.*', 'vendors.name')
    			->orderBy('product.id','DESC')
          ->get();
     //echo '<pre>';print_r($pages);die();
          $active = "product";

          //print_r($pages);

  			$active_menu = "Manageproduct";
  			return view('home/manage_product',compact('pages','active','active_menu','profile','product','city'));
		  
    }

    public function delete_product(Request $request)
    {
    	$id=$_POST['id'];
    	 $teams1=DB::table('product')->where('id', $id)->delete();

    }



        public function about(){
        	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
    	$active='about';
    	return view('home/about',compact('active','city'));
    }

       public function contact(){
        	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
    	$active='about';
    	return view('home/contact',compact('active','city'));
    }

     public function mylead(){
    	$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();
			//print_r($profile);die();
$city = DB::table('vendors')
			 ->groupBy('City')
			->get();


	$mylead = DB::table('leads')
			->leftJoin('vendors', 'vendors.id', '=', 'leads.uid')
			->leftJoin('vendors as ven', 'ven.id', '=', 'leads.vid')
			->select('leads.date','leads.id','leads.status','leads.date','ven.Institute_Name as vend','vendors.name as user','vendors.phone','vendors.email')
			->where('leads.vid',Session::get('user_id'))
			->where('leads.status',1)
			->orderBy('leads.id','DESC')
			->get();


           $active='lead';

    	return view('home/leads',compact('profile','mylead','active','city'));
    }

    public function setting()
    {
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();

    	$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();
$active='setting';
    	    	return view('home/setting',compact('profile','active','city'));

    }

     public function save_setting(Request $request)
    {
         if (isset($_POST['prof_info'])) {
         $prof_info=1;
         }
         else
         {
         	$prof_info=0;
         }

     if (isset($_POST['cont_info'])) {
         $cont_info=1;
         }
         else
         {
         	$cont_info=0;
         }
          $update=DB::table('vendors')
              ->where('id', Session::get('user_id'))
              ->update(array(
                 'prof_info'  => $prof_info, 
				'cont_info'  => $cont_info
				
          ));


    	    	        return Redirect::to('/setting');


    }

    public function delete_lead(Request $request)
    {
    	$id=$_POST['id'];
    	 $teams1=DB::table('leads')->where('id', $id)->delete();

    }


  public function update_profile(){
  		$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();

			$get_service = DB::table('category')
			->where('id', $profile->category)
			->first();

			$get_sub = DB::table('category')
			->where('pid', $get_service->id)
			->get();

			$city = DB::table('vendors')
			 ->groupBy('City')
			->get();



$active='update';
    	return view('home/update_profile',compact('profile','get_service','get_sub','active','city'));
    }

      public function myprofile(){
  		$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();

			//print_r($profile);die();

			$get_service = DB::table('category')
			->where('id', $profile->category)
			->first();

			$get_sub = DB::table('category')
			->where('pid', $get_service->id)
			->get();

			$city = DB::table('vendors')
			 ->groupBy('City')
			->get();



$active='profile';

    	return view('home/myprofile',compact('profile','get_service','get_sub','active','city'));
    }

		public function save_profile(Request $request)
		{
          
          $names=$_POST['name'];
          $ins_name=$_POST['ins_name'];
          $phone=$_POST['phone'];
          $emails=$_POST['emails'];
          $addr=$_POST['addr'];
          $state=$_POST['state'];
          $city=$_POST['city'];
          $pin=$_POST['pin'];
          $child_cat=$_POST['child_cat'];
          $desc=$_POST['desc'];

           $oldpicture    = (@$_POST['oldpicture']) ?: '';
        $sub=implode(',', $child_cat);

         if(!empty($_FILES['profile']['name'])){
            $image = $_FILES['profile']['name'];
            $temp_anme = $_FILES["profile"]["tmp_name"];
            $ext = pathinfo($image, PATHINFO_EXTENSION);
            $name = rand(10,99999).".".$ext;
            $uploadfile = $_SERVER['DOCUMENT_ROOT'] . '/x-ray/public/users/';
            $imagePath = $uploadfile. $name;
            move_uploaded_file($temp_anme,$imagePath);
            @unlink($uploadfile.$oldpicture);
            $hm_image = $name;
          }else{
            $hm_image = $oldpicture;
          }

            $update=DB::table('vendors')
              ->where('id', Session::get('user_id'))
              ->update(array(
                 'name'  => $names, 
				'phone'  => $phone, 
				'email'  => $emails, 
				'about'  => $desc, 
				'sub_category'  => $sub, 
				'Institute_Name'  => $ins_name, 
				'Institute_Address'  => $addr, 
				'City'  => $city,  
				'Pin'  => $pin,  
				'State'  => $state,
				'image'=>$hm_image  
          ));

        return Redirect::to('/update-profile');

		}

    public function user_login()
    {
		$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
			//echo "<pre>"; print_r($product); die;
		return view('home/login',compact('city'));
    }

      public function check_login(Request $request)
    {

    	$username=$_POST['user_email'];
    	$pasword=md5($_POST['pasword']);

		$user_login = DB::table('vendors')
			->where('email', $username)
			->where('password', $pasword)
			->where('status', 1)
			->first(); 
			if ($user_login) {
				Session::put('user_login', $user_login->name);
				Session::put('user_id', $user_login->id);
			 
			 echo "1";

			}
			else
			{
                echo "0";
			}
    }

      
      public function user_register()
    {
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();

		$category = DB::table('category')
			->where('status', 1)
			->where('pid', 0)
			->get();
			//echo "<pre>"; print_r($product); die;
		return view('home/register',compact('category','city'));
    }

     public function otp()
    {
    	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();

		$category = DB::table('category')
			->where('status', 1)
			->where('pid', 0)
			->get();
			//echo "<pre>"; print_r($product); die;
		return view('home/otp',compact('category','city'));
    }

      public function check_otp()
    {
    	

			 $otp=(@$_POST['otp']) ?: '';
			//echo "<pre>"; print_r($product); die;
		$user_login = DB::table('vendors')
			->where('otp', $otp)
			->first(); 
			if ($user_login) {
                echo 1;
                Session::put('user_login', $user_login->name);
				Session::put('user_id', $user_login->id);
				$update=DB::table('vendors')
              ->where('otp', $otp)
              ->update(array(
                 'status'  => 1
			  ));
			}
			else
			{
				echo 0;
			}
    }


    

    public function regiser_user(Request $request)
{
	    $name=(@$_POST['name']) ?: '';
	      $phone=(@$_POST['phone']) ?: '';
	    $email=(@$_POST['email']) ?: '';
	    $pasword=(@$_POST['pass']) ?: '';
	    $category=(@$_POST['category']) ?: '';
	    $sub=(@implode(',',$_POST['sub'])) ?: '';

   $otp = rand(100000,999999);

    	$user_login = DB::table('vendors')
			->where('name', $name)
			->first(); 
			if ($user_login) {
			   echo 'username';  
			}
			else
			{
				$user_email = DB::table('vendors')
				->where('email', $email)
				->first(); 
				if ($user_email) {
					echo "email";
				}
				else
				{
					$update=DB::table('vendors')
					->insert(array(
					'name'      => $name,
					'email'      => $email,
					'phone'=>$phone,
					'password' => md5($pasword),
					'category' => $category,
					'sub_category' => $sub,
					'otp'=>$otp
					));
					if ($update) {
						// multiple recipients
					$to  = $email;
              
					// subject
					$subject = 'One Time Password X-ray India';

					// message
					$message = '
					<html>
					<head>
					<title>One Time Password</title>
					</head>
					<body>
					<p>Dear '.$name.'<br>We Detecetd that you are trying to verify your account. your otp for verify is:<b>'.$otp.'</b> for security reasons do not share your otp anyone.<br> Thanks <br> Team X-ray India</p>
					</body>
					</html>
					';

					// To send HTML mail, the Content-type header must be set
					$headers  = 'MIME-Version: 1.0' . "\r\n";
					$headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

					// Additional headers
					
					$headers .= 'From: X-ray India <info@destinysolution.in>' . "\r\n";
				

					// Mail it
					mail($to, $subject, $message, $headers);
					}
					else
					{
						echo 0;
					}

				}
				
			}

}

 public function get_sub_category(Request $request)
    {

    	$category=$_POST['category'];
    	
		$categories = DB::table('category')
			->where('status', 1)
			->where('pid', $category)
			->get();
			foreach ($categories as $key => $value) {
				?>
				<label><input type="checkbox" name="sub[]"  value="<?php echo $value->id ?>"> <span><?php echo $value->category ?></span>
									</label>
				<?php
			}
    }

     public function category_by_city(Request $request)
    {

    	$city=$_POST['city'];
    	
		$city = DB::table('vendors')
			->where('City', $city)
			->groupBy('category')
			->get();
			?>
			<option value="">Select Category</option>
		<?php
			foreach ($city as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();

			foreach ($categories as $key => $values);
				
				?>

				<option value="<?php echo $values->id ?>"><?php echo $values->category ?></option> 
				<?php
			}
    }

		public function category_by_sub(Request $request)
		{

          $category=$_POST['category'];
          //$sub=$_POST['sub'];
    	
		$city = DB::table('category')
			->where('pid', $category)
			->get();

			 foreach($city as $row){
       $response[] = array("value"=>$row->id,"label"=>$row->category);
    }
    echo json_encode($response);
            
		}

			public function services_by_city(Request $request)
		{
          //print_r($_POST);die();
          $city=$_POST['category'];
        $city = DB::table('vendors')
			->where('City', $city)
			->groupBy('category')
			->get();
			
			foreach ($city as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();

			foreach ($categories as $key => $values);
 $response[] = array("value"=>$values->id,"label"=>$values->category);
		}
    echo json_encode($response);
            
		}
		    

		    
       public function listing($cat=null)
    {
    	
 $paginationlimit=10;
      $categories=array();
      
    	$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();

    	//print_r($profile);die();
    	if (isset($_GET['category'])) {
    		//echo "string";die();
    	$vendor = DB::table('vendors')
			->where('category', $_GET['category'])
			->where('status', 1)
			->where('City', $_GET['city']);
			
//print_r($vendor);die();
            $citys = DB::table('vendors')
			->where('City', $_GET['city'])
			->where('status', 1)
			->groupBy('category')
			->get();
			
			foreach ($citys as $key => $value) {
				$categories = DB::table('category')
				->where('id', $value->category)
			    ->get();
			$data[]=$categories;

		}
      
 
    	}
    	else if(isset($_GET['sub_cat']))
    	{

    		 $ids[]=$_GET['sub_cat'];

    		$arr=array(7);
    		$arr2=array($ids);
    		

    		$vendor = DB::table('vendors')
    		->where('City', $_GET['city'])
    		->where('status', 1)
			->whereIn('sub_category', $arr);
			

			 $citys = DB::table('vendors')
			->where('City', $_GET['city'])
			->where('status', 1)
			->groupBy('category')
			->get();
			
			foreach ($citys as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();
			$data[]=$categories;

		}
      
			//echo '<pre>';print_r($citys);die();

			//print_r($vendor);die();
    	}

    else if(isset($_GET['header']))
    	{    
    		 $ids=$_GET['header'];
    		 $city=$_GET['city'];


    		$vendor = DB::table('vendors')
    		->where('City', $city)
    		->where('status', 1)
			->where('category', $ids);
			

		 $citys = DB::table('vendors')
			->where('City', $_GET['city'])
			->where('status', 1)
			->groupBy('category')
			->get();
			
			foreach ($citys as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();
			$data[]=$categories;

		}
      

			
    	}


    else if(!empty($cat))
    	{    
    		

    		$vendor = DB::table('vendors')
			->where('category', $cat);
			
			
    	}

    	else
    	{
    		if(isset($_GET['city']))
    		{
    			$vendor = DB::table('vendors')
    			->where('status',1)
    			->where('City',$_GET['city']);
			    

			$sdsd = DB::table('vendors')
			->where('status',1)
			->groupBy('category')
			->get();


			
			 $citys = DB::table('vendors')
			->where('status',1)
			->groupBy('category')
			->get();
			
			foreach ($citys as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();
			$data[]=$categories;

    		}
    	}
    	else
    	{
    		$vendor = DB::table('vendors')
    		->where('status',1);
			

			$sdsd = DB::table('vendors')
			->where('status',1)
			->groupBy('category')
			->get();


			
			 $citys = DB::table('vendors')
			->where('status',1)
			->groupBy('category')
			->get();
			
			foreach ($citys as $key => $value) {
				$categories = DB::table('category')
			->where('id', $value->category)
			->get();
			$data[]=$categories;
		}

		}
      
    	}
    	//print_r($vendor);die();

    	 $vendor = $vendor->paginate($paginationlimit);

          if(isset($_GET['limit']) && !empty($_GET['limit'])){
      $paginationlimit = $_GET['limit'];
      }

           //print_r($categories);die();
 	$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
			
		return view('home/listing',compact('vendor','profile','city','data'));
    }
public function details_page($id=null)
{
$product = DB::table('product')
			->where('vid', $id)
			->get();

$profile = DB::table('vendors')
			->where('id', Session::get('user_id'))
			->first();
$vendor = DB::table('vendors')
			->where('id', $id)
			->first();
				$city = DB::table('vendors')
			 ->groupBy('City')
			->get();
		return view('home/details',compact('vendor','profile','city','product'));

}
public function signout(){

	Session::forget('user_id');
	      return Redirect::to('/signin');

}

			public function get_lead(Request $request)
			{
				
				$uid=$_POST['uid'];
				$vid=$_POST['vid'];
				$msg=$_POST['message'];

				$update=DB::table('leads')
		          ->insert(array(
		          'uid'	=> $uid,
		          'vid' => $vid,
		          'msg' => $msg
		      	));
		          if ($update) {
		          	echo '1';
		          }
		          else
		          {
		          	echo '0';
		          }



			}

    public function blog_details($id=null){
    	$category = DB::table('category')
			->where('status', 1)
			->get(); 
		$category = DB::table('category')
			->where('status', 1)
			->get();
		foreach ($category as $key => $value) {
			$sub_category = DB::table('sub_category')
			->where('status', 1)
			->where('category_id', $value->id)
			->get();
			$sub_categorydata[$key]['category']= $value; 
			$sub_categorydata[$key]['sub_category']= $sub_category; 
		}
    	if(isset($id) && !empty($id)){
    		$id = base64_decode($id);
    		$blog = DB::table('blogs')
			->where('id', $id)
			->first();
			//echo "<pre>"; print_r($product); die;
			return view('home/blog_details', compact('category','blog','sub_categorydata'));
    	}else{
    		return view('home/blog_details', compact('category','sub_categorydata'));
    	}
    	
    }
}
