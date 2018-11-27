<?php
Auth::routes();
Route::get('/', 'HomeController@index');
Route::get('/admin', 'PageController@index');
Route::get('page/add', 'PageController@create');
Route::get('page/{page}/delete', [
    'as'   => 'page.delete',
    'uses' => 'PageController@destroy',
]);
/*Front End*/
Route::get('/singnup}', 'HomeController@user_login');
Route::get('/user-register}', 'HomeController@user_register');

/*end Frontend*/
Route::get('/product-list/{id}', 'HomeController@product');
Route::get('/product-list/{id}/{id1}', 'HomeController@product');
Route::post('/product-download', 'HomeController@download');
Route::post('/product-like', 'HomeController@like');

Route::get('/signin', 'HomeController@user_login');
Route::get('/singnup', 'HomeController@user_register');
Route::POST('/check_login', 'HomeController@check_login');
Route::POST('/get_sub_category', 'HomeController@get_sub_category');
Route::POST('/regiser_user', 'HomeController@regiser_user');
Route::get('/listing/{category}', 'HomeController@listing');

Route::get('/listing', 'HomeController@listing');
Route::POST('/category_by_city', 'HomeController@category_by_city');
Route::POST('/category_by_sub', 'HomeController@category_by_sub');
Route::get('/details/{id}', 'HomeController@details_page');
Route::POST('/get_lead', 'HomeController@get_lead');
Route::get('/signout', 'HomeController@signout');

Route::get('/dashboard', 'HomeController@dashboard');
Route::get('/update-profile', 'HomeController@update_profile');
Route::POST('/save_profile', 'HomeController@save_profile');
Route::get('/myprofile', 'HomeController@myprofile');
Route::get('/mylead', 'HomeController@mylead');
Route::post('/delete_lead', 'HomeController@delete_lead');

Route::get('/setting', 'HomeController@setting');
Route::post('/save_setting', 'HomeController@save_setting');
Route::post('/services_by_city', 'HomeController@services_by_city');
Route::get('/about-us', 'HomeController@about');
Route::get('/contact', 'HomeController@contact');

Route::get('/otp', 'HomeController@otp');
Route::POST('/check_otp', 'HomeController@check_otp');

Route::get('/add-product', 'HomeController@add_product');
Route::POST('/save_product', 'HomeController@save_product');
Route::get('/manage-product', 'HomeController@product');
Route::post('/delete_product', 'HomeController@delete_product');


Route::get('/admin/manage-ads', 'PageController@ads');
Route::get('/admin/leads', 'PageController@leads');
Route::POST('/admin/update_status', 'PageController@update_status');


Route::get('/blog-details/{id}', 'HomeController@blog_details');
//---category--//
Route::get('/admin/manage-category', 'PageController@manage_category');
Route::get('/admin/manage-sub-category/{id}', 'PageController@manage_sub_category');

Route::get('/admin/add-category', 'PageController@add_category');
Route::post('/admin/save-categories', 'PageController@save_category');
Route::get('/admin/edit-category/{id}', 'PageController@edit_category');
Route::post('/admin/update-category', 'PageController@update_category');
Route::post('/admin/remove-category', 'PageController@remove_category');
//---subcategory--//

//---product--//
Route::get('/admin/manage-product', 'PageController@product');
Route::get('/admin/add-product', 'PageController@add_product');
Route::post('/admin/save-product', 'PageController@save_product');
Route::get('/admin/edit-product/{id}', 'PageController@edit_product');
Route::post('/admin/update-product', 'PageController@update_product');
Route::post('/admin/remove-product', 'PageController@remove_product');
Route::post('/get-sucategory', 'PageController@get_sucategory');

Route::get('/admin/upload-vendor', 'PageController@upload_cv');
Route::POST('/admin/upload-CSV', 'PageController@upload_vendor');

//---users--//
Route::get('/admin/manage-users', 'PageController@vendors');
Route::get('/admin/add-blog', 'PageController@add_blog');
Route::post('/admin/save-blog', 'PageController@save_blog');
Route::get('/admin/edit-blog/{id}', 'PageController@edit_blog');
Route::post('/admin/update-blog', 'PageController@update_blog');
Route::post('/admin/remove-blog', 'PageController@remove_blog');
Route::get('/admin/manage-blog', 'PageController@manage_blog');

//---vendors--//
Route::get('/admin/manage-vendor', 'PageController@manage_vendor');
Route::get('/admin/add-blog', 'PageController@add_blog');
Route::post('/admin/save-blog', 'PageController@save_blog');
Route::get('/admin/edit-blog/{id}', 'PageController@edit_blog');
Route::post('/admin/update-blog', 'PageController@update_blog');
Route::post('/admin/remove-vendor', 'PageController@remove_vendor');
Route::post('/admin/update_status_category', 'PageController@update_status_category');
Route::post('/admin/city_by_state', 'PageController@city_by_state');
Route::post('/admin/delete_users', 'PageController@delete_users');




//--Admin-setting--//
Route::get('/profile', 'PageController@profile');
Route::post('/update-profile', 'PageController@update_profile');
Route::post('/upload', 'PageController@upload_profile');


Route::get('/forgot-password', 'PageController@forgot_password');
Route::post('/save-password', 'PageController@save_password');
/*api*/

Route::get('/verify-url/{id}/{device_id}', 'WebserviceController@verify_url');

Route::post('/register', 'WebserviceController@register');
Route::post('/invite', 'WebserviceController@profile');
Route::post('/offers', 'WebserviceController@listing');
Route::post('/completeProfile', 'WebserviceController@completeProfile');
Route::get('/verifi/{id}', 'WebserviceController@verifiaccount');
Route::post('/balanceHistory', 'WebserviceController@balanceHistory');
Route::post('/checkInproductCompleted', 'WebserviceController@checkInproductCompleted');
Route::post('/watchCompleted', 'WebserviceController@watchCompleted');
Route::post('/FantasticOfferCompleted', 'WebserviceController@FantasticOfferCompleted');
Route::post('/wow_offer_wallCompleted', 'WebserviceController@wow_offer_wallCompleted');

Route::post('/awesome_offer_wallCompeted', 'WebserviceController@awesome_offer_wallCompeted');
Route::post('/paymentRequest', 'WebserviceController@paymentRequest');
Route::post('/paymentHisotry', 'WebserviceController@paymentHisotry');

Route::post('/userEranPoint', 'WebserviceController@userEranPoint');



function is_active_sorter($key, $direction = 'ASC')
{
    if (request('sortby') == $key && request('sortdir') == $direction) {
        return true;
    }

    return false;
}


