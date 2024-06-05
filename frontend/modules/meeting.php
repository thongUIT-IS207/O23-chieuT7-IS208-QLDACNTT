<?php
    include("../../Database/Config/config.php");
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
  $sql2="SELECT * FROM product ,category where product.category_id=category.category_id and category.category_id=$id LIMIT $begin,4" ;
  $result2 = mysqli_query($mysqli,$sql2);
 }
else 
{
  $sql2="SELECT * FROM product ,category where product.category_id=category.category_id LIMIT $begin,4" ;
  $result2 = mysqli_query($mysqli,$sql2);
}
    ?>
<div class="menubody">
   <div class="wrapper">
   <h1 >Danh Sách Phòng Họp</h1>
    <div id="main">
      <div class="maincontent">
        <table class="table table-bordered table-striped mt-3" id = "table">
        <thead>
          <tr>
            <th>Thứ tự</th>
            <th>Tên cuộc họp </th>
            <th>Ngày họp </th>
            <th>Thơì gian bắt đầu</th>
            <th>thời gian kết thúc</th>
            <th>phòng họp</th>
            <th>Mô tả cuộc họp</th>
            <th>mã cuộc họp</th>
            <th>Xóa</th>
            <th>Sửa</th>
          </tr>
        </thead>
        <tbody>
          <?php
          $i = 0;
          while ($row = mysqli_fetch_array($result2)) {
            $i++;
          ?>
            <tr>
              <td class="fisrt"><?php echo $i ?></td>
              <td><?php echo $row['title'] ?></td>
              <td><?php echo $row['name'] ?></td>
              <td><img style="width: 100px" src="../../Database/Images/<?php echo $row['thumbnail'] ?> " alt=""></td>
              <td><?php echo $row['date'] ?></td>
              <td><?php echo $row['description'] ?></td>
              <td><?php echo $row['created_at'] ?></td>
              <td><?php echo $row['update_at'] ?></td>
              <td><a onclick="return del('<?php echo $row['title'] ?>')" href="QuanLyCuocHop/delete.php?query=delete&product_id=<?php echo $row['product_id'] ?>"class="btn btn-danger">Xóa</a></td>
              <td class="last"><a href="?action=quanlycuochop&query=update&product_id=<?php echo $row['product_id'] ?>&category_id=<?php echo $row['category_id'] ?>"class="btn btn-primary">Sửa</a></td>
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
   <a href="index.php?action=meeting&query=none&<?php if(isset($_GET['id'])) echo 'id='.$id.'&' ?>page=<?php echo $i ?>" <?php if($i==$page) echo 'class="page"'; else echo 'class="page active"';?> ><?php echo $i ?></a>
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
  margin-bottom: 10px;
  margin-top: 25px;
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