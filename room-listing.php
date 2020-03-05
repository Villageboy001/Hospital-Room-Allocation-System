<?php 
session_start();
include('includes/config.php');
error_reporting(0);
?>

<!DOCTYPE HTML>
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<title>Olanrewaju Rahamat Tractor Leasing System</title>
<!--Bootstrap -->
<link rel="stylesheet" href="assets/css/bootstrap.min.css" type="text/css">
<!--Custome Style -->
<link rel="stylesheet" href="assets/css/style.css" type="text/css">
<!--OWL Carousel slider-->
<link rel="stylesheet" href="assets/css/owl.carousel.css" type="text/css">
<link rel="stylesheet" href="assets/css/owl.transitions.css" type="text/css">
<!--slick-slider -->
<link href="assets/css/slick.css" rel="stylesheet">
<!--bootstrap-slider -->
<link href="assets/css/bootstrap-slider.min.css" rel="stylesheet">
<!--FontAwesome Font Style -->
<link href="assets/css/font-awesome.min.css" rel="stylesheet">

       
</head>
<body>


<!--Header--> 
<?php include('includes/header.php');?>
<!-- /Header --> 

<!--Page Header-->
<section class="page-header listing_page">
  <div class="container">
    <div class="page-header_wrap">
      <div class="page-heading">
        <h1>Available Room Listing</h1>
      </div>
      <ul class="coustom-breadcrumb">
        <li><a href="#">Home</a></li>
        <li>Available Room Listing</li>
      </ul>
    </div>
  </div>
  <!-- Dark Overlay-->
  <div class="dark-overlay"></div>
</section>
<!-- /Page Header--> 

<!--Listing-->
<section class="listing-page">
  <div class="container">
    <div class="row">
      <div class="col-md-9 col-md-push-3">
        <div class="result-sorting-wrapper">
          <div class="sorting-count">
<?php 

$sql = "SELECT DISTINCT bed.*,room.Room as bid, bedding.Status as status from bed 
INNER join room on room.ID = bed.Bed_Id 
INNER JOIN bedding ON bedding.room = room.ID WHERE status = '1' OR status = '8' ";
// $sql = "SELECT bed.*,tblbrands.BrandName,tblbrands.id as bid  from tblvehicles join tblbrands 
//on tblbrands.id=tblvehicles.VehiclesBrand";

$t = mysqli_query($conn, $sql);

$sq = "SELECT DISTINCT bed.*,room.Room as bid,COUNT(*) as count, bedding.Status as status from bed 
          INNER join room on room.ID = bed.Bed_Id 
    INNER JOIN bedding ON bedding.room = room.ID WHERE status = '1' OR status = '8'";
    $ok = mysqli_query($conn, $sq);
    $re = mysqli_fetch_array($ok);
?>

<p><span><h3 style = "color:red"><?php echo htmlentities($re['count']);?></h3> Rooms Available for Listing</span></p>
</div>
</div>


<?php
  while($result = mysqli_fetch_array($t))
{  
  $count += $count;
  ?>
        <div class="product-listing-m gray-bg">
          <div class="product-listing-img"><img src="admin/img/vehicleimages/<?php echo htmlentities($result['image1']);?>" class="img-responsive" alt="Image" /> </a> 
          </div>
          <div class="product-listing-content">
            <h5><a href="room-details.php?vhid=<?php echo htmlentities($result['Bed_No']);?>"
            ><?php echo htmlentities($result['bid']);?> , <?php echo htmlentities($result['Bed_Name']);?></a></h5>
           <ul>
           <i class="list-price">Description :</i> <p > <?php echo htmlentities($result['description']);?> </p>
            
              <li><i class="fa fa-user" aria-hidden="true"></i><?php echo htmlentities($result['capacity']);?> Beds</li>
              <li><i class="fa fa-calendar" aria-hidden="true"></i><?php echo htmlentities($result['ModelYear']);?> model</li>
              <li><i class="fa fa-car" aria-hidden="true"></i><?php echo htmlentities($result['FuelType']);?></li>
            </ul>
           
          </div>
        </div>
        
      <?php 
    } ?>
         </div>
     
              
            </ul>
          </div>
        </div>
      </aside>
    
    </div>
  </div>
</section>



<?php include('includes/footer.php');?>


<!--Back to top-->
<div id="back-top" class="back-top"> <a href="#top"><i class="fa fa-angle-up" aria-hidden="true"></i> </a> </div>
<!--/Back to top--> 

<!--Login-Form -->
<?php //include('includes/login.php');?>
<!--/Login-Form --> 

<!--Register-Form -->
<?php //include('includes/registration.php');?>

<!--/Register-Form --> 

<!--Forgot-password-Form -->
<?php include('includes/forgotpassword.php');?>

<!-- Scripts --> 
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/bootstrap.min.js"></script> 
<script src="assets/js/interface.js"></script> 
<!--Switcher-->
<script src="assets/switcher/js/switcher.js"></script>
<!--bootstrap-slider-JS--> 
<script src="assets/js/bootstrap-slider.min.js"></script> 
<!--Slider-JS--> 
<script src="assets/js/slick.min.js"></script> 
<script src="assets/js/owl.carousel.min.js"></script>

</body>
</html>
