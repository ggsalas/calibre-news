<!DOCTYPE html>
<html lang="es">
  <head>
    <title>El Noticioso</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="./style.css" rel="stylesheet">

    <!-- Kindle browser require to use very old js. Better with jquery -->
    <script src="https://code.jquery.com/jquery-1.12.4.min.js" integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ=" crossorigin="anonymous"></script>

    <script  type="text/javascript">
      function renderDownloadedFiles() {
        var items = document.getElementsByClassName('item');

        var ls = window.document.getElementById("ls");

        $(".item").map(function() {
          var name = this.getAttribute('data-name');
          var isDownloaded = hasBeenDownloaded(name);

          if (isDownloaded) {
            this.classList.add("item-downloaded");
          } else {
            this.classList.remove("item-downloaded");
          }
        }).get();
      }

      function saveDownloadItem(name) {
        window.localStorage.setItem('__noticioso_' + name, Date.now())

        setTimeout(renderDownloadedFiles, 1000);
      }

      function isToday(dateString) {
        if (!dateString) {
          return false;
        }

        var today = new Date()
        var date = new Date(Number(dateString))

        return date.getDate() == today.getDate() && 
          date.getMonth() == today.getMonth() && 
          date.getFullYear() == today.getFullYear()
      }

      function hasBeenDownloaded(name) {
        var saved = window.localStorage.getItem('__noticioso_' + name)

        return isToday(saved)
      }

      window.onload = function(event) { 
        renderDownloadedFiles();
      }; 
    </script>
  </head>
  <body>
    <?php
    function filterFiles($file, $filter) {
      $date = date("jM", filemtime($file));
      $today = date("jM");
      
      switch ($filter) {
        case "today":
          return $date == $today;
        case "old": 
          return $date != $today;
      }
    }; 

    function todayFilter($file) {
      return filterFiles($file, "today");
    }; 

    function notTodayFilter($file) {
      return filterFiles($file, "old");
    }; 

    $files = glob('./*.*');
    $todayFiles = array_filter($files, "todayFilter");
    $notTodayFiles = array_filter($files, "notTodayFilter");

    function renderFileList($filesArray) {
      ?>
      <div class="list">
      <?php

      foreach($filesArray as $file) {
        $stat = stat($file);
        $size = $stat['size'];
        $sizeFormat = number_format($size / 1000 / 1000, 1, '.', '') . " Mb";
        $ext = pathinfo($file, PATHINFO_EXTENSION);
        $date = filemtime($file);
        $dateFormat = date("j M", $date);
        $name = basename($file, ".mobi");
        
        if ($ext == "mobi") {
          ?>
            <a href="<?php echo $file ?>" 
              class="item" 
              onclick="saveDownloadItem('<?php echo $name ?>')"
              data-name="<?php echo $name ?>"
            >
              <div class="item-title"><?php echo $name ?></div>
              <div class="item-subtitle"><?php echo $dateFormat . " (" . $sizeFormat  . ") " ?></div>
            </a>
          <?php 
        }
      }

      ?>
      </div>
      <?php
    }
    ?>

    <h1>Noticioso de hoy</h1>
    <?php renderFileList($todayFiles) ?>

    <h3>Anteriores</h3>
    <?php renderFileList($notTodayFiles) ?>
  </body>
</html>
