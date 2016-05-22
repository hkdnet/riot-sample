let riot = require('riot');
window.riot = riot;
window.RiotControl = require('riotcontrol');
require('./tag/app.tag');
require('./tag/counter.tag');

document.addEventListener('DOMContentLoaded', ()=> {
  riot.mount('*');
})
