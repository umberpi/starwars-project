// banner.js
import Typed from 'typed.js';


const loadDynamicBannerText = () => {
  new Typed('#banner-typed-text', {
    strings: ["We all love Star Wars!"],
    typeSpeed: 100,
  });
}

export { loadDynamicBannerText };
