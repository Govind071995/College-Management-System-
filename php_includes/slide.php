<?php
?>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
    var image1 = new Image()
    image1.src = "images/slide1.jpg"
    var image2 = new Image()
    image2.src = "images/slide2.jpg"
</script>
</head>
<body>
<p><img src="images/slide6.jpg" width="500" height="300" name="slide" /></p>
    <script type="text/javascript">
            function slideit()
            {
                var step=1;
                document.images.slide.src = eval("image"+step+".src")
                if(step<2)
                    step++
                else
                    step=1
                setTimeout("slideit()",2500)
            }
            slideit()
    </script>
</body>
</html>