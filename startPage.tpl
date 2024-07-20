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
    </style>
    
    <!-- Custom styles for this template -->

    <link href="assets/dist/css/sidebars.css" rel="stylesheet">
    </head>
    <body>
        <main>
            <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 1510px; height: 100vh">
                <span class="fs-2">
                  Выберите параметры запроса
                  <div id="loading" class="spinner-border text-secondary" role="status" style="visibility: hidden">
                    <span class="visually-hidden"></span>
                  </div>
                </span>
%if not ans:
                <span class="fs-4" style="margin-left: 2cm; margin-top: 3cm; color:red; font-weight:bolder;">Подключение к базе данных отсутствует!</span>
                <button type="button" id="createBtn" class="btn btn-dark" style="width: 3cm; align-self:flex-start; margin-top: 1cm;" onclick="loging();">Создать БД</button>
%end
            </div>
            
        </main>
        <!-- Animation and magic -->
        <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/dist/js/sidebars.js"></script>
        <script src="assets/dist/js/myjs.js"></script>
    </body>
 

</html>