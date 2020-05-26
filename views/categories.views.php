<?php include'views/head.views.php'; ?>

    <main>
      <div id="lol">
        <?php if($img) : ?>
          <?php foreach ($img as $key => $value) : ?>
                   <?php  { echo '<p><embed class="comics" src = '.$value->url.' type = "application/pdf" alt = "comics"></p>'; };  ?>
         <?php endforeach ?>
        <?php endif ?>
      </div>
    </main>

<?php require 'views/foot.views.php'; ?>
