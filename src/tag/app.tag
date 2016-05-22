<app>
  <span>app tag</span>
  <counter count={this.state.count} onClick={ this.onClick } buttonText="up">
  </counter>
  <script>
  RiotControl.on('STATE_CHANGE', ()=> {
    this.update();
  });
  this.state = {
    count : 0
  };
  this.onClick = ()=> {
    this.state.count += 1;
    RiotControl.trigger('STATE_CHANGE');
  };
  </script>
</app>
