<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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

      .sticky1 {
        position: sticky;
        top: 0;
        z-index: 999998
      }

      .sticky2 {
        position: sticky;
        top: 0;
        z-index: 999998
      }

      .sticky3 {
        position: sticky;
        top: 0;
        z-index: 999997
      }
      .tooltip {
        z-index: 999999
      }
    </style>
    
    <!-- Custom styles for this template -->
    <link href="assets/dist/css/sidebars.css" rel="stylesheet"> 
  </head>
  <body>
    <main>
      <div class="d-flex flex-column flex-shrink-0 p-3 bg-light" style="width: 1520px; height: 100vh">
        
        <span class="fs-2">
          <table style="width: 1450px; margin-bottom: 10px">
            <tr>
              <th style="width: 50%; text-align: left">
                Результат запроса
                <div id="loading" class="spinner-border text-secondary" role="status" style="visibility: hidden">
                    <span class="visually-hidden"></span>
                </div>
              </th>
              <th style="width:50%; text-align: right;">
                <button type="button" id="hideAllBtn" onclick="expandAll()"  data-bs-toggle="tooltip" data-bs-placement="bottom" title="Развернуть все" class="btn btn-light" style="width: 40px; align-self:flex-start ; margin-bottom: 0cm; margin-right: 0.1cm; align-self: flex-end">
                  <img src="assets/dist/img/expand_lay.png" style="width: 10px; height: 25px; align: center"></button>
                <button type="button" id="hideAllBtn" onclick="hideAll()" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Свернуть все" class="btn btn-light" style="width: 40px; margin-bottom: 0cm; margin-right: 0.1cm; align-self: flex-end">
                  <img src="assets/dist/img/collapse_lay.png" style="width: 10px; height: 25px; align: center"></button>
                <button type="submit" id="DownloadBtn" onclick="window.location = '{{rName}}'" data-bs-toggle="tooltip" data-bs-placement="bottom" title="Сохранить" class="btn btn-light" style="width: 60px; margin-bottom: 0cm; margin-right: 0.1cm; align-self: flex-end">
                  <img src="assets/dist/img/save.png" style="width: 25px; height: 25px; align: center"></button>
              </th>
            </tr>
          </table>  
        </span>  
%if rl:
        <hr>
        <span class="fs-5" style="font-weight: bold; margin-bottom: 0.5cm;">За период с {{tFrom}} по {{tTo}}</span>
%end      
        
        <div id="mainarea" class="list-group list-group-flush border-bottom scrollarea">
%if rl:       
          <section class="sticky2 bg-light">
             
            <span class="fs-5" style="font-weight: bold; margin-bottom: 0.5cm;">Суммарно</span>
            <table style="width: 1450px; background-color:#212529; color:#ffffff">
              <tr>
                <th style="width: 6.5cm; text-align: left;">Код</th>
                <th style="width: 11cm; text-align: left;">Наименование</th>
                <th style="width: 6cm; text-align: left;">План</th>
                <th style="width: 6cm; text-align: left;">Факт</th>
                <th style="width: 7cm; text-align: left;"></th>
              </tr>
            </table>
          </section>


        
          <div class="accordion accordion-flush" id="accordionTotal" style="width: 1450px;">
%i = 0
%j = 0
%for r in rt:
          <div class="accordion-item" style="width: 1450px">
              <h2 class="accordion-header" id="panelsStayOpen-heading{{i}}">
                <button id="panelsStayOpen-btn{{i}}" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapse{{i}}" aria-expanded="false" aria-controls="panelsStayOpen-collapse{{i}}" style="height: 30px">
                  <table>
                    <tr>
                      <th style="width: 6.5cm; font-weight: normal; color:black">{{r[0]}}</th>
                      <th style="width: 11.5cm; font-weight: normal; color:black">{{r[1]}}</th>
                      <th style="width: 6.3cm; font-weight: bold; color:darkblue">{{r[2]}}</th>
                      <th style="width: 6.3cm; font-weight: bold; color:darkgreen">{{r[3]}}</th>
                      <th id="timeStmp{{i}}" style="width: 5cm; font-weight: bold;"></th>
                    </tr>
                  </table>
                </button>
              </h2>
              <div id="panelsStayOpen-collapse{{i}}" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-heading{{i}}">
                <div class="accordion-body" style="background-color: lightgray;">
                  <table>
%for c in ct[j]:
                    <tr>
                      <th style="width: 6.5cm; font-weight: normal; color:black">{{c[0]}}</th>
                      <th style="width: 11.5cm; font-weight: normal; color:black">{{c[1]}}</th>
                      <th style="width: 6.3cm; font-weight: bold; color:darkblue">{{c[2]}}</th>
                      <th style="width: 6.3cm; font-weight: bold; color:darkgreen">{{c[3]}}</th>
                      <th style="width: 5cm;"></th>
                    </tr>
%end
                  </table>
              </div>
            </div>
          </div>
%i = i + 1
%j = j + 1
%end


        
        </div>

        
        <section class="sticky1 bg-light">
          <span class="fs-5" style="font-weight: bold; margin-bottom: 0.5cm">История</span>
          <table style="width: 1450px; background-color:#212529; color:#ffffff">
            <tr>
              <th style="width: 6.5cm; text-align: left;">Код</th>
              <th style="width: 11cm; text-align: left;">Наименование</th>
              <th style="width: 6cm; text-align: left;">План</th>
              <th style="width: 6cm; text-align: left;">Факт</th>
              <th style="width: 7cm; text-align: left;">Дата/время</th>
            </tr>
          </table>
        </section>
        
        
        <div class="accordion accordion-flush" id="accordionHystory" style="width: 1450px;>
%j = 0
%for r in rl:
          <div class="accordion-item" style="width: 1450px">
            <h2 class="accordion-header" id="panelsStayOpen-heading{{i}}">
              <button id="panelsStayOpen-btn{{i}}" class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#panelsStayOpen-collapse{{i}}" aria-expanded="false" aria-controls="panelsStayOpen-collapse{{i}}" style="height: 30px">
                <table>
                  <tr>
                    <th style="width: 6.5cm; font-weight: normal; color:black">{{r[0]}}</th>
                    <th style="width: 11.5cm; font-weight: normal; color:black">{{r[1]}}</th>
                    <th style="width: 6.3cm; font-weight: bold; color:darkblue">{{r[2]}}</th>
                    <th style="width: 6.3cm; font-weight: bold; color:darkgreen">{{r[3]}}</th>
                    <th style="width: 5cm; font-weight: bold">{{r[4]}}</th>
                  </tr>
                </table>
              </button>
            </h2>
            <div id="panelsStayOpen-collapse{{i}}" class="accordion-collapse collapse" aria-labelledby="panelsStayOpen-heading{{i}}">
              <div class="accordion-body" style="background-color: lightgray;">
                <table>
%for c in cl[j]:
                  <tr>
                    <th style="width: 6.5cm; font-weight: normal; color:black">{{c[0]}}</th>
                    <th style="width: 11.5cm; font-weight: normal; color:black">{{c[1]}}</th>
                    <th style="width: 6.3cm; font-weight: bold; color:darkblue">{{c[2]}}</th>
                    <th style="width: 6.3cm; font-weight: bold; color:darkgreen">{{c[3]}}</th>
                    <th style="width: 5cm;"></th>
                  </tr>
%end
                </table>
              </div>
            </div>
          </div>
%j = j + 1
%i = i + 1
%end

        </div>
%else:
        <hr>
        <span class="fs-2" style="margin-left: 2cm;color: red;">Результаты по данному запросу не найдены</span>
%end
<!--      <script src="assets/dist/js/fartscroll.js"></script>
        <script>
            fartscroll(200);
        </script>  -->
      </div>
      </div>
  
    </main>

    <!-- Animation and magic -->
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/sidebars.js"></script>
    <script src="assets/dist/js/myjs.js"></script>
    
  </body>
</html>
