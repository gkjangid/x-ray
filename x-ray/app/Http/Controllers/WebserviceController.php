<?php

namespace App\Http\Controllers;

use App\Http\Requests\PageFormRequest;
use App\Page;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Redirect;
use App\Components\FlashMessages;
use App\Http\Requests;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Session;

class WebserviceController extends Controller
{
    public function __construct()
    {
        //$this->middleware('auth');

    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    
 /*verify url*/
    public function verify_url($id,$device_id)
    {

            $register = DB::table('task')
              ->where('id', $id)
              ->first();
              if ($register->cid==18) {
 $update=DB::table('completed_tasks')
                 ->insert(array(
                'device_id'      => $device_id,
                'tid'      => $id,
                'amount' => '20',
                'package' => 'facebook'
      ));
                          header("location: https://facebook.com");

              }
              else
              {
                $url=$register->url;
                $url1=explode("=",$url);
                $package=$url1[1];

               
                $update=DB::table('completed_tasks')
                ->insert(array(
                'device_id'      => $device_id,
                'tid'      => $id,
                'amount' => '00',
                'package' => $package
         
      ));
           if ($update) {
                header("location: market://details?id=$package&hl=en");

          }


              }
    }
    //---user login/register  type POST-//


    public function register(Request $request)
    {
      
      header('Access-Control-Allow-Origin: *');

        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
      if(isset($_POST) && !empty($_POST)){
        $divice_id     = (@$_POST['divice_id']) ?: '';
        $fcm_token     = (@$_POST['fcm_token']) ?: ''; 
        $referral_code     = (@$_POST['referral_code']) ?: ''; 

        
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
         
         if(empty($register)){
          $checkref = DB::table('users')
              ->where('referral_code', $referral_code)
              ->first();
              /*if ($checkref) {
               
              }*/
            $chars = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ";
            $res = "";
            for ($i = 0; $i < 5; $i++) {
            $res .= $chars[mt_rand(0, strlen($chars)-1)];
            }

          $update=DB::table('users')
            ->insert(array(
            'divice_id'  => $divice_id,
            'fcm_token'  => $fcm_token,
            'referral_code' =>  $res
           
          ));
          return response()->json([
              'status' => '1',
              'message' => 'Register Successfully'
              
          ]);
        }else{

          $update=DB::table('users')
            ->where('divice_id', $divice_id)
            ->update(array(
            'fcm_token' =>  $fcm_token
          ));

          return response()->json([
              'status' => '1',
              'message' => 'Details updated Successfully'
              
          ]);
        }
      }else{
        return response()->json([
            'status' => '0',
            'message' => 'Some error found !'
        ]);
      }
    }
    //---user profile- type post//
    public function profile(request $request){
      //echo "string";die()
      header('Access-Control-Allow-Origin: *');
        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];

         $divice_id     = (@$_POST['divice_id']) ?: '';

      if(isset($divice_id) && !empty($divice_id)){
        $user['result'] = DB::table('users')
              ->select('referral_code','msg')
              ->where('divice_id', $divice_id)
              ->first();
        //echo "<pre>"; print_r($user['like']); die;
        if(!empty($user)){  
          return response()->json([
              'status' => '1',
              'message' => 'Success',
              'data' => $user
          ]);
        }else{
           return response()->json([
            'status' => '0',
            'message' => 'user not exist!'
          ]);
        }
      }else{
        return response()->json([
            'status' => '0',
            'message' => 'Some error found !'
        ]);
      }
    }



