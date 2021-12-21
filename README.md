# Rails with notification example

this app is a sample of how to use the notification in Rails app.

i will make this as a simple blog app that when there is a new post it gives a notification.

## TODO

- [x] create `post` scaffold with attribute `content`
- [x] show notification in the right side of the layout
- [x] ~~create `notification` model with attribute `message`~~
- [x] create `notification` model with [`noticed`](https://github.com/excid3/noticed) gem
- [x] create `@rails/actioncable` consumer. [reference](https://guides.rubyonrails.org/action_cable_overview.html#client-side-components)
- [x] show notification to the user when there is a new post by handle it on `received(data)` inside subscription second parameter (`mixin`)
- [ ] notify new post to the user in the background.
    references
    - [Introduction to Push Notifications](https://developers.google.com/web/ilt/pwa/introduction-to-push-notifications)
    - [Background sync and notifications](https://pwa-workshop.js.org/6-background-sync/#update-and-notification)