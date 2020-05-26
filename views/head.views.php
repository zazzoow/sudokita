<!DOCTYPE html>

<html lang = fr>
    <head>
      <link rel="stylesheet" href="css/normalize.css">
      <link rel="stylesheet" href="css/style.css">
    </head>
    <body>
      <header>
        <nav class = "banner">
            <a href ="/sudokita"><img class="font" src="image/logo.jpg" alt="Kiwi standing on oval" width = 100%></a>
            <?php if(!empty($_POST)) : ?>
              <?php { echo '<a class= "welcome">' . $post . '</a>'; }; ?>
            <?php else : ?>
              <?php { echo '<a class= "welcome">Bienvenue</a>'; } ; ?>
            <?php endif ?>
        </nav>
      </header>
