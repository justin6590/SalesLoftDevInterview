module People
  class Api
    API_BASE = 'https://api.salesloft.com'.freeze

    def initialize
      @api_key = ENV['SALESLOFT_API_KEY']
    end

    def fetch(page, per_page)
      options = {
        headers: { 'Authorization' => "Bearer #{@api_key}" }
      }

      paging = "page=#{page}&per_page=#{per_page}&include_paging_counts=true"

      HTTParty.get("#{API_BASE}/v2/people.json?#{paging}", options)
    end
  end
end
