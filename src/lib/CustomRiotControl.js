const OrignalRiotControl = require('riotcontrol');
const reg = /([A-Z])/g;

let _histories = [];

module.exports = Object.assign({}, OrignalRiotControl, {
  trigger() {
    _histories.push(arguments);
    console.log(arguments);
    OrignalRiotControl.trigger(...arguments);
  },
  history() {
    return _histories;
  },
  generateDispatcher(name, func) {
    let eventName = name.replace(reg, "_$1").toUpperCase();
    OrignalRiotControl.on(eventName, func);
    return ()=> {
      RiotControl.trigger(eventName);
    }
  }
});
