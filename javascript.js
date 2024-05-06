<html>
<head>
<script>
window.onload = function() {
    loadTextFile();
};

function cargarArchivo() {
    var xmlhttp = new XMLHttpRequest();
    xmlhttp.onreadystatechange = function() {
        if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
            motrarDatosEnTabla(xmlhttp.responseText);
        }
    };
    xmlhttp.open("GET", "muestraAjaxx.txt", true);
    xmlhttp.send();
}

function mostrarDatosEnTabla(data) {
    var table = document.getElementById("dataTable");
    var lines = data.split("\n");

    for (var i = 0; i < lines.length; i++) {
        var columns = lines[i].split(",");
        if (columns.length === 3) {
            var row = table.insertRow(-1);
            var cell1 = row.insertCell(0);
            var cell2 = row.insertCell(1);
            var cell3 = row.insertCell(2);
            cell1.innerHTML = columns[0];
            cell2.innerHTML = columns[1];
            cell3.innerHTML = columns[2];
        }
    }
}
</script>
</head>
<body>
<table id="dataTable">
    <tr>
        <th>Parameter 1</th>
        <th>Parameter 2</th>
        <th>ACK</th>
    </tr>
</table>
</body>
</html>