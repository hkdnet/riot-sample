<app>
  <span>app tag</span>
  <counter
    count={ this.state.count }
    handlers={ this.handlers } ></counter>
  <script>
  this.state = store;
  let f = require('../lib/HandlerFactory.js');
  this.handlers = {};
  this.handlers['onButtonUpClick'] = RiotControl.generateDispatcher('onButtonUpClick', ()=> {
    this.state.count += 1;
    RiotControl.trigger('STATE_CHANGE');
  });
  this.handlers['onButtonDownClick'] = RiotControl.generateDispatcher('onButtonDownClick', ()=> {
    this.state.count -= 1;
    RiotControl.trigger('STATE_CHANGE');
  });
  store.on('STATE_CHANGE', ()=> {
    this.update();
  });
  </script>
</app>
