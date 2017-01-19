var drawChart = function () {
    var barChart = document.getElementById("chartjs-barchart").getContext("2d");
    var data = [];
    var colors = [{
            fillColor: "#23b7e5",
            strokeColor: "#23b7e5"
        },
        {
            fillColor: "#f44336",
            strokeColor: "#f44336"
        }];
    for (var i = 1; i < arguments.length; i++) {
        data.push({
            fillColor: colors[(i-1)%colors.length].fillColor,
            strokeColor: colors[(i-1)%colors.length].strokeColor,
            data: arguments[i]
        });
    }
    var barData = {
        labels: arguments[0],
        datasets: data
    };

    new Chart(barChart).Bar(barData);

};

var drawPie = function (values) {
    var pieChart = document.getElementById("chartjs-piechart").getContext("2d");
    var data = [];
    var colors = ["#F7464A","#E2EAE9","#D4CCC5","#949FB1","#4D5360"];
    for (var i = 0; i < values.length; i++) {
        data.push({
            value: values[i][1],
            label: values[i][0],
            color: colors[i%colors.length]
        });
    }
    var options = {
        animation: true,
        animationEasing: 'easeInOutQuart',
        animationSteps: 80
    };
    new Chart(pieChart).Pie(data, options);
};
