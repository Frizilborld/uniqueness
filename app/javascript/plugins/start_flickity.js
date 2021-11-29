// import Flickity from "flickity";

// const start_carousel = () => {
//   let carousel = document.querySelector('.carousel');
//   let flkty = new Flickity(carousel, {
//     imagesLoaded: true,
//     percentPosition: false,
//   });

//   let imgs = carousel.querySelectorAll('.carousel-cell img');
//   // get transform property
//   let docStyle = document.documentElement.style;
//   let transformProp = typeof docStyle.transform == 'string' ?
//     'transform' : 'WebkitTransform';

//   flkty.on('scroll', function () {
//     flkty.slides.forEach(function (slide, i) {
//       let img = imgs[i];
//       let x = (slide.target + flkty.x) * -1 / 3;
//       img.style[transformProp] = 'translateX(' + x + 'px)';
//     });
//   });
// }

// export {start_carousel};
