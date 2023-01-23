<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  background-image: url('R1.jpeg');
  background-repeat: no-repeat;
  background-attachment: fixed;  
  background-size:cover;
}
html {
  box-sizing: border-box;
}

*, *:before, *:after {
  box-sizing: inherit;
}

.column {
  float: left;
  width: 33.3%;
  margin-bottom: 16px;
  padding: 0 8px;
}

@media screen and (max-width: 650px) {
  .column {
    width: 100%;
    display: block;
  }
}

.card {
  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
}

.container {
  padding: 0 16px;
}

.container::after, .row::after {
  content: "";
  clear: both;
  display: table;
}

.title {
  color: grey;
}

.button {
  border: none;
  outline: 0;
  display: inline-block;
  padding: 8px;
  color: white;
  background-color: #000;
  text-align: center;
  cursor: pointer;
  width: 100%;
}

.button:hover {
  background-color: #555;
}
</style>
</head>
<body>

<h2>Speciealist Docter In Our Hospitel</h2>
<br>

<div class="row">
  <div class="column">
    <div class="card">
      <img src="D1.jpg" alt="Jane" style="width:100%">
      <div class="container">
        <h2>Jane Doe</h2>
        <p class="title">Maternal-Fetal Medicine (MFM)</p>
        <p>These doctors assist with high-risk pregnancies..</p>
        <p>janedoe@mayur.com</p>
        <p><button class="button" >Contact</button></p>
      </div>
    </div>
  </div>

  <div class="column">
    <div class="card">
      <img src="D2.jpg" alt="Mike" style="width:100%">
      <div class="container">
        <h2>Mike Ross</h2>
        <p class="title">Pathology </p>
        <p>Pathologists typically do not interact with their patients because they are specialized in examining biopsy specimens.</p>
        <p>mikeross@mayur.com</p>
        <p><button class="button" >Contact</button></p>
      </div>
    </div>
  </div>
  
  <div class="column">
    <div class="card">
      <img src="D3.jpg" alt="John" style="width:100%">
      <div class="container">
        <h2>John Doe</h2>
        <p class="title">General Surgery</p>
        <p> these surgeons begin their training as general surgeons, then can sub-specialize in the areas listed below, or stay general surgeons..</p>
        <p>johndoe@mayur.com</p>
        <p><button class="button" action="contact" >Contact</button></p>
      </div>
    </div>
  </div>
</div>

</body>
</html>
