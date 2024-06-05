<?php
include("config.php");
$customerId = $_GET['user_id'];
$sql = "SELECT * FROM user WHERE user_id = $customerId";
$row = $mysqli->query($sql);
$result = mysqli_fetch_array($row)
?>
  <div class="container" >
    <h1 class="text-center">Thông Tin Chi Tiết Nhân Viên</h1>
    <table border="0" >
    <tr>
        <td><label class="form-label">Email:</label></td>
        <td><div class="user-info"><?php echo $result['email']; ?></div></td>
    </tr>
    <tr>
        <td><label class="form-label">Họ và tên:</label></td>
        <td><div class="user-info"><?php echo $result['full_name']; ?></div></td>
    </tr>
    <tr>
        <td><label class="form-label">Số điện thoại:</label></td>
        <td><div class="user-info"><?php echo $result['phone_number']; ?></div></td>
    </tr>
    <tr>
        <td><label class="form-label">Địa chỉ:</label></td>
        <td><div class="user-info"><?php echo $result['address']; ?></div></td>
    </tr>
    </table>
  </div>
  <style>
    table td{
      padding: 30px;
      font-size: 30px;
    }
  </style>