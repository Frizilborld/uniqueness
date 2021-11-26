class GetColorTags
  def self.call(file_id)
    new(file_id).call
  end

  def initialize(file_id)
    @file_id = file_id
  end

  def call
    url = URI("https://logoraisr-colortag.p.rapidapi.com/rest-v1/reports/")

    headers = {
      "x-rapidapi-host" => 'logoraisr-colortag.p.rapidapi.com',
      "x-rapidapi-key"  => ENV['RAPID_API_KEY']
    }

    params = {
      "file_id": @file_id,
      "process": "color-classification"
    }

    payload = <<~JSON
      {
        "report_number":21,
        "created":"2021-11-23T16:55:11.927968+01:00",
        "file_id":"47504935620d459796af1915ba158dd5",
        "processing_algorithm":"color-classification",
        "result": {
          "number_of_pixel_in_image":340228,
          "width":812,
          "height":419,
          "colors":[
            {"red":248,"green":251,"blue":250,"percentage":"71.93","number_of_pixel":244742,"hex":"#f8fbfa"},
            {"red":52,"green":59,"blue":62,"percentage":"22.67","number_of_pixel":77121,"hex":"#343b3e"},
            {"red":154,"green":148,"blue":136,"percentage":"5.40","number_of_pixel":18365,"hex":"#9a9488"}
          ]
        }
      }
    JSON
    body = JSON.parse(payload)

    # TODO: UNCOMMENT WHEN WE ARE READY TO USE THE API
    response = HTTP.headers(headers).post(url, json: params)
    body     = response.parse

    return body
  end
end
