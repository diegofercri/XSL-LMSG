const personsBtn = document.getElementById("personsBtn");
const persons = document.getElementById("persons");
const filmsBtn = document.getElementById("filmsBtn");
const films = document.getElementById("films");
const allBtn = document.getElementById("allBtn");

personsBtn.addEventListener("click", (e) => {
        persons.style.display = "block";
        films.style.display = "none";
});


filmsBtn.addEventListener("click", (e) => {
        films.style.display = "block";
        persons.style.display = "none";
});


allBtn.addEventListener("click", (e) => {
        persons.style.display = "block";
        films.style.display = "block";
});
