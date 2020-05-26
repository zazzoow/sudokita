<?php include'views/head.views.php'; ?>

<header>
  <nav class = "banner">
      <a><img class="font" src="image/logo.jpg" alt="Kiwi standing on oval" width = 100%></a>
      <?php {echo '<a class= "welcome">' . $post . '</a>'; }; ?>
  </nav>
</header>
    <main>
        <?php if($img) : ?>
          <?php foreach ($img as $key => $value) : ?>
                   <?php  { echo '<p><embed class="comics" src = '.$value->url.' type = "application/pdf" alt = "comics></p>'; };  ?>
         <?php endforeach ?>
        <?php endif ?>
    </main>


<?php require 'views/foot.views.php'; ?>
