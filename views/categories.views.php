<?php include'views/head.views.php'; ?>

<html lang = fr>
    <head></head>
    <body>
        <h1>bad time</h1>
        <a href ="Categories">yare yare daze</a>
        <?php if($img) : ?>
          <?php foreach ($img as $key => $value) : ?>
                   <?php  { echo '<p><embed src = '.$value->name.' type = "application/pdf" alt = "comics" width="500" height="375"></p>'; };  ?>
         <?php endforeach ?>
        <?php endif ?>
    </body>
</html>

<?php require 'views/foot.views.php'; ?>