    //---user update-profile -type POST//
    public function list()
    {
      header('Access-Control-Allow-Origin: *');

        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
        
             $response=array();

              $video= DB::table('awesome_offer_wall')
              ->get();
              $wow_offer_wall= DB::table('wow_offer_wall')
              ->get();
              $spreading_task= DB::table('spreading_task')
              ->get();
              $popular_Offer= DB::table('popular_Offer')
              ->get();
              $fantastic_offer_wall= DB::table('fantastic_offer_wall')
              ->get();
              $check_in_task= DB::table('check_in_task')
              ->get();
              foreach ($check_in_task as $key => $value) {
              $response['check_in_task']['id']=$value->id;
              $response['check_in_task']['title']=$value->title;
              $response['check_in_task']['url']=$value->url;
              $response['check_in_task']['image']='1.png';
              }
              foreach ($wow_offer_wall as $key => $value) {
                $response['wow_offer_wall'][$key]['id']=$value->id;
                $response['wow_offer_wall'][$key]['title']=$value->title;
                $response['wow_offer_wall'][$key]['url']=$value->url;
                $response['wow_offer_wall'][$key]['image']='1.png';

              }
              foreach ($spreading_task as $key => $value) {
                $response['spreading_task']['id']=$value->id;
                $response['spreading_task']['title']=$value->title;
                $response['spreading_task']['url']=$value->url;
                $response['spreading_task']['image']='1.png';

              }
              foreach ($popular_Offer as $key => $value) {
                $response['popular_Offer']['id']=$value->id;
                $response['popular_Offer']['title']=$value->title;
                $response['popular_Offer']['url']=$value->url;
                $response['popular_Offer']['image']='1.png';

              }
              foreach ($fantastic_offer_wall as $key => $value) {
                $response['fantastic_offer_wall']['id']=$value->id;
                $response['fantastic_offer_wall']['title']=$value->title;
                $response['fantastic_offer_wall']['url']=$value->url;
                $response['fantastic_offer_wall']['image']='1.png';

              }
              foreach ($video as $key => $value) {
                $response['awesome_offer_wall'][$key]['id']=$value->id;
                $response['awesome_offer_wall'][$key]['title']=$value->title;
                $response['awesome_offer_wall'][$key]['url']=$value->url;
                $response['awesome_offer_wall'][$key]['image']='1.png';

              }


              

           return response()->json([
                        'status' => '1',
                        'message' => 'Success',
                        'data' => $response
                    ]);

    }
    
    public function listing(){
      header('Access-Control-Allow-Origin: *');
        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
                $divice_id     = (@$_POST['divice_id']) ?: '';

        $video = DB::table('category')
             ->select('category.category_id','category.category_title')
              ->get(); 
       foreach ($video as $key1 => $value) {

        $videos = DB::table('task')
             ->where('cid',$value->category_id)
            ->get(); 
               //  $response[$value->category_title]['title']=$value->category_title;
         
foreach ($videos as $key => $value1) {
  # code...
               

  if ($value->category_id ==15 || $value->category_id==16) {
     $url=$value1->url;
                $url1=explode("=",$url);
                $package=$url1[1];
                 $response[$value->category_title][$key]['id']=$value1->id;
  $response[$value->category_title][$key]['title']=$value1->title;
  $response[$value->category_title][$key]['url']='http://destinysolution.in/earning/verify-url/'.$value1->id.'/'.$divice_id;
  $response[$value->category_title][$key]['image']='https://cdn2.iconfinder.com/data/icons/instagram-new/512/instagram-round-flat-512.png';
  $response[$value->category_title][$key]['points']=$value1->price;
  $response[$value->category_title][$key]['package']=$package;

  $response[$value->category_title][$key]['msg']=$value1->msg;

  }
  else
  {
        $response[$value->category_title]['id']=$value1->id;

    $response[$value->category_title]['title']=$value1->title;
 $response[$value->category_title]['url']=$value1->url;
  $response[$value->category_title]['image']='https://cdn2.iconfinder.com/data/icons/instagram-new/512/instagram-round-flat-512.png';
    $response[$value->category_title]['points']=$value1->price;
    $response[$value->category_title]['msg']=$value1->msg;
 $response[$value->category_title]['url']='http://destinysolution.in/earning/verify-url/'.$value1->id.'/'.$divice_id;
  
   if ($value->category_id==14) {
$url=$value1->url;
                $url1=explode("=",$url);
                $package=$url1[1];
      $response[$value->category_title]['package']=$package;

   }



  }

     
       }
     }
       return response()->json([
              'status' => '1',
              'message' => 'Success',
              'data' => $response
          ]);
      /*  if(!empty($video)){  
          return response()->json([
              'status' => '200',
              'message' => 'Video list',
              'data' => $video
          ]);
        }else{
           return response()->json([
            'status' => '201',
            'message' => 'not exit!'
          ]);
        }*/
    }


