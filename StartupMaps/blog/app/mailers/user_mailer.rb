class UserMailer < ActionMailer::Base
  default :from => "youssefattaby@gmail.com"

  def post_email(post, entity)
  	@post=post
  	mail(:to => entity.e_mail, :subject => "Post email")
 end
 def comment_email(comment, entity)
 	@comment =comment
 	mail(:to => entity.e_mail, :subject => "Comment email")
 end
  def group_email(group, entity)
 	@group =group
 	mail(:to => entity.e_mail, :subject => "Group email")
 end