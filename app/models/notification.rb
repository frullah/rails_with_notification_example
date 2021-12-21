class Notification < ApplicationRecord
  include Noticed::Model
  belongs_to :recipient, polymorphic: true

  # after_create do
  #   broadcast_prepend_to "notifications",
  #     partial: "notifications/notification",
  #     locals: { notification: self }
  # end
end
