class SearchController < ApplicationController
  def index
    render locals: { facade: MemberFacade.new(params[:houses]) }
  end
end
