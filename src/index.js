let riot = require('riot');
window.riot = riot;
window.RiotControl = require('./lib/CustomRiotControl.js');
require('./tag/app.tag');
require('./tag/counter.tag');
const Store = require('./store.js');
window.store = new Store();
RiotControl.addStore(store);

document.addEventListener('DOMContentLoaded', ()=> {
  riot.mount('*');
})
