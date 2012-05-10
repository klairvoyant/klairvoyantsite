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
        if session[:mobile_view]==true
          redirect_to(:action =>"contact", :format=> "mobile")
         return
        elsif session[:tablet_view]==true
          redirect_to(:action =>"contact", :format=> "tablet")
          return
        else
          redirect_to(:action =>"contact")
          return
        end


    end
    if session[:mobile_view]==true
      redirect_to(:action =>"contact", :format=> "mobile",:name=>name,:address=>address,:subject=>subject,:bodydata=>bodydata )
    elsif session[:tablet_view]==true
      redirect_to(:action =>"contact", :format=> "tablet",:name=>name,:address=>address,:subject=>subject,:bodydata=>bodydata )
    else
      redirect_to(:action =>"contact", :name=>name,:address=>address,:subject=>subject,:bodydata=>bodydata )
    end



  end

end
