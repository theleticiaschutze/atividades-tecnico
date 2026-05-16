const frm = document.querySelector("form");
const resp = document.querySelector("h3");

frm.addEventListener("submit", (e) => {
    const nome = frm.inName.value; //Fulano
    const cidade = frm.inCity.value; //cidade
    const idade = frm.inAge.value; //idade
    resp.innerText = `Olá ${nome}, como é morar em ${cidade} e ter ${idade}?`;

    e.preventDefault();
});

