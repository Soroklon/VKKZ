<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
<!--    <meta name="viewport" content="width=device-width, initial-scale=1">    -->
    <meta name="description" content="ReportForm">
    <meta name="author" content="SorSol">
    <meta name="generator" content="VSCode">
    <title>Reports from SQLIte base</title>
    <!-- Bootstrap core CSS -->
    <link href="assets/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        .bd-placeholder-img {
            font-size: 1.125rem;
            text-anchor: middle;
            -webkit-user-select: none;
            -moz-user-select: none;
            user-select: none;
        }

        @media (min-width: 768px) {
            .bd-placeholder-img-lg {
                font-size: 3.5rem;
            }
        }
        .nav-link {
            display: block;
            padding: .5rem 1rem;
            color: #ffffff;
            text-decoration: none;
            transition: color .15s ease-in-out,background-color .15s ease-in-out,border-color .15s ease-in-out
        }
        #box {
      position: fixed;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;
      z-index: 999;
    }
    /* в нём находится полупрозрачный экран, на 20px меньше */

    #box form {
      position: absolute;
      top: 0;
      bottom: 0;
      right: 0;
      left: 0;
      /* центрирование */

      margin: auto;
      margin-top: 0.2cm;
      /* центрирование */

      height: 150px;
      width: 350px;
      border: 1px solid black;
      background-color:#f8f9fa!important;
      color:#212529!important;
      padding: 5px 5px 5px 55px;
    }
    </style>
    
    <!-- Custom styles for this template -->

    <link href="assets/dist/css/sidebars.css" rel="stylesheet">
    </head>
    <body>
        <main>
            <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 100vw; height: 100vh">
                <div id="box">  
                <form action="">
%if ok:
                    <p>Успешная авторизация!</p>
                    <p>Создана новая база данных.</p>
%else:
                    <p>Авторизация отклонена.</p>
                    <p>Неверный логин/пароль.</p>
%end
                    <input type="button" value="Ок" onclick="window.location='http://localhost:8080/home'; return false;">
                  </form>
                </div>
            </div>
        </main>
        <!-- Animation and magic -->
        <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/dist/js/sidebars.js"></script>
        <script src="assets/dist/js/myjs.js"></script>
    </body>
</html>