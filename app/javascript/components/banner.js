import Typed from 'typed.js';

const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["The best cocktails in town"],
    typeSpeed: 90,
    loop: true
  });
}

export { loadDynamicBannerText };
