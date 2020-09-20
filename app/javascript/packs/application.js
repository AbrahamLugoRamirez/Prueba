// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

import Vue from "vue/dist/vue.esm.js";
import App from "../app.vue";
import ButtonComponent from "../Button.vue";
import TurbolinksAdapter from "vue-turbolinks";
import Vuesax from "vuesax";
import "vuesax/dist/vuesax.css";

Vue.use(Vuesax);
Vue.use(TurbolinksAdapter);

Vue.component("c-button", ButtonComponent)
Vue.component("c-app", App)

document.addEventListener("turbolinks:load", () => {
  new Vue({
      el: '[data-behavior="vue"]'
  });
});
