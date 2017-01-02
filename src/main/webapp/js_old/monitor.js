
function format(n) {
    return (""+n).toString().replace(/\B(?=(\d{3})+(?!\d))/g, ",");
}

function formatPercentage(a,b) {
    return Math.round(1000.*a/b)/10+"%";
}