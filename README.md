# Rails with notification example

this app is a sample of how to use the notification in Rails app.

i will make this as a simple blog app that when there is a new post it gives a notification.

## TODO

- [x] create `post` scaffold with attribute `content`
- [x] show notification in the right side of the layout
- [x] ~~create `notification` model with attribute `message`~~
- [x] create `notification` model with [`noticed`](https://github.com/excid3/noticed) gem
- [] create `@rails/actioncable` consumer. [reference](https://guides.rubyonrails.org/action_cable_overview.html#client-side-components)
- [ ] show notification to the user when there is a new post. how can i do it ?
    - using turbo ?
    - using stimulus ?
    - using ActionCable ?