    //---user all detail-video GET//
    public function completeProfile($id= null){
      header('Access-Control-Allow-Origin: *');
        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
          $divice_id     = (@$_POST['divice_id']) ?: '';
          $name     = (@$_POST['name']) ?: ''; 
          $email     = (@$_POST['email']) ?: ''; 
             $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                # code...
              
          $update=DB::table('users')
            ->where('divice_id', $divice_id)
            ->update(array(
            'name' =>  $name,
            'email' =>  $email
          ));

            $to  = $email; // note the comma
            

            // subject
            $subject = 'Verification Mail From Earning';
                   $id=$register->id;
            // message
            $pwrurl = "http://destinysolution.in/earning/verifi/$id";

        $mailbody = "Dear user,\n\nIf this e-mail does not apply to you please ignore it. It appears that you have requested for verify your account at Earning\n\nTo verify your account, please click the link below. If you cannot click it, please paste it into your web browser's address bar.\n\n" . $pwrurl . "\n\nThanks,\nThe Administration";

            // To send HTML mail, the Content-type header must be set
            $headers  = 'MIME-Version: 1.0' . "\r\n";
            $headers .= 'Content-type: text/html; charset=UTF-8' . "\r\n";

            // Additional headers
            $headers .= 'From:Earning<test@destinysolution.in>' . "\r\n";


            // Mail it
            if(mail($to, $subject, $mailbody, $headers))
            {

          
               return response()->json([
            'status' => '1',
            'message' => 'Please Check Your Mail for verify Your Account'
        ]);
             }
             else
             {
              return response()->json([
            'status' => '0',
            'message' => 'Mail not send'
        ]);
             }
             }
             else
             {
              return response()->json([
            'status' => '0',
            'message' => 'user not found'
        ]);
             }
            
           

  }
    //---user add-comment -type POST//
    public function add_comment(Request $request)
    {
      header('Access-Control-Allow-Origin: *');

        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
      if(isset($_POST) && !empty($_POST)){
        $video_id     = (@$_POST['video_id']) ?: '';
        $user_id     = (@$_POST['user_id']) ?: '';
        $mess     = (@$_POST['mess']) ?: ''; 
        $today = date("Y-m-d h:i:sa"); 
        $insert=DB::table('comment_video')
            ->insert(array(
            'user_id'   => $user_id,
            'video_id'  => $video_id,
            'mess'    => $mess,
            'created_at'=>  $today
          ));
          return response()->json([
            'status' => '200',
            'message' => 'Send Successfully!',
            'data' => $_POST
          ]);
      }else{
        return response()->json([
            'status' => '201',
            'message' => 'Same error found !'
        ]);
      }
    }
    public function verifiaccount($id)
    {
       $register = DB::table('users')
              ->where('id', $id)
              ->first();
      if ($register->reward==0) {
        $update=DB::table('users')
            ->where('id', $id)
            ->update(array(
            'reward' =>  1
          ));
        $insert=DB::table('points_history')
        ->insert(array(
        'title'   => 'Profile_Update',
        'uid'  => $id,
        'point'    => '20',
        'cid'    => '19',
        'tid'    => '11',
        'divice_id'=>$register->divice_id
        ));

            ?>
            <script type="text/javascript">alert('Verify Successfully');location.href="http://destinysolution.in/earning/"</script>
            <?php
      }

      
    }
    //---user like-comment -type POST//
    public function balanceHistory(Request $request)
    {
      header('Access-Control-Allow-Origin: *');

        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
      if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
              
        $comment = DB::table('points_history')
                        ->leftJoin('task', 'task.id', '=', 'points_history.tid')
                        ->select('task.title AS ttitle','points_history.*')
                        ->where('points_history.divice_id',$divice_id)
                        ->get();

                        if (!empty($comment['0'])) {
                        
                        

                       foreach ($comment as $key => $value) {
                         $datss=explode(" ",$value->date);
                        //print_r($datss);
              $date=date_create($datss['0']);
              $dats=date_format($date,"M j Y");
                         $response[$key]['id']=$value->id;
                          $response[$key]['date']=$dats;
                          $response[$key]['from']=$value->ttitle;
                          $response[$key]['point']=$value->point;
                       }
                       return response()->json([
                    'status' => '1',
                    'message' => 'Success',
                    'result' => $response

        ]);
                     }
                     else
                     {
                       return response()->json([
                    'status' => '0',
                    'message' => 'No Balance History'
                    ]);
                     }
                     }
                     else
                     {
                        return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
                     }

       }
    }

    //---userEranPoint -type POST//
    public function userEranPoint(Request $request)
    {
      header('Access-Control-Allow-Origin: *');

        // ALLOW OPTIONS METHOD
        $headers = [
            'Access-Control-Allow-Methods' => 'POST, GET, OPTIONS, PUT, DELETE',
            'Access-Control-Allow-Headers' => 'Content-Type, X-Auth-Token, Origin, Authorization'
        ];
      if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
              $total=0;
        $comment = DB::table('points_history')
                        ->leftJoin('task', 'task.id', '=', 'points_history.tid')
                        ->select('task.title AS ttitle','points_history.*')
                        ->where('points_history.divice_id',$divice_id)
                        ->get();

                        if (!empty($comment['0'])) {
                        
                        

                       foreach ($comment as $key => $value) {
                       $total+=$value->point;
                         
                       }

                       return response()->json([
                    'status' => '1',
                    'message' => 'Success',
                    'points' => $total

        ]);
                     }
                     else
                     {
                       return response()->json([
                    'status' => '0',
                    'message' => 'No Balance History'
                    ]);
                     }
                     }
                     else
                     {
                        return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
                     }

       }
    }
 /* taskcomplete */
    public function checkInTaskCompleted(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                 $insert=DB::table('completed_tasks')
              ->insert(array(
              'device_id'   => $divice_id,
              'amount'  => '20',
              'tid'   => '2'
            ));
               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }


    /* watchCompleted */
    public function watchCompleted(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                 $insert=DB::table('completed_tasks')
              ->insert(array(
              'device_id'   => $divice_id,
              'amount'  => '20',
              'tid'   => '7'
            ));
               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }


    /* FantasticOfferCompleted */
    public function FantasticOfferCompleted(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $taskId = (@$_POST['taskId']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
              $update=DB::table('completed_tasks')
            ->where('tid', $taskId)
            ->where('device_id', $divice_id)
            ->update(array(
            'status' =>  '1'
          ));

               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }


 /* wow_offer_wallCompleted */
    public function wow_offer_wallCompleted(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $taskId = (@$_POST['taskId']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
              $update=DB::table('completed_tasks')
            ->where('tid', $taskId)
            ->where('device_id', $divice_id)
            ->update(array(
            'status' =>  '1'
          ));

               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }

    /* awesome_offer_wallCompeted */
    public function awesome_offer_wallCompeted(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $taskId = (@$_POST['taskId']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
              $update=DB::table('completed_tasks')
            ->where('tid', $taskId)
            ->where('device_id', $divice_id)
            ->update(array(
            'status' =>  '1'
          ));

               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }
/* paymentRequest */
    public function paymentRequest(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
        $amount = (@$_POST['amount']) ?: '';
        $paytment_type = (@$_POST['paytment_type']) ?: '';
        $payment_id = (@$_POST['payment_id']) ?: '';
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
                $insert=DB::table('payment_request')
              ->insert(array(
              'divice_id'   => $divice_id,
              'amount'  => $amount,
              'paytment_type'=>$paytment_type,
              'payment_id'=>$payment_id
              
            ));

               return response()->json([
                    'status' => '1',
                    'message' => 'Success'

        ]);
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }


    /* paymentRequest */
    public function paymentHisotry(Request $request)
    {
if(isset($_POST) && !empty($_POST)){

        $divice_id     = (@$_POST['divice_id']) ?: '';
       
        $register = DB::table('users')
              ->where('divice_id', $divice_id)
              ->first();
              if (!empty($register)) {
                
               $comment = DB::table('payment_request')
                         ->where('divice_id',$divice_id)
                        ->get();
                         if (!empty($comment['0'])) {
                       foreach ($comment as $key => $value) {
                         $datss=explode(" ",$value->date);
                        //print_r($datss);
              $date=date_create($datss['0']);
              $dats=date_format($date,"M j Y");
                         $response[$key]['id']=$value->id;
                          $response[$key]['amount']=$value->amount;
                          $response[$key]['date']=$dats;
                          if ($value->status==0) {
                            $response[$key]['status']='Pending';
                          }
                          else
                          {
                            $response[$key]['status']='Completed';
                          }
                         
                       }
                        return response()->json([
                    'status' => '1',
                    'message' => 'Success',
                    'result' => $response
                    ]);
                     }

                     else
                     {
                         return response()->json([
                    'status' => '0',
                    'message' => 'Zero Balance'
                    ]);
                     }

                      

        
              }
              else
              {
                return response()->json([
                    'status' => '0',
                    'message' => 'user not found'

        ]);
              }
            }
    }
   
}
