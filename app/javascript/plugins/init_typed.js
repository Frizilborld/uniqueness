import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    console.log(element);
    new Typed('.typed-js', {
      strings: ['Uploading image... \n Blowing up pixels... \n Measuring colour complexity... \n Getting results...'],
      typeSpeed: 110,
      backSpeed: 110,
      cursorChar: '_',
      shuffle: false,
      smartBackspace: true,
      loop: false,
    });
  }
};
export { initTyped };
