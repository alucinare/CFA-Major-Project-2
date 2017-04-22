App.messages = App.cable.subscriptions.create('MessagesChannel', {
  received: function(data) {
    // apparently I don't need the #messages below, it was working with something else
    $("#messages").removeClass('hidden')
    return $('#messages').append(this.renderMessage(data));
  },
  renderMessage: function(data) {
    discuss = data.connect
    if (discuss = "Agree") {
      discuss = discuss.fontcolor("green");
    } else {
      discuss = discuss.fontcolor("red");
    }

    return "<p> <b>" + data.user + "</b>" + "(" + discuss + ")" + ": " + data.message + "</p>";
  }
});


// jQuery(document).on('turbolinks:load', function() {
//   var messages, messages_to_bottom;
//
//   messages = $('#messages');
//   if ($('#messages').length > 0) {
//     messages_to_bottom = function() {
//       return messages.scrollTop(messages.prop("scrollHeight"));
//     };
//     messages_to_bottom();
//     App.global_chat = App.cable.subscriptions.create('MessagesChannel', {
//      received: function(data) {
//         messages.append(data['message']);
//         return messages_to_bottom();
//       },
//       send_message: function(message, chat_room_id) {
//         return this.perform('send_message', {
//           message: message,
//           chat_room_id: chat_room_id
//         });
//       }
//     });
//     return $('#new_message').submit(function(e) {
//       var $this, textarea;
//       $this = $(this);
//       textarea = $this.find('#message_body');
//       if ($.trim(textarea.val()).length > 1) {
//         App.messages.send_message(textarea.val(), messages.data('chat-room-id'));
//         textarea.val('');
//       }
//       e.preventDefault();
//       return false;
//     });
//   }
// });


// jQuery(document).on('turbolinks:load', function() {
//   var messages, messages_to_bottom;
//   messages = $('#messages');
//   if ($('#messages').length > 0) {
//     messages_to_bottom = function() {
//       return messages.scrollTop(messages.prop("scrollHeight"));
//     };
//     messages_to_bottom();
//     App.global_chat = App.cable.subscriptions.create({
//       channel: "ChatRoomsChannel",
//       chat_room_id: messages.data('chat-room-id')
//     }, { received: function(data) {
//         messages.append(data['message']);
//         return messages_to_bottom();
//       },
//       send_message: function(message, chat_room_id) {
//         return this.perform('send_message', {
//           message: message,
//           chat_room_id: chat_room_id
//         });
//       }
//     });
//     return $('#new_message').submit(function(e) {
//       var $this, textarea;
//       $this = $(this);
//       textarea = $this.find('#message_body');
//       if ($.trim(textarea.val()).length > 1) {
//         App.global_chat.send_message(textarea.val(), messages.data('chat-room-id'));
//         textarea.val('');
//       }
//       e.preventDefault();
//       return false;
//     });
//   }
// });
