<?php include'views/head.views.php'; ?>

<main>
      <div class ="introduce">
             <?php  { echo '<img class="imgComics" src =' . $image . '>'; };  ?>
      </div>
      <div class ="description">
         <?php { echo '<h2>Resumé de '. $post .'</h2>'; }; ?>
          <?php { echo '<p class = "describe">' . $text .'</p>'; }; ?>
          <form method = "POST" action = "<?php echo 'Categories'; ?>">
                   <?php { echo '<p><input class = "lel" name = ' . $post . ' type = "submit" value = "lire en ligne"></p>'; }; ?>
          </form>
      </div>

</main>

<?php require 'views/foot.views.php'; ?>
