// this is the same as rooms.coffee in site point tut
jQuery(document).on('turbolinks:load', function() {
  var messages, messages_to_bottom;
  messages = $('#messages');
  if ($('#messages').length > 0) {
    messages_to_bottom = function() {
      return messages.scrollTop(messages.prop("scrollHeight"));
    };
    messages_to_bottom(); //sitepoint

    App.messages = App.cable.subscriptions.create('MessagesChannel', {
      received: function(data) {
        // apparently I don't need the #messages below, it was working with something else
        $("#messages").removeClass('hidden')
        messages.append(this.renderMessage(data));
        return messages_to_bottom(); //sitepoint
      },

      renderMessage: function(data) {

        var discuss = ((data.connect == "Agree") ? data.connect.fontcolor("green") : data.connect.fontcolor("red"));

        // discuss = changeTextColour(data);

        return "<p> <b>" + data.user + "</b>" + "(" + discuss + ")" + ": " + data.message + "</p>";
      }
    });
  } //sitepoint
});
  // function changeTextColour (data) {
  //
  //   if (data.connect = "Agree") {
  //     return data.connect.fontcolor("green");
  //   } else if (data.connect = "Disagree") {
  //     return data.connect.fontcolor("red");
  //   }
  // }
