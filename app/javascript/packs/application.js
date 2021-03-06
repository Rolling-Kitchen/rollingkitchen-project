// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails, { linkDisableSelector } from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import { initFlatpickr } from "../plugins/flatpickr";

// Carousel
import 'owl.carousel/dist/assets/owl.carousel.css';
import 'owl.carousel';


// Internal imports, e.g:
// import { initSelect2 } from '../components/init_select2';
// import { initIsotope } from '../plugins/initIsotope';


document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  // initIsotope();
  initFlatpickr();

  $('.owl-carousel').owlCarousel({
    loop: true,
    autoplay: true,
    autoplaySpeed: 2,
    slideTransition: "linear",
    nav: false,
    margin: 10,
    responsive:{
      0:{
        items:1
       }
     },
    //  nav: true,
    //  navText: ["<i class='fa fa-chevron-left'></i>","<i class='fa fa-chevron-right'></i>"]
   })
});


