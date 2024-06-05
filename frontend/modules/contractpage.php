<div class="contractbody">
<hr border="2">
    <div class="title">
       <p style="opacity: 0.66">PAGE QUẢN LÝ</p>
       <h1 class="title1">THE BEST THING </h1>
    </div>
    
    <div class="info">
       <p> <ion-icon name="location-outline"></ion-icon> At: 220 Điện Biên Phủ - P.ĐaKao - Quận 1 - TP.HCM </p>
       <p> <ion-icon name="call-outline"></ion-icon> Hotline: 1900 1234 </p>
       <p style ="padding-left: 20px"> CSKH: 028345622 - 028425674</p>
       <p> <ion-icon name="mail-outline"></ion-icon> Email: thebestthing@manager.com </p>
       <p> <ion-icon name="logo-facebook"></ion-icon> Fanpage: The Best Thing </p>
    </div>
    
    <div class="wave-border"></div>
    <div class="container">
        <div class="form-container">
           <h1 style="text-align:center">Liên hệ </h1>
        <form method="POST">
            <table class="table">
                <tr>
                    <td>
                        <input type="text" name="firstname" placeholder="Họ" class="form-control">
                    </td>
                    <td>
                        <input type="text" name="lastname" placeholder="Tên" class="form-control">
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="email" placeholder="Email" class="form-control">
                    </td>
                    <td>
                        <input type="text" name="phone" placeholder="Số điện thoại" class="form-control">
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <textarea placeholder="Nội dung" name="note" class="form-control"></textarea>
                    </td>
                </tr>
                <tr style="text-align: center">
                    <td colspan="2">
                        <input type="submit" name="sent" class="btn btn-primary">
                    </td>
                </tr>
            </table>
        </form>
        </div>
    </div>
    <?php
    include("../../Database/Config/config.php");
    if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $firstname= $_POST['firstname'];
    $lastname = $_POST['lastname'];
    $email = $_POST['email'];
    $phone_number = $_POST['phone'];
    $note = $_POST['note'];

    if(isset($_POST['sent']))
   {   
     $sql_add = "INSERT INTO feedback(firstname,lastname,email,phone_number,note) VALUES ('$firstname','$lastname','$email',$phone_number,'$note')";
     mysqli_query($mysqli,$sql_add);
   }   
    mysqli_close($mysqli);
  }
?>
</div >