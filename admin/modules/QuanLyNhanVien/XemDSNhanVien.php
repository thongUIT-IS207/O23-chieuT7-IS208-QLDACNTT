<?php
include("config.php");
if(isset($_POST['search_key']))
{
 $searchkey=$_POST['search_key'];
$sql ="SELECT * FROM user where full_name like '%$searchkey%' or email like '%$searchkey%'";
}
else $sql = "SELECT * FROM employees INNER JOIN department ON employees.department_id = department.department_id";

$result = mysqli_query($mysqli,$sql);
?>
  <div class="container" >
  <form style="float: right;" method="POST" action="">
    <div class="input-group">
        <input type="text" class="form-control" placeholder="Nhập email hoặc tên cần tìm" style="width: 300px;" name="search_key" id="typed_email" >
        <button class="btn btn-primary" type="submit" name="search">
            <i class="fas fa-search"></i> Tìm Nhân Viên
        </button>
    </div>
</form>
    <h1 class="text-center">Danh sách Nhân Viên</h1>
    <table class="table table-bordered table-striped mt-3">
      <thead>
        <tr>
          <th>Mã Nhân Viên</th>
          <th>Tên Nhân Viên</th>
          <th>Email</th>
          <th>Điện thoại</th>
          <th>Địa chỉ</th>
          <th>Thông Tin Chi Tiết</th>
          <th>Xóa</th>
          <th>Sửa</th>
        </tr>
      </thead>
      <tbody>
        <?php
        $i = 0;
        while ($row = mysqli_fetch_array($result)) {
          $i++;
        ?>
          <tr>
            <td><?php echo $row['user_id'] ?></td>
            <td><?php echo $row['full_name'] ?></td>
            <td><?php echo $row['email'] ?></td>
            <td><?php echo $row['phone_number'] ?></td>
            <td><?php echo $row['address'] ?></td>
            <td><?php echo $row['department_name'] ?></td>
            <td><a href="?action=quanlynhanvien&query=select&user_id=<?php echo $row['user_id'] ?>"class="btn btn-primary">Xem</a></td>
            <td><a onclick="return del('<?php echo $row['full_name'] ?>')" href="QuanLyNhanVien/delete.php?query=delete&user_id=<?php echo $row['user_id'] ?>"class="btn btn-danger">Xóa</a></td>
            <td><a href="?action=quanlynhanvien&query=update&user_id=<?php echo $row['user_id'] ?>&role_id=<?php echo $row['role_id']?>"class="btn btn-primary">Sửa</a></td>
          </tr>
        <?php
        }
        ?>
      </tbody>
    </table>
  </div>