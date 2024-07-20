function timeChanged(ev, object) {
    if ((document.getElementById('startTimeField').value != "") && (document.getElementById('endTimeField').value != "")) {
        if (Date.parse(document.getElementById("startTimeField").value) > Date.parse(document.getElementById("endTimeField").value)) {
            object.style.backgroundColor = "#FF6464";
            alert("Некорректный временной диапазон");    
        }
        else {
            document.getElementById('startTimeField').style.backgroundColor = "#FFFFFF";
            document.getElementById('endTimeField').style.backgroundColor = "#FFFFFF";
        }
    }
    if (object.value == "") {
        object.style.backgroundColor = "#FFFFFF";
    }
}

function clearForm() {
    document.getElementById('startTimeField').value = "";
    document.getElementById('startTimeField').style.backgroundColor = "#FFFFFF";
    document.getElementById('endTimeField').value = "";
    document.getElementById('endTimeField').style.backgroundColor = "#FFFFFF";

    document.getElementById('recipeCodeSelection').value = "";
    document.getElementById('recipeNameSelection').value = "";
    document.getElementById('componentCodeSelection').value = "";
    document.getElementById('componentNameSelection').value = "";

    var s = document.createElement('a');
    s.href = "http://localhost:8080/startPage";
    s.target = "main";
    document.body.appendChild(s);
    s.click();
}

function hideAll() {
    var i = 0;

    while (true) {
        try {
            if (document.getElementById('panelsStayOpen-btn' + i).ariaExpanded == "true") {
                document.getElementById('panelsStayOpen-btn' + i).click();
            }
            i = i + 1;
        } catch (error) {
            break;
        }
    }
}

function expandAll() {
    var i = 0;

    while (true) {
        try {
            if (document.getElementById('panelsStayOpen-btn' + i).ariaExpanded == "false") {
                document.getElementById('panelsStayOpen-btn' + i).click();
            }
            i = i + 1;
        } catch (error) {
            break;
        }
    }
}

function createRecipeGetReq() {
    var s = document.createElement('a');
    var timeMin = document.getElementById("startTimeField");
    var timeMax = document.getElementById("endTimeField");
    var compListTable = document.getElementById("ComponentReqList");
    var comp_str = document.getElementById("comp_req");

    comp_str.innerHTML = "";
    compListTable.innerHTML = "";
    
    showPreloader();

    s.href = "http://localhost:8080/recipeReq";
    s.target = "main";
    s.href = s.href + "?FROM=" + (Date.parse(timeMin.value) > "0" ? Date.parse(timeMin.value) : "0");
    s.href = s.href + "&TO=" + (Date.parse(timeMax.value) > "0" ? Date.parse(timeMax.value) : "0");

    var rec_str = document.getElementById("rec_req").innerHTML;
    if (rec_str.endsWith(",")) {
        rec_str = rec_str.slice(0, -1);
    }
    s.href = s.href + "&REC=" + (rec_str != "" ? rec_str : "0");
 
    document.body.appendChild(s);
    s.click();
}

function createComponentGetReq() {
    var s = document.createElement('a');
    var timeMin = document.getElementById("startTimeField");
    var timeMax = document.getElementById("endTimeField");
    var recListTable = document.getElementById("RecipeReqList");
    var rec_str = document.getElementById("rec_req");

    rec_str.innerHTML = "";
    recListTable.innerHTML = "";

    showPreloader();
    
    s.href = "http://localhost:8080/componentReq";
    s.target = "main";
    s.href = s.href + "?FROM=" + (Date.parse(timeMin.value) > "0" ? Date.parse(timeMin.value) : "0");
    s.href = s.href + "&TO=" + (Date.parse(timeMax.value) > "0" ? Date.parse(timeMax.value) : "0");

    var comp_str = document.getElementById("comp_req").innerHTML;
    if (comp_str.endsWith(",")) {
        comp_str = comp_str.slice(0, -1);
    }
    s.href = s.href + "&COMP=" + (comp_str != "" ? comp_str : "0");

    document.body.appendChild(s);
    s.click();
}

function createComponentSumReq() {
    var s = document.createElement('a');

    showPreloader();
    
    s.href = "http://localhost:8080/componentSumReq";
    s.target = "main";

    document.body.appendChild(s);
    s.click();
}

function recipeChange(object) {
    var rCode = document.getElementById("recipeCodeSelection"); 
    var rName = document.getElementById("recipeNameSelection"); 
    var recListTable = document.getElementById("RecipeReqList");
    var compListTable = document.getElementById("ComponentReqList");
    var rec_str = document.getElementById("rec_req");
    var comp_str = document.getElementById("comp_req");
    var check = document.getElementById(object.value);

    rCode.value = object.value;
    rName.value = object.value;

    comp_str.innerHTML = "";
    compListTable.innerHTML = "";
    compListTable.style.display = "none";
    recListTable.style.display = "inline";

    if ((typeof(check) == 'undefinied') || (check == null)) {

        var rowTable = document.createElement('tr');
        rowTable.setAttribute("onclick", "deleteItem(this,'rec_req')");
        rowTable.id = rCode.value;

        var newItem = document.createElement('th');
        newItem.innerHTML = rCode.value + ' - ' + rName.options[rName.selectedIndex].text;
        recListTable.append(rowTable);
        rowTable.append(newItem);

        rec_str.innerHTML += "'" + rCode.value + "'" + ",";
    }

    rCode.value = "0";
    rName.value = "0";
}

function componentChange(object) {
    var cCode = document.getElementById("componentCodeSelection"); 
    var cName = document.getElementById("componentNameSelection"); 
    var recListTable = document.getElementById("RecipeReqList");
    var compListTable = document.getElementById("ComponentReqList");
    var rec_str = document.getElementById("rec_req");
    var comp_str = document.getElementById("comp_req");
    var check = document.getElementById(object.value);

    cCode.value = object.value;
    cName.value = object.value;

    rec_str.innerHTML = "";
    recListTable.innerHTML = "";
    recListTable.style.display = "none";
    compListTable.style.display = "inline";

    if ((typeof(check) == 'undefinied') || (check == null)) {

        var rowTable = document.createElement('tr');
        rowTable.setAttribute("onclick", "deleteItem(this,'comp_req')");
        rowTable.id = cCode.value;

        var newItem = document.createElement('th');
        newItem.innerHTML = cCode.value + ' - ' + cName.options[cName.selectedIndex].text;
        compListTable.append(rowTable);
        rowTable.append(newItem);

        comp_str.innerHTML += "'" + cCode.value + "'" + ",";
    }

    cCode.value = "0";
    cName.value = "0";
}

function loging() {
    var s = document.createElement('a');

    s.href = "http://localhost:8080/login";
    s.target = "_top";
    document.body.appendChild(s);
    s.click();
}

function showPreloader() {
    var obj = parent.frames['main'].document.getElementById("loading");
    obj.style.visibility = "visible";
}

function deleteItem(obj,id) {
    var rec_str = document.getElementById(id).innerHTML;
    rec_str = rec_str.replace("'" + obj.id + "'" + ',','');
    document.getElementById(id).innerHTML = rec_str;
    obj.remove();
}