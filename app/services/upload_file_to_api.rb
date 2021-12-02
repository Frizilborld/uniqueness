class UploadFileToApi
  def self.call(file)
    new(file).call
  end

  def initialize(file)
    @file = file
  end

  def call
    url = URI("https://logoraisr-colortag.p.rapidapi.com/rest-v1/uploads/")

    headers = {
      "x-rapidapi-host" => 'logoraisr-colortag.p.rapidapi.com',
      "x-rapidapi-key" => ENV['RAPID_API_KEY']
    }

    params = {
      form: {
        file: HTTP::FormData::File.new(@file.path)
      }
    }

    # TODO: UNCOMMENT WHEN WE ARE READY TO USE THE API
    response = HTTP.headers(headers).post(url, params)
    body     = response.parse
    return body
  end
end
