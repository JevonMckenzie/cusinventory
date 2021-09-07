class PostmodMailer < ApplicationMailer

  default from: 'jevonmmckenzie@gmail.com'

  def welcome_email(postmod)
    #@postmod = params[:postmod]
    @postmod = postmod

    #attachments[@postmod.pdfile_file_name] = "" if @postmod.pdfile_file_name.nil?
    attachments[@postmod.pdfile_file_name] = File.read(@postmod.pdfile.path ) if @postmod.pdfile_file_name.present?
    mail(to: ['bellcus00@gmail.com', postmod.otherasdbox], subject: "A Post Modification Notification has arrived. Please see summary of details.")
  
    #@url  = 'http://customsapplications.herokuapp.com/users/sign_in'
    #attachments['pdfile.pdf'] = File.read('/path/to/pdfile.pdf')
    #mail(to: 'jevonmmckenzie@gmail.com', subject: 'New Request for Post Modification has arrived. Please see summary of details.')
    
  
  end
end
	