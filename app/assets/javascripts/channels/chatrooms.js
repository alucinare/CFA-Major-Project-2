//= require cable
//= require_self
//= require_tree .

// This is the consumer and it's, the client-side end of our persistent WebSocket connection.

this.App = {};

App.cable = ActionCable.createConsumer();
