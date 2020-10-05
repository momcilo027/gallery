<?php include("includes/header.php"); ?>
<?php
$page = !empty($_GET['page']) ? (int)$_GET['page'] : 1;
$items_pp = 12;
$items_count = Photo::count_all();

$paginate = new Paginate($page,$items_pp,$items_count);
$sql = "SELECT * FROM photos LIMIT {$items_pp} OFFSET {$paginate->offset()}";
$photos = Photo::find_by_query($sql);


 ?>

        <div class="row">

            <!-- Blog Entries Column -->
            <div class="col-md-12">

              <div class="thumbnails row">
                <?php foreach ($photos as $photo): ?>
                  <div class="col-xs-6 col-md-3">
                    <a class="thumbnail" href="photo.php?id=<?php echo $photo->id; ?>">
                      <img class="img-responsive home_page_photo" src="admin/<?php echo $photo->picture_path(); ?>" alt="">
                    </a>
                  </div>
                <?php endforeach; ?>
              </div>

            </div>




            <!-- Blog Sidebar Widgets Column -->
          </div>

          <div class="row">
            <ul class="pager">

              <?php

              if($paginate->total() > 1){
                if($paginate->has_previous())
                {
                  echo "<li class='previous'><a href='index.php?page={$paginate->previous()}'> Prev </a></li>";
                }

                for($i = 1; $i <= $paginate->total(); $i++){
                  if($i == $paginate->current_page){
                    echo "<li class='active'><a href='index.php?page={$i}'>{$i}</a></li>";
                  } else {
                    echo "<li><a href='index.php?page={$i}'>{$i}</a></li>";
                  }
                }

                if($paginate->has_next()){
                  echo "<li class='next'><a href='index.php?page={$paginate->next()}'> Next </a></li>";
                }
              } else {

              }

               ?>


              </ul>

          </div>


        <!-- /.row -->

        <?php include("includes/footer.php"); ?>
