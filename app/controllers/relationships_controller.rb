class RelationshipsController < ApplicationController
before_action :signed_in_user

  def create
  	@user = current_user
    @monster = Monster.find(params[:relationship][:monster_id])
    current_user.capture!(@monster)
    redirect_to @user
  end

private

    def signed_in_user
      redirect_to signin_url, notice: "Please sign in." unless signed_in?
    end
end