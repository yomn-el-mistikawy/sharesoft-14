class UserMailer < ActionMailer::Base
  default :from => "smtp@gmail.com"

  def post_email(post, entity)
  	@text = post.text
  	@title = post.title
  	mail(:to => entity.e_mail, :subject => "Post email")
  	//the only problem here is queries (entity.e_mail) linked with GroupStartup.
 end
 def comment_email(comment, entity)
 	@comment = comment.comment
 	@commenter = comment.commenter
 	mail(:to => entity.e_mail, :subject => "Comment email")
 	//the only problem here is queries (entity.e_mail) linked with GroupStartup.
 end

