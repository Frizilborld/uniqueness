import Typed from 'typed.js';

const initTyped = () => {
  const element = document.querySelector('.typed-js');
  if (element) {
    console.log(element);
    new Typed('.typed-js', {
      strings: ['Uploading your artwork^1000\n `fetching components...` ^1000\n `Fetching from source...` Checking your artwork^1000\n `Splitting image into pixels...` ^1000\n `Breaking down pixel colours...`'],
      typeSpeed: 100,
      loop: true,
      showCursor: false
    });
  }
};
export { initTyped };
