class Admin < ApplicationRecord

  has_secure_password

  def self.confirm(params)
    @admin = Admin.find_by({username: params[:username]})

    # @admin.password = params[:password]
    # @admin.save

    p @admin
    @admin ? @admin.authenticate(params[:password]) : false
  end

end
