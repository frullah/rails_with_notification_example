import consumer from "./consumer";

console.log("notification_channel");

consumer.subscriptions.create({channel: "Noticed::NotificationChannel", room: "recipient"}, {
  received(data) {
    if (Notification.permission === "granted") {
      new Notification("New post!")
    }
  }
})