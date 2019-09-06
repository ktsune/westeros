class MemberFacade
  def initialize(house)
    @house = house
  end

  def members
    response = Faraday.get("http://westerosapi.herokuapp.com/api/v1/house/#{@house}?&api_key=egg")
    result = JSON.parse(response.body, symbolize_names: true)

    # => to get to members: result[:data][0][:attributes][:members]
    result[:data][0][:attributes][:members].map do |member_data|
        House.new(member_data)
      end
  end
end
