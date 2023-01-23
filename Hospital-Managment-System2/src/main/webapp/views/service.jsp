<!DOCTYPE html>
<html>
<head>
<title>Sort a HTML Table Alphabetically</title>
<style>
body {
  background-image: url('R1.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size:cover;
}
table {
  border-spacing: 0;
  width: 100%;
  border: 1px solid #ddd;
}

th, td {
  text-align: left;
  padding: 16px;
}

tr:nth-child(even) {
  background-color: #f2f2f2
}
</style>
</head>
<body>



<table id="myTable">
  <tr>
    <center><h1>Services</h1></center>
    </tr>
  <tr>
    <td>Entrance-easily accessible with ramp, steps and wide door</td>
    
  </tr>
  <tr>
    <td>Flooring-tiled with a slope towards outlet</td>
   
  </tr>
  <tr>
    <td>Consulting rooms</td>
    
  </tr>
  <tr>
    <td>Bay for trolleys and wheelchairs</td>
    
  </tr>
  <tr>
    <td>Toilet-separate for males and females</td>
    
  </tr>
  <tr>
    <td>Public telephone</td>
    
  </tr>
  <tr>
    <td>Emergency cases</td>
   
  </tr>
  <tr>
    <td>OPD is the first point of contact in the hospital and so the best impression should be given.</td>
    
  </tr>
</table>

<script>
function sortTable() {
  var table, rows, switching, i, x, y, shouldSwitch;
  table = document.getElementById("myTable");
  switching = true;
  /*Make a loop that will continue until
  no switching has been done:*/
  while (switching) {
    //start by saying: no switching is done:
    switching = false;
    rows = table.rows;
    /*Loop through all table rows (except the
    first, which contains table headers):*/
    for (i = 1; i < (rows.length - 1); i++) {
      //start by saying there should be no switching:
      shouldSwitch = false;
      /*Get the two elements you want to compare,
      one from current row and one from the next:*/
      x = rows[i].getElementsByTagName("TD")[0];
      y = rows[i + 1].getElementsByTagName("TD")[0];
      //check if the two rows should switch place:
      if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
        //if so, mark as a switch and break the loop:
        shouldSwitch = true;
        break;
      }
    }
    if (shouldSwitch) {
      /*If a switch has been marked, make the switch
      and mark that a switch has been done:*/
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
    }
  }
}
</script>

</body>
</html>
