class MemberFacade
  def members
    response = Faraday.get('http://westerosapi.herokuapp.com/api/v1/house/stark?api_key=egg')
    result = JSON.parse(response.body, symbolize_names: true)

    # => to get to members: result[:data][0][:attributes][:members]
    result[:data].map do |data|
      data[:attributes][:members].map do |member_data|
        # binding.pry
        House.new(member_data)
      end
    end
  end
end
