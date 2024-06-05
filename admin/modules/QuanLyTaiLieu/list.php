<?php
include("config.php");
$sql="SELECT * FROM resource";
$result = mysqli_query($mysqli,$sql);
?>

  <div class="container" >
    <h1 class="text-center">Danh sách tài liệu</h1>
    <table class="table table-bordered table-striped mt-3">
      <thead>
        <tr>
          <th>Thứ tự</th>
          <th>Tiêu đề </th>
          <th>Ảnh tiêu đề</th>
          <th>Ngày đăng lên</th>
          <th>Xóa</th>
          <th>Sửa</th>
          <th>View noi dung</th>
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
            <td><?php echo $row['title'] ?></td>
            <td><img style="width: 100px" src="../../Database/Images/<?php echo $row['anh']?>" height="100px" width="100px" alt=""></td>
            <td><?php echo $row['publish_date'] ?></td>
            <td><a onclick="return del('<?php echo $row['title'] ?>')" href="QuanLyTaiLieu/delete.php?query=delete&tailieu_id=<?php echo $row['tintuc_id'] ?>"class="btn btn-danger">Xóa</a></td>
            <td><a href="?action=quanlytailieu&query=update&tailieuc_id=<?php echo $row['tintuc_id'] ?>"class="btn btn-primary">Sửa</a></td>
            <td><a href="?action=quanlytailieu&query=content&tailieu_id=<?php echo $row['tintuc_id'] ?>"class="btn btn-primary">View</a></td>
          </tr>
        <?php
        }
        ?>
      </tbody>
    </table>
  </div>
  <script>
    function del(name) {
      return confirm("Bạn có chắc chắn muốn xóa tin tức: " + name + " không?");
    }
  </script>