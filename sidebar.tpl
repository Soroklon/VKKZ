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
    <link href="assets/dist/css/sidebars.css" rel="stylesheet">

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
      tr, th {
        color: #212529!important;
        background: #ffffff;
        border: 1px solid;
        bordercolor: #ffffff;
        border-radius: 15px;
        width: 100vw;
        height: 20px
      }
    </style>
    
    <!-- Custom styles for this template -->

    
    
  </head>
  <body>
    <main>

      <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark" style="width: 400px; height: 100vh">
              
        
        <span class="fs-2">
          <button type="button" onclick="parent.close()" class="btn btn-light" style="width: 1cm; align-self:flex-start">
            <
          </button>
          Параметры запроса
        </span>
        <hr>
        <span class="fs-5">Период времени</span>
        <span class="fs-6" style="margin-left: 1cm; margin-top: 0.4cm;">от <input type="datetime-local" style="margin-left: 0.55cm;" id="startTimeField" name="start-time" onchange="timeChanged('change',this);return false;"/></span>
        <span class="fs-6" style="margin-left: 1cm; margin-top: 0.2cm;">до <input type="datetime-local" style="margin-left: 0.5cm;" id="endTimeField" name="end-time" onchange="timeChanged('change',this);return false;"/></span>
        <button type="button" id = "clearTimeBtn" onclick="clearForm(); location.reload();" class="btn btn-light" style="width: 3cm; align-self:flex-end ; margin-top: 0.5cm;">Очистить</button>

        <div class="bg-dark" style="margin-top: 1cm;">
          <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
              <button class="nav-link active" id="nav-recipe-tab" data-bs-toggle="tab" data-bs-target="#recipes" type="button" role="tab" aria-controls="recipes" aria-selected="true">Поиск рецептов</button>
              <button class="nav-link" id="nav-component-tab" data-bs-toggle="tab" data-bs-target="#components" type="button" role="tab" aria-controls="components" aria-selected="false">Поиск компонентов</button>
            </div>
          </nav>
          <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade show active" id="recipes" role="tabpanel" aria-labelledby="recipes-tab">
              <form>
                    <select name="recipes select" id="recipeCodeSelection" style="width: auto; margin-top: 0.5cm; align-self:flex-end;" onchange="recipeChange(this)">
                        <option value="0" selected disabled hidden>-выберите код-</option>
%if rList:
%for r in rList:
                        <option value="{{r[0]}}">{{r[0]}}</option>
%end
%end
                    </select>
                    <br>
                    <select name="components select" id="recipeNameSelection" style="width: auto; margin-top: 0.2cm;" onchange="recipeChange(this)">
                        <option value="0" selected disabled hidden>-выберите наименование-</option>
%if rList:
%for r in rList:
                        <option value="{{r[0]}}">{{r[1]}}</option>
%end
%end
                    </select>
                </form>
                <button type="button" id = "recipeReqBtn" onclick="createRecipeGetReq()" class="btn btn-light" style="width: 3cm; align-self:flex-end ; margin-top: 0.5cm">
                  Поиск
                </button>
            </div>
            <div class="tab-pane fade" id="components" role="tabpanel" aria-labelledby="components-tab">
                <form>  
                    <select name="components select" id="componentCodeSelection" style="width: auto; margin-top: 0.5cm;" onchange="componentChange(this)">
                        <option value="0" selected disabled hidden>-выберите код-</option>
%if cList:
%for r in cList:
                        <option value="{{r[0]}}">{{r[0]}}</option>
%end
%end
                    </select>
                    <br>
                    <select name="components select" id="componentNameSelection" style="width: auto; margin-top: 0.2cm;" onchange="componentChange(this)">
                        <option value="0" selected disabled hidden>-выберите наименование-</option>
%if cList:
%for r in cList:
                        <option value="{{r[0]}}">{{r[1]}}</option>
%end
%end
                    </select>
                </form>

                      <button type="button" id = "componentReqBtn" onclick="createComponentGetReq()" class="btn btn-light" style="width: 3cm; align-self:flex-end ; margin-top: 0.5cm;">
                        Поиск
                      </button>

                      <button type="button" id = "componentSumBtn" onclick="createComponentSumReq()" class="btn btn-light" style="width: 3cm; align-self:right ; margin-top: 0.5cm;">
                        Остатки
                      </button>

            </div>
            <hr>
          </div>
        </div>
      
        <div>
          <h2 id="rec_req" style="display: none"></h2>
          <h2 id="comp_req" style="display: none"></h2>
          <table id="RecipeReqList" style="display: none">
          </table>
          <table id="ComponentReqList" style="display: none">
          </table>  
        </div>
      </div>
    </main>

    <!-- Animation and magic -->
    <script src="assets/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/dist/js/sidebars.js"></script>
    <script src="assets/dist/js/myjs.js"></script>
  </body>
</html>