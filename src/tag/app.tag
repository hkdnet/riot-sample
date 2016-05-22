<app>
  <span>app tag</span>
  <counter
    count={ this.state.count }
    handlers={ this.handlers } ></counter>
  <script>
  this.state = store;
  const DispatcherMaker = require('../lib/DispatcherMaker.js');
  let maker = new DispatcherMaker(RiotControl);
  maker.add('onButtonUpClick', ()=> {
    this.state.countUp();
    RiotControl.trigger('STATE_CHANGE');
  });
  maker.add('onButtonDownClick', ()=> {
    this.state.countDown();
    RiotControl.trigger('STATE_CHANGE');
  });
  this.handlers = maker.make();
  store.on('STATE_CHANGE', ()=> {
    this.update();
  });
  </script>
</app>
