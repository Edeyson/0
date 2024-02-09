// window.addEventListener('DOMContentLoaded', function(e) {
//     let allCarouselCompensar = document.querySelectorAll('.carousel-compensar');
    
//     allCarouselCompensar.forEach(carouselCompensar =>{
//       let previousButton, nextButton;
//       let slidesContainer, slides, slideDots;
//       let leftMostSlideIndex = 0;
//       let slideGap = 5;
//       slidesContainer = carouselCompensar.querySelector(".slides");
//       slides = slidesContainer.querySelectorAll('.slide');

//       for (let index = 1; index <= slides.length; index++) {
//         let i = index+1;
//         carouselCompensar.querySelector('.navigation').innerHTML += `<li><a href="javascript://" role="button" slide-refer="#img${i}"><span class="sr-only">Ir a slide ${i}</span> </a></li>`;
//       } 
//       //Dot primary... add attribute
//       carouselCompensar.querySelector('.navigation li a').setAttribute('aria-current','true');
      
//       slideDots = carouselCompensar.querySelectorAll('.navigation li a');
//       previousButton = carouselCompensar.querySelector('.previous');
//       nextButton = carouselCompensar.querySelector('.next');
  
  
//       // Set up previous/next button behaviors
//       previousButton.addEventListener('click', previousSlide);
//       nextButton.addEventListener('click', nextSlide);
      
//       // Ensure that all non-visible slides are impossible to reach.
//       hideNonVisibleSlides();
      
//       // Set up the slide dot behaviors
//       slideDots.forEach(function(dot) {
//         dot.addEventListener('click', function(e) {
//           goToSlide(Array.prototype.slice.call(slideDots).indexOf(e.target));
//           setTimeout(()=>{
//             carouselCompensar.querySelector(`${e.target.getAttribute("slide-refer")}`).click();
//           },500)
//         });
//       });
    
  
//       /** Go to previous slide */
//       function previousSlide() {
//         if(leftMostSlideIndex > 0) {
//           goToSlide(leftMostSlideIndex - 1);
//         } else {
//           goToSlide(slides.length - 1);
//         }
//       }
  
//       /** Go to next slide */
//       function nextSlide() {
//         if(leftMostSlideIndex < slides.length - 1) {
//           goToSlide(leftMostSlideIndex + 1);
//         } else {
//           goToSlide(0);
//         }
//       }
  
//       /** Go to a specific slide */
//       function goToSlide(nextLeftMostSlideIndex) {
//         // Smoothly scroll to the requested slide
//         let classSlide = carouselCompensar.querySelector(".slides--columns-4")
//         $(slidesContainer).animate({
//           scrollLeft: classSlide? (slidesContainer.offsetWidth) / 4 * nextLeftMostSlideIndex : (slidesContainer.offsetWidth) * nextLeftMostSlideIndex
//         }, {
//           duration: 200
//         });
        
//         // Unset aria-current attribute from any slide dots that have it
//         slideDots.forEach(function(dot) {
//           dot.removeAttribute('aria-current');
//         });
        
//         // Set aria-current attribute on the correct slide dot
//         slideDots[nextLeftMostSlideIndex].setAttribute('aria-current', true);
        
//         // Update the record of the left-most slide
//         leftMostSlideIndex = nextLeftMostSlideIndex;
        
//         // Update each slide so that the ones that are now off-screen are fully hidden.
//         hideNonVisibleSlides();
//       }
  
  
//         /**
//           Fully hide non-visible slides by adding aria-hidden="true" and tabindex="-1" when they go out of view
//         */
//       function hideNonVisibleSlides() {
//         // Start by hiding all the slides and their content
//         slides.forEach(function(slide) {
//           slide.setAttribute('aria-hidden', true);
//           slide.querySelectorAll('a, button, select, input, textarea, [tabindex="0"]').forEach(function(focusableElement) {
//             focusableElement.setAttribute('tabindex', -1);      
//           });
//         });
        
//         // Since we know 3 slides are visible at a time, make sure that the 3 slides starting with the left-most one are not hidden to anybody.
//         if(leftMostSlideIndex < 6) {
//           slides[leftMostSlideIndex].removeAttribute('aria-hidden');
        
//         // Since scrolling stops when the carousel reaches the last three slides, we should make sure that these last three slides stay visible until the user wraps or goes backwards.
//         } else {
//           slides[i].removeAttribute('aria-hidden');
//         }
//       }
//     });

//   });

$(document).ready(function() {

  const element = document.querySelector(".cms-flex__page-content-full"); // selecciona el elemento HTML que quieres verificar
  const threshold = 350; // define el umbral que deseas utilizar (en píxeles)
  const searchForm = document.querySelector(".tab-content.widget-tab-container");
  if (window.innerWidth >= 1024) {
    window.addEventListener("scroll", function() {
      if (window.innerHeight < element.getBoundingClientRect().top + threshold) {
          searchForm?.classList.remove('fixed-widget')
          return true;
      }
      searchForm?.classList.add('fixed-widget')
    }); 
  }


// var swiper = new Swiper(".mySwiper", {
//     effect: "coverflow",
//     grabCursor: true,
//     centeredSlides: true,
//     slidesPerView: "auto",
//     coverflowEffect: {
//       rotate: 50,
//       stretch: 0,
//       depth: 100,
//       modifier: 1,
//       slideShadows: true,
//     },
//     pagination: {
//       el: ".swiper-pagination",
//     },
//   });

  
})
