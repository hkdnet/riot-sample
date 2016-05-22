class Store {
  constructor() {
    this.count = 0;
    riot.observable(this);
  }
}

module.exports = Store;
