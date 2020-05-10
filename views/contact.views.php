<?php require 'views/head.views.php'; ?>

<html lang = fr>
    <head></head>
    <body>
        <h1>contact</h1>
        <form method="POST">
          <input type="name" placeholder="name" name = "name">
          <input type="name" placeholder="firstname" name = "firstname">
          <input type="name" placeholder="sujet" name = "subject">
          <input type="email" placeholder="sujet" name = "email">
          <input type="name" placeholder="sujet" name = "phoneNUM">
          <textarea name="message" rows="4" cols="100">
          </textarea>
          <input type="submit" value="Submit">
        </form>
    </body>
</html>

<?php require 'views/foot.views.php'; ?>
