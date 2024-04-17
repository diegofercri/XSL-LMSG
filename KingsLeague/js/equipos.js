function hideall(abr) {
    document.querySelectorAll('.equipo').forEach(function (div) {
        div.style.display = "none"
    });
    console.log(abr)
    var divequipo = document.getElementById(abr);
    divequipo.style.display = "block"
}