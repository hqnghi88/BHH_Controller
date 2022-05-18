// Area Chart Example
var myallTimeChart = null;
var comparevn = null;
function showchart_alltime() {    
    var xValues = ["11/05/2022 19h","11/05/2022 13h","11/05/2022 7h","11/05/2022 1h","10/05/2022 19h","10/05/2022 13h","10/05/2022 7h","10/05/2022 1h"];

    if (myallTimeChart != null) {
        myallTimeChart.destroy();
    } 
    var ctx = document.getElementById("myallTimeChart"); 
    myallTimeChart = new Chart(ctx, {
        type: 'line',
        data: {
            labels: xValues,
            datasets: [{ label: "TL", 
              data: [159,173,141,113,160,191,174,154],
              borderColor: "red",
              fill: false
            },{ label: "HL", 
              data: [157,172,156,139,157,184,172,159],
              borderColor: "green",
              fill: false
            } ]
          },
        // data: {
        //     labels: ["TL","HL"],
        //     datasets: [{
        //         label: "Số ca", 
        //          data: array,//.reduce((r, a) => a.map((b, i) => (r[i] || 0) + b), [])
        //     }],
        // },
        options: { 
            animation: {
                duration: 0,
            },
            plugins: {
                legend: {
                    display: false
                },
            },
            responsive: true,
            maintainAspectRatio: false
        }
    });
}
 

function getColor(d) { 
    return  '#99000d';
}

function LightenDarkenColor(colorCode, amount) {
    var usePound = false;

    if (colorCode[0] == "#") {
        colorCode = colorCode.slice(1);
        usePound = true;
    }

    var num = parseInt(colorCode, 16);

    var r = (num >> 16) + amount;

    if (r > 255) {
        r = 255;
    } else if (r < 0) {
        r = 0;
    }

    var b = ((num >> 8) & 0x00FF) + amount;

    if (b > 255) {
        b = 255;
    } else if (b < 0) {
        b = 0;
    }

    var g = (num & 0x0000FF) + amount;

    if (g > 255) {
        g = 255;
    } else if (g < 0) {
        g = 0;
    }

    return (usePound ? "#" : "") + (g | (b << 8) | (r << 16)).toString(16);
}