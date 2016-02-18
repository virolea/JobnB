class PostMailer < ApplicationMailer
  def creation_confirmation(post)
    @post = post

    mail(
      to:       @post.user.email,
      subject:  "Post #{@post.name} created!"
    )
  end
end
