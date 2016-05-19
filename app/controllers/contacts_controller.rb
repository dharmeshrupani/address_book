class ContactsController < ApplicationController
  def home
  	@contact = current_user.contacts.build if logged_in?
  end
  
  def create
    @contact = current_user.contacts.build(contact_params)
    if @contact.save
      flash[:success] = "Contact created!"
      redirect_to :back
    else
      render 'contacts/show'
    end
  end

  def destroy
  end

  private

    def contact_params
      params.require(:contact).permit(:firstname, :lastname, :email, :phone, :address_line1, :address_line2, :city, :zipcode, :country, :state)
    end

end
