# To deliver this notification:
#
# NewPost.with(post: @post).deliver_later(current_user)
# NewPost.with(post: @post).deliver(current_user)

class NewPost < Noticed::Base
  # Add your delivery methods
  #
  deliver_by :database
  deliver_by :action_cable
  # deliver_by :email, mailer: "UserMailer"
  # deliver_by :slack
  # deliver_by :custom, class: "MyDeliveryMethod"

  after_deliver do
    # it works
    # Turbo::StreamsChannel.broadcast_prepend_to "notifications",
    #   partial: "notifications/notification",
    #   locals: { notification: self },
    #   target: "notifications"
  end

  # Add required params
  #
  # param :post

  # Define helper methods to make rendering easier.
  #
  def message
    t(".message")
  end
  #
  def url
    post_path(params[:post])
  end
end
