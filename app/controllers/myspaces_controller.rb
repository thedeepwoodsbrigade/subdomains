class MyspacesController < ApplicationController
  def index
    @user = User.where(name: request.subdomain).first
    if @user
      render template: "myspaces/#{@user.name}/index" and return
    end
  end
end
