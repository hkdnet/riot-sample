<app>
  <span>app tag</span>
  <counter
    count={ this.state.count }
    handlers={ this.handlers } ></counter>
  <script>
  this.state = store;
  this.handlers = {
    onButtonUpClick: ()=> {
      RiotControl.trigger('BUTTON_UP_CLICKED');
    },
    onButtonDownClick: ()=>{
      RiotControl.trigger('BUTTON_DOWN_CLICKED');
    }
  };
  RiotControl.on('BUTTON_UP_CLICKED', ()=> {
    this.state.count += 1;
    RiotControl.trigger('STATE_CHANGE');
  });
  RiotControl.on('BUTTON_DOWN_CLICKED', ()=> {
    this.state.count -= 1;
    RiotControl.trigger('STATE_CHANGE');
  });
  store.on('STATE_CHANGE', ()=> {
    this.update();
  });
  </script>
</app>
