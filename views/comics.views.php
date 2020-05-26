<?php include'views/head.views.php'; ?>

<header>
  <nav class = "banner">
      <a><img class="font" src="image/logo.jpg" alt="Kiwi standing on oval" width = 100%></a>
      <?php {echo '<a class= "welcome">' . $post . '</a>'; }; ?>
  </nav>
</header>
<main>
      <form id = "lol" method = "POST" action = "<?php echo 'Categories'; ?>">
             <?php  { echo '<p><img src =' . $image . ' width = "500" height = "375" ></p>'; };  ?>
             <?php { echo '<p><input name = ' . $post . ' type = "submit" value = "lire en ligne"></p>'; }; ?>
      </form>
</main>

<?php require 'views/foot.views.php'; ?>
