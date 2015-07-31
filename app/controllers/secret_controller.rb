class SecretController < ApplicationController
  before_action :authenticate, only: :secret

  def public_info
  end

  def secret
  end

end
