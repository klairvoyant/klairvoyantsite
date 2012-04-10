class WelcomeController < ApplicationController
  def index
  end

  def services
  end

  def contact

  end

  def rails
  end


  def sendmail
    @data_hash = params[:cruncher]

    name=@data_hash[:name]
    address=@data_hash[:address]
    subject=@data_hash[:subject]
    bodydata=params[:cruncher][:bodydata]

    if bodydata.blank?
      flash[:notice]="Please fill the Message Field"
    elsif address.blank?
      flash[:notice]="Please fill the Email Field"
    elsif  address.match('.+@.+\..+').nil?
      flash[:notice]="Please fill with proper email ID"
    else
        ContactMailer.contact(name,address,subject,bodydata).deliver
        flash[:notice]="Thanks,mail send successfully"
        redirect_to(:action =>"contact")
        return

    end
    redirect_to(:action =>"contact", :name=>name,:address=>address,:subject=>subject,:bodydata=>bodydata )


  end

end
