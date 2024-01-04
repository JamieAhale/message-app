// Configure your import map in config/importmap.rb. Read more: https://github.com/rails/importmap-rails
import "@hotwired/turbo-rails"
import "./controllers"
import * as bootstrap from "bootstrap"
import "./channels"

function scrollToBottom() {
  console.log("Calling scrollToBottom...");
  var chatbox = document.getElementById('chatbox');
  if (chatbox) {
    console.log("Chatbox found. Scroll Height:", chatbox.scrollHeight);
    chatbox.scrollTop = chatbox.scrollHeight;
    console.log("Chatbox scrollTop set to:", chatbox.scrollTop);
  } else {
    console.log("Chatbox not found.");
  }
}




  



