<button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">Thêm Phòng Ban</button> 

<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
<div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="container">
        <h2 class="text-center">Thêm Phòng Ban</h2>
        <table class="table table-bordered">
            <form method="POST" action="../modules/QuanLyPhongBan/insert.php">
                <tr>
                    <td>Nhập tên Phòng Ban</td>
                    <td><input type="text" name="name" class="form-control" require></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" name="insert" value="Thêm tên Phòng Ban" class="btn btn-primary">
                    </td>
                </tr>
            </form>
        </table>
    </div>
   </div>
</div>
</div>