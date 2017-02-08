
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Akira | Login</title>
  
      <link rel="stylesheet" href="static/css/style.css">

</head>

<body>
  <div class="vid-container">
  <video id="Video1" class="bgvid back" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
  </video>
  <div class="inner-container">
    <video id="Video2" class="bgvid inner" autoplay="false" muted="muted" preload="auto" loop>
      <source src="http://shortcodelic1.manuelmasiacsasi.netdna-cdn.com/themes/geode/wp-content/uploads/2014/04/milky-way-river-1280hd.mp4.mp4" type="video/mp4">
    </video>
   <form action="login" method="POST">
    <div class="box">
      <h1>Login</h1>
      <input type="text" placeholder="Username" name="username" />
      <input type="password" placeholder="Password" name="password" />
      <button>Login</button>
      <p>Not a member? <span>Sign Up</span></p>
    </div>
   </form>
  </div>
</div>
  <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="static/js/index.js"></script>

</body>
</html>