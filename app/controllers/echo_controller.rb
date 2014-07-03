class EchoController < ApplicationController

  before_action do
    @params_to_print = {}
  end

  def echo
    @params_to_print = params.to_hash.except('utf8', 'authenticity_token', 'template', 'commit', 'action', 'controller')
    render action: params[:template]
  end

end