const OrignalRiotControl = require('riotcontrol');

let _histories = [];

module.exports = Object.assign({}, OrignalRiotControl, {
  trigger() {
    _histories.push(arguments);
    console.log(arguments);
    OrignalRiotControl.trigger(...arguments);
  },
  history() {
    return _histories;
  }
});
