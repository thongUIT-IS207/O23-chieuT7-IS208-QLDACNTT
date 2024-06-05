<?php
include("config.php");
$resource_id = $_GET['resource_id'];
$sql_select = "SELECT * FROM resource WHERE resource_id=$resource_id";
$sql = mysqli_query($mysqli, $sql_select);
?>
<div>
    <?php while ($row = mysqli_fetch_array($sql)) { ?>
        <h2 class="text-center"><?php echo $row['title'] ?></h2>
        <?php echo $row['content'] ?>
    <?php } ?>
    <a href="?action=quanlytintuc&query=none"class="btn btn-primary">Tro ve</a>
</div>