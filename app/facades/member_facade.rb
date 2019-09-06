class MemberFacade
  def members
    response = Faraday.get('http://westerosapi.herokuapp.com/api/v1/house/stark?api_key=egg')
    binding.pry
    result = JSON.parse(response.body, symbolize_names: true)


  end
end
