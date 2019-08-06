<?php include_once"include/header.php" ?>
<?php include_once"include/db.php" ?>
<body id="page-top">

  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
   <?php include_once"include/sidebar.php" ?>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
          <?php include_once"include/navbar.php" ?>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="cosntainer-fluid">

          <!-- Page Heading -->
          <h1 class="h3 mb-4 text-gray-800">Update Menu Set!!</h1>

          <?php 

            if (isset($_GET['edit'])) {
              $edit_id = $_GET['edit'];
              $sql = "SELECT * FROM add_menu WHERE item_id=$edit_id";
              $query = mysqli_query($connection,$sql);
              while ($row=mysqli_fetch_assoc($query)) {
                $item_id = $row['item_id'];
                $item_name = $row['item_name'];
                $item_price =  $row['item_price'];
                $item_image = $row['item_image'];
              }
            }

            if (isset($_POST['update'])) {
                echo $_POST['edit_id'];
                echo $_POST['item_name'];
                echo $_POST['item_price'];
                echo $_FILES['item_image']['name'];
                echo $_FILES['item_image']['tmp_name'];
            }

           ?>

  <div class="container">
        <div class="card">
          <div class="card-body">
            <form action="" method="POST" enctype="multipart/form-data">
              <div class="row">
                  <input type="hidden" name="edit_id" value="<?php echo $item_id; ?>">            
                  <div class="col-md-6 offset-3">
                    <div class="form-group">
                      <label>Item Name:</label>
                      <input type="item_name" name="item_name" placeholder="Enter your Item Name" class="form-control" value="<?php echo $item_name; ?>">
                    </div>
                  </div>
                  <div class="col-md-6 offset-3">
                    <div class="form-group">
                      <label>Item Price:</label>
                      <input type="item_price" name="item_price" placeholder="Enter your Item Price" class="form-control" value="<?php echo $item_price; ?>">
                    </div>
                  </div>
                    <div class="col-md-6 offset-3">
                    <div class="form-group">
                      <label>Upload Photo</label><br>
                      <img src="img/menu/<?php echo $item_image; ?>" alt="" class="img-fluid" style="width:25%;height: 100px;"><br><br>
                      <input type="file" name="item_image" class="">
                    </div>
                  </div>
                  <div class="col-md-6 offset-3">
                    <div class="form-group">
                     <button type="submit" name="update" class="btn btn-primary">Update Menu</button>
                    </div>
                  </div>
                </div> 
              </form>
            </div>
           </div>
          </div>
            <br>

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->


      <!-- Footer -->
        <?php include_once"include/footer.php"?>
      