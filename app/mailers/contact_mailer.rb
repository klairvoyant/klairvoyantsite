class ContactMailer < ActionMailer::Base


  def contact(name,address,subject,bodydata)

    @name=name
    @address=address
    @bodydata=bodydata


    mail(:to => "john@klairvoyant.com",
         :from => "contact@klairvoyant.com",
         :subject => subject )

  end
end
