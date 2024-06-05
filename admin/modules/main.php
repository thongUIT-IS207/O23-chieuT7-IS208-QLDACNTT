
<div class="content_right">
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
    if( $action=='quanlydanhmuc' && $query=='none')
    {
        include("../modules/QuanLyDanhMuc/quanlydanhmuc.php");
        include("../modules/QuanLyDanhMuc/list.php");
    }
    else if( $action=='quanlydanhmucsanpham' && $query=='update') 
        include("../modules/QuanLyDanhMucSP/update.php");
    else if( $action=='quanlyphongban' && $query=='none')
    {
        include("../modules/QuanLyPhongBan/quanlyPhongBan.php");
        include("../modules/QuanLyPhongBan/list.php");
    }
    else if( $action=='quanlyphongban' && $query=='update') 
        include("../modules/QuanLyPhongBan/update.php");
    else  if( $action=='quanlytaikhoan' && $query=='none')
    {
        include("../modules/QuanLyUser/quanlyuser.php");
        include("../modules/QuanLyUser/list.php");
    }
        // else if ($action == 'quanlytaikhoan' && $query == 'search') {
        //     include("../modules/QuanLyUser/quanlyuser.php");
        //     include("../modules/QuanLyUser/search_result.php");
        //     }
    else if( $action=='quanlytaikhoan' && $query=='update') 
    include("../modules/QuanLyUser/update.php");
    else 
    if( $action=='quanlynhanvien' && $query=='none')
    {
        include("../modules/QuanLyNhanVien/quanlynhanvien.php");
        include("../modules/QuanLyNhanVien/XemDSNhanVien.php");
    }else if( $action=='quanlynhanvien' && $query=='update')
    {
        include("../modules/QuanLyNhanVien/update.php");
    }
    else if  ($action=='quanlynhanvien' && $query=='select')
    {
        include("../modules/QuanLyNhanVien/XemThongTinChiTiet.php");
    }
    else  if( $action=='quanlytintuc' && $query=='none')
    {
        include("../modules/QuanLyTinTuc/quanlytintuc.php");
        include("../modules/QuanLyTinTuc/list.php");
    }
    else if( $action=='quanlytintuc' && $query=='update') 
    include("../modules/QuanLyTinTuc/update.php");
    else if( $action=='quanlytintuc' && $query=='content') 
    include("../modules/QuanLyTinTuc/noidung.php");
    else  if( $action=='quanlytailieu' && $query=='none')
    {
        include("../modules/QuanLyTaiLieu/quanlytailieu.php");
        include("../modules/QuanLyTaiLieu/list.php");
    }
    else if( $action=='quanlytailieu' && $query=='update') 
    include("../modules/QuanLyTaiLieu/update.php");
    else include("dashboard.php");
?>
</div>
</section>
 