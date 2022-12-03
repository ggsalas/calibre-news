<!DOCTYPE html>
<html lang="es">
  <head>
    <title>El Noticioso</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="style.css" rel="stylesheet">
  </head>
  <body>
    <h1>El Noticioso</h1>

    <script>
      function getNews() {
        const files = document.querySelectorAll('a')
        const origin = document.location.origin;

        files.forEach((file, i) => {
          const name = file.getAttribute('data-name')
          const url = `${origin}/${name}`

if (i === 1) {
          setTimeout(() => {
            console.log(file);
            file.click()
          }, 2000 * i);
}
        })
      }
    </script>

    <button onclick="getNews()">Descargar</button>
  
    <ul class="list">
    <?php
    foreach(glob('./*.*') as $file) {
      $stat = stat($file);
      $size = $stat['size'];
      $sizeFormat = number_format($size / 1000 / 1000, 1, '.', '') . " Mb";
      $ext = pathinfo($file, PATHINFO_EXTENSION);
      $date = filemtime($file);
      $dateFormat = date("j M", $date);
      $name = basename($file, ".mobi");
      /* $fileName = basename($file); */
      
      if ($ext == "mobi") {
    ?>
        <li class="item">
          <a href="<?php echo $file ?>" class="link" >
            <?php echo $name .  " / " . $dateFormat . " (" . $sizeFormat  . ") " ?>
          </a>
        </li>
    <?php }} ?>
    </ul>
  </body>
</html>
