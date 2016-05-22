const reg = /([A-Z])/g;
class DispatcherMaker {
  constructor(rc) {
    this.rc = rc;
    this.handler = [];
  }
  add(name, func) {
    let eventName = name.replace(reg, "_$1").toUpperCase();
    this.rc.on(eventName, func);
    this.handler[name] = ()=> {
      this.rc.trigger(eventName);
    };
  }
  make() {
    return this.handler;
  }
}

module.exports = DispatcherMaker;
