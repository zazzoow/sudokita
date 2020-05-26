<?php include'views/head.views.php'; ?>

<main>
      <form id = "lol" method = "POST" action = "<?php echo 'Categories'; ?>">
             <?php  { echo '<p><img src =' . $image . ' width = "500" height = "800" ></p>'; };  ?>
             <?php { echo '<p><input class = "lel" name = ' . $post . ' type = "submit" value = "lire en ligne"></p>'; }; ?>
      </form>
</main>

<?php require 'views/foot.views.php'; ?>
