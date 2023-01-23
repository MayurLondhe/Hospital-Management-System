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
body {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
  margin-top: 6px;
  margin-bottom: 16px;
  resize: vertical;
}

input[type=submit] {
  background-color: #04AA6D;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
</head>
<body>
<center>
<h3>Contact Form</h3>
</center>
<div class="container">
  <form action="contact" method="post">
    <label for="fname">Name</label>
    <input type="text" name="name" placeholder="Your name..">

    <label for="lname">Email</label>
    <input type="text"  name="email" placeholder="Your email..">

    <label for="lname">Phone</label>
    <input type="text" name="phone" placeholder="Your contact no..">


    <label for="subject">Massage</label>
    <textarea id="subject" name="massage" placeholder="Write something.." style="height:200px"></textarea>

    <input type="submit" value="Submit">
  </form>
</div>

</body>
</html>
