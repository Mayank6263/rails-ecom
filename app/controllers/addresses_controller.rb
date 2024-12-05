class AddressesController < ApplicationController
  def new
    @address = current_user.build_address
  end

  def create
    @address = current_user.build_address(address_params)
    if @address.save
      redirect_to root_path, notice: 'Address created successfully.'
    else
      render :new
    end
  end

  def edit
    @address = current_user.address
  end

  def update
    @address = current_user.address
    if @address.update(address_params)
      redirect_to root_path, notice: 'Address updated successfully.'
    else
      render :edit
    end
  end

  private

  def address_params
    params.require(:address).permit(:colony, :city, :pincode, :country)
  end
end
