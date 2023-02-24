/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


const sign_in_btn = document.querySelector("#sign-in-btn");
const sign_up_btn = document.querySelector("#sign-up-btn");
const container = document.querySelector(".container");
 sign_up_btn.addEventListener("click", () =>
  { container.classList.add("sign-up-mode");
}); 
sign_in_btn.addEventListener("click", () => 
{ container.classList.remove("sign-up-mode");
});