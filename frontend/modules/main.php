<?php
    if(isset($_GET['action'])&&isset($_GET['query'])){
        $action=$_GET['action'];
        $query=$_GET['query'];
    }
    else 
    {
        $action='';
        $query='';
    }

    if( $action=='homepage' && $query=='none')
    {
        include("homepage.php");

    }
    else if( $action=='aboutuspage' && $query=='none')
    {
        include("aboutuspage.php");
    }
    else if( $action=='contractpage' && $query=='none')
    {
        include("contractpage.php");
    }
    else if( $action=='menupage')
    {   
        if( $query=='none'){
            include("../modules/menupage.php");
        }
    }
    else if( $action=='meeting')
    {   
        if( $query=='none') include("meeting.php");
    }
    else if( $action=='resource')
    {   
        if( $query=='none') include("resource.php");
    }
    else if( $action=='department')
    {   
        if( $query=='none') include("department.php");
    }
    else if( $action=='tintucpage')
    {
        if($query=='none') include("tintucpage.php");
    }
    else if( $action=='content')
    {
        if($query=='none') include("content.php");
    }
    else if( $action=='search')
    {
        if($query=='none') include("searchpage.php");
    }
    else if( $action=='profile')
    {
        if($query=='none') include("profilepage.php");
    }
    else if( $action=='thankyou')
    {
        if($query=='none') include("thankyoupage.php");
    }
    else  if( $action=='quanlytaikhoan' && $query=='none')
    {
        include("../modules/QuanLyUser/quanlyuser.php");
        include("../modules/QuanLyUser/list.php");
    }
    else if( $action=='quanlytaikhoan' && $query=='update') 
    include("../modules/QuanLyUser/update.php");
    else  if( $action=='quanlytintuc' && $query=='none')
    {
        include("../modules/QuanLyTinTuc/quanlytintuc.php");
        include("../modules/QuanLyTinTuc/list.php");
    }
    else if( $action=='quanlytintuc' && $query=='update') 
    include("../modules/QuanLyTinTuc/update.php");
    else if( $action=='quanlytintuc' && $query=='content') 
    include("../modules/QuanLyTinTuc/noidung.php");
    else include("homepage.php");   

?>

 