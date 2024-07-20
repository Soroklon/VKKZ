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
            <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 1510px; height: 100vh;">
              <table style="margin-top: 1.5cm; margin-left: 2cm;">
                <tr>
                  <th>
                    <img src="assets/dist/img/errorImage.png">
                  </th>
                  <th>
                    <p>
                      <span class="fs-1" style="font-weight:bolder;">Упс, что-то пошло не так...</span>
                      <br>
                      <span class="fs-3">Вы попали на страницу ошибки, но не всё так плохо</span>
                    </p>
                  </th>
                </tr>
              </table>
              <hr style="margin-top: 1.5cm">
              <span class="fs-5" style="font-weight:bolder">Ошибка:</span>
              <span class="fs-5">{{er}}</span>
              <hr>
              <p>
                <span class="fs-4">Возможные причины возникновения ошибки:</span>
                <ul class="fs-5" type="disc">
                  <li>Был задан запрос без параметров</li>
                  <li>Произошёл сбой при запросе в базу данных</li>
                  <li>Иные причины</li>
                </ul>
                <span class="fs-5" style="font-weight:bolder;">Попробуйте обновить страницу и повторить запрос.</span>
                <span class="fs-5">В случае повторения ошибки, обратитесь к системному администратору.</span>
                <span class="fs-5" style="margin-top: 0.5cm; margin-left: 1cm">Так же, вы можете обратиться в <a href="https://advensys.pro" target="_blank">нашу компанию</a>, или напрямую к специалистам:</span>
                <ul type="disc" style="margin-left: 1cm">
                    <li>
                        <span class="fs-5" style="font-weight:bolder">Сологуб Егор Николаевич, <span class="fs-5" style="font-weight:normal">ведущий программист</span></span>
                        <br>
                        <span class="fs-5">тел. +7(913)-112-1803</span>
                    </li>
                    <li>
                        <span class="fs-5" style="font-weight:bolder">Сороквашин Кирилл Викторович, <span class="fs-5" style="font-weight:normal">ведущий программист</span></span>
                        <br>
                        <span class="fs-5">тел. +7(913)-848-1878</span>
                    </li>
                </ul>
              </p>
              
            </div>
        </main>
        <!-- Animation and magic -->
        <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
        <script src="assets/dist/js/sidebars.js"></script>
        <script src="assets/dist/js/myjs.js"></script>
    </body>
 

</html>