let state = {};
class Store {
  constructor() {
    state.count = 0;
    riot.observable(this);
  }

  countUp() {
    state.count += 1;
  }

  countDown() {
    state.count -= 1;
  }

  get count() {
    return state.count
  }
}

module.exports = Store;
