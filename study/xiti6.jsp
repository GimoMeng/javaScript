<!DOCTYPE html>

<html lang="en">
<head>
    <title></title>
    <style>
        .tabStrip {
            background-color: #E4E2D5;
            padding: 3px;
            height: 22px;
        }

            .tabStrip div {
                float: left;
                font: 14px arial;
                cursor: pointer;
            }

        .tabStrip-tab {
            padding: 3px;
        }

        .tabStrip-tab-hover {
            border: 1px solid #316AC5;
            background-color: #C1D2EE;
            padding: 2px;
        }

        .tabStrip-tab-click {
            border: 1px solid #facc5a;
            background-color: #f9e391;
            padding: 2px;
        }
    </style>
</head>
<body>
    <div class="tabStrip">
        <div data-tab-number="1" class="tabStrip-tab">Tab 1</div>
        <div data-tab-number="2" class="tabStrip-tab">Tab 2</div>
        <div data-tab-number="3" class="tabStrip-tab">Tab 3</div>
    </div>
    <div id="descContainer"></div>

    <script>
        function handleEvent(e) {
            var target = e.target;

            switch (e.type) {
                case "mouseover":
                    if (target.className == "tabStrip-tab") {
                        target.className = "tabStrip-tab-hover";
                    }
                    break;
                case "mouseout":
                    if (target.className == "tabStrip-tab-hover") {
                        target.className = "tabStrip-tab";
                    }
                    break;
                case "click":
                    if (target.className == "tabStrip-tab-hover") {
                        target.className = "tabStrip-tab-click";
                        var num = target.getAttribute("data-tab-number");

                        showDescription(num);
                    }
                    break;
            }
        }

        function showDescription(num) {
            var descContainer = document.getElementById("descContainer");

            var text = "Description for Tab " + num;

            descContainer.innerHTML = text;
        }

        document.addEventListener("mouseover", handleEvent);
        document.addEventListener("mouseout", handleEvent);
        document.addEventListener("click", handleEvent);
    </script>
</body>
</html>