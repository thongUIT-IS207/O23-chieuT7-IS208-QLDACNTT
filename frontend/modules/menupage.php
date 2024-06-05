<?php
    include("../../Database/Config/config.php");
    $sql="select * from category";
  $result= mysqli_query($mysqli,$sql);
/* Kiem tra trang */
if(isset($_GET['page'])){
  $page=$_GET['page'];
  }
  else 
  {
    $page='';
  }
  if ($page ==''||$page=='1')
  {
    $begin=0;
  }
  else
  {
    $begin=($page*4)-4;
  }
  
if(isset($_GET['id'])){ 
  
  $id=$_GET['id'];
  $sql2="SELECT user.*, role.name
  FROM user
  INNER JOIN role ON user.role_id = role.role_id LIMIT $begin,4" ;
  $result2 = mysqli_query($mysqli,$sql2);
 }
else 
{
  $sql2="SELECT user.*, role.name
  FROM user
  INNER JOIN role ON user.role_id = role.role_id LIMIT $begin,4" ;
  $result2 = mysqli_query($mysqli,$sql2);
}
    ?>
<div class="menubody">
   <div class="wrapper">
   <h1 >Danh Sách Nhân Viên</h1>
   <div id="insert-button">
    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Thêm sản phẩm</button>
   </div>
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
    <div class="modal-content">
<table class="table table-bordered">
  <form method="POST" action="../modules/QuanLySanPham/insert.php" enctype="multipart/form-data">
    <tr>
      <td>Nhập tiêu đề sản phẩm</td>
      <td><input type="text" name="title"></td>
    </tr>
    <tr>
      <td>Nhập loại sản phẩm</td>
      <td>
        <select name="name" class="form-control">
          <?php while($row= mysqli_fetch_array($result)) { ?>
            <option value="<?php echo $row['category_id'] ?>" name="name"><?php echo $row['name'] ?></option>
          <?php } ?>
        </select>
      </td>
    </tr>
    <tr>
      <td>Nhập link hình ảnh</td>
      <td><input type="file" name="thumbnail" require></td>
    </tr>
    <tr>
      <td>Nhập giá sản phẩm</td>
      <td><input type="text" name="price"></td>
    </tr>
    <tr>
      <td>Nhập giá khuyến mãi</td>
      <td><input type="text" name="discount_price"></td>
    </tr>
      <tr>
        <td>Nhập mô tả sản phẩm</td>
        <td><textarea name="description" rows="10" cols="70"></textarea></td>
      </tr>
      <tr>
      <td colspan="2">
        <input type="submit" name="insert" value="Thêm sản phẩm" class="btn btn-primary">
      </td>
    </tr>
  </form>
</table>
    </div>
</div>
</div>
  <div class = "main-content">
    <table class="table table-bordered table-striped mt-3" id = "table">
      <thead>
        <tr>
          <th>Thứ tự</th>
          <th>Họ tên</th>
          <th>Email</th>
          <th>Số điện thoại</th>
          <th>Địa chỉ</th>
          <th>Quyền</th>
          <th>Ngày tạo </th>
          <th>Ngày cập nhật gần nhất </th>
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
            <td><?php echo $i ?></td>
            <td><?php echo $row['full_name'] ?></td>
            <td><?php echo $row['email'] ?></td>
            <td><?php echo $row['phone_number'] ?></td>
            <td><?php echo $row['address'] ?></td>
            <td><?php 
                    echo $row['name']
              ?>
            </td>
            <td><?php echo $row['create_at'] ?></td>
            <td><?php echo $row['update_at'] ?></td>
            <td><a onclick="return del('<?php echo $row['full_name'] ?>')" href="QuanLyUser/delete.php?query=delete&user_id=<?php echo $row['user_id'] ?>"class="btn btn-danger">Xóa</a></td>
            <td><a href="?action=quanlytaikhoan&query=update&user_id=<?php echo $row['user_id'] ?>&role_id=<?php echo $row['role_id']?>"class="btn btn-primary">Sửa</a></td>
          </tr>
        <?php
        }
        ?>
      </tbody>
    </table>
        </div>
        <div class="clear">
        </div>
    </div>
</div>
    <!-- đếm số trang có thể chia đc  -->
    <?php if(isset($_GET['id']))
  {
  $sql_trang= mysqli_query($mysqli,"SELECT * FROM product ,category where product.category_id=category.category_id and category.category_id=$id");
  $row_count = mysqli_num_rows($sql_trang);
  $trang =ceil($row_count/4);
  }
  else 
  {
    $sql_trang= mysqli_query($mysqli,"SELECT * FROM  product");
    $row_count = mysqli_num_rows($sql_trang);
    $trang =ceil($row_count/4);
  }
   ?> 
    <!-- Thuc hien viec chia trang -->
   <div class="pagination">
  <?php 
    for ($i=1;$i<=$trang;$i++)
    {
    ?>
   <a href="index.php?action=menupage&query=none&<?php if(isset($_GET['id'])) echo 'id='.$id.'&' ?>page=<?php echo $i ?>" <?php if($i==$page) echo 'class="page"'; else echo 'class="page active"';?> ><?php echo $i ?></a>
    <?php
    }
    ?>
    </div>
   </div>
   <style>
    .pagination {
  display:flex;
  justify-content: center;
  margin-right: auto;
  margin-bottom: 15px;
  margin-top: 15px;
}

.page {
  padding: 8px 12px;
  margin: 0 4px;
  background-color: #FFE3BB;
  color: #663300;
  text-decoration: none;
  border-radius: 4px;
  
}

.page:hover {
  background-color: #FFE3BB;
  font-style: oblique;
}

.page.active {
  background-color:#FAEED1;
  
}

    </style>

</div>
<script>
    function del(name) {
      return confirm("Bạn có chắc chắn muốn xóa sản phẩm: " + name + " không?");
    }
</script>