//getting the form and the place to our answer
const form = document.querySelector("form");
const ans1 = document.querySelector("h3");
const ans2 = document.querySelector("h4");

//creating an spy to capture user input
form.addEventListener("submit", (e) =>{
    const tittle = form.itittle.value; //taking the name
    const total = Number(form.imin.value); //taking the minutes

    const hour = Math.floor(total/60); //round it down
    const min = total % 60; //the minutes that remains
    
    ans1.innerText = tittle;
    ans2.innerText = `${hour}h ${min}min \n \nthat's a good one`; 

    e.preventDefault(); //prevent the form to go away
});
