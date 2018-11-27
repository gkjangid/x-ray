<?php

namespace App;
//use Request;
use Illuminate\Database\Eloquent\Model;
use App\Http\Requests\PageFormRequest;

use App\Http\Requests;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
class Page extends Model
{
   // protected $fillable = ['name', 'url', 'title', 'content'];

 //   	public static function like_portfolio($id)
	// {
	//     $pages = DB::table('d6f4f0d1c_liked_portfolios')
 //            ->where('like_portfolio_id', $id)
 //            ->count();
 //            return $pages;
	// }
	// public static function favourite($id)
	// {
	//     $pages = DB::table('d6f4f0d1c_favourite')
 //            ->where('fav_portfolio_id', $id)
 //            ->count();
 //            return $pages;
	// }
 //   public static function image_portfolio($id)
 //   {
 //       $pages = DB::table('d6f4fad3ds20d1c_portfolio_images')
 //            ->where('p_portfolio_id', $id)
 //            ->get();
 //      //echo "<pre>"; print_r($pages); die;
 //      return $pages;
 //   }
 //   public static function checked_portfolio()
 //   {
 //       $pages = DB::table('d6f4f0d1c_homepage_portfolios')
 //            ->where('hpp_type', 'trending')
 //            ->first();
 //      //echo "<pre>"; print_r($pages); die;
 //      return $pages;
 //   }
 //   public static function checked_portfolio1()
 //   {
 //       $pages = DB::table('d6f4f0d1c_homepage_portfolios')
 //            ->where('hpp_type', 'discover')
 //            ->first();
 //      //echo "<pre>"; print_r($pages); die;
 //      return $pages;
 //   }
   public static function admin_details()
   {
      $user = Auth::user();
      $user_id = $user->id;
      $pages = DB::table('admin')
            ->where('id', $user_id)
            ->first();
      //echo "<pre>"; print_r($pages); die;
      return $pages;
   }
}
