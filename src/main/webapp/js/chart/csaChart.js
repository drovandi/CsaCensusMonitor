var drawChart = function () {
    var barChart = document.getElementById(arguments[0]).getContext("2d");
    var data = [];
    var colors = [{
            fillColor: "#23b7e5",
            strokeColor: "#23b7e5"
        },
        {
            fillColor: "#f44336",
            strokeColor: "#f44336"
        }];
    for (var i = 2; i < arguments.length; i++) {
        data.push({
            fillColor: colors[(i-2)%colors.length].fillColor,
            strokeColor: colors[(i-2)%colors.length].strokeColor,
            data: arguments[i]
        });
    }
    var barData = {
        labels: arguments[1],
        datasets: data
    };

    new Chart(barChart).Bar(barData);

};

var drawPie = function (values) {
    var pieChart = document.getElementById("chartjs-piechart").getContext("2d");
    var data = [];
    var colors = ["#4D5360","#E2EAE9","#949FB1","#D4CCC5","#F7464A"];
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
    new Chart(pieChart).Doughnut(data, options);
    var legend = $("#chartjs-piechart-legend");
    var ul = $(document.createElement("ul"));
    for (var i = 0; i < values.length; i++) {
        var li = $(document.createElement("li"));
        var icon = $(document.createElement("i"));
        var span = $(document.createElement("span"));
        icon.addClass("fa fa-square fa-fw");
        icon.css("color",colors[i%colors.length]);
        span.text(values[i][0]);
        li.append(icon);
        li.append(span);
        ul.append(li);
    }
    legend.append(ul);
    console.log(legend);
};
