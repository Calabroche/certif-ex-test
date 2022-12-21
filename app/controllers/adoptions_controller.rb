class AdoptionsController < ApplicationController

  def new
    @adoption = Adoption.new
  end

  def create
    @adoption = Adoption.new(adoptions_params)

    if @adoption.save
      redirect_to adoptions_path, notice: "adoptions was successfully created."
    else
      render :new
    end
  end

  def destroy
    @adoption.destroy
    redirect_to adoptions_path, notice: "adoptions was successfully destroyed."
  end
end
