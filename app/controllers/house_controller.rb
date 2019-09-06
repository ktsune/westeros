class HouseController < ApplicationController
  def index
    render locals: { facade: MemberFacade.new }
  end
end
