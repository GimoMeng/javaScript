<!DOCTYPE html>

<html lang="en">
<head>
    <title>xiti</title>
</head>
<body>
    <a id="someLink" href="somepage.html">
        Click Me
    </a>
    <script>
        function linkClick() {
            alert("This link is going nowhere");
            return false;
        }

        document.getElementById("someLink").onclick = linkClick;
    </script>
</body>
</html>