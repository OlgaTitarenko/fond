import Swiper from 'swiper';
import 'swiper/css';

const swiper = new Swiper(".mySwiper", {
    slidesPerView: "auto",
    spaceBetween: 30,
    speed: 400,
    pagination: {
      el: ".swiper-pagination",
      clickable: true,
    },
  });
