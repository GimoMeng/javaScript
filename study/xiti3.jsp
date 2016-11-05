<!DOCTYPE html>

<html lang="en">
<head>
    <title>Chapter 9, Example 6</title>
    <style>
        #divAdvert {
            position: absolute;
            font: 12px Arial;
            top: 4px;
            left: 0px;
        }
    </style>
</head>
<body>
    <div id="divAdvert">
        Here is an advertisement.
    </div>

    <script>
        var switchDirection = false;

        function doAnimation() {
            var divAdvert = document.getElementById("divAdvert");
            var currentLeft = divAdvert.offsetLeft;
            var newLocation;

            if (!switchDirection) {
                newLocation = currentLeft + 2;

                if (currentLeft >= 400) {
                    switchDirection = true;
                }
            } else {
                newLocation = currentLeft - 2;

                if (currentLeft <= 0) {
                    switchDirection = false;
                }
            }

            divAdvert.style.left = newLocation + "px";
        }

        setInterval(doAnimation, 100);
    </script>

</body>
</html>