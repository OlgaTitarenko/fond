class BecomeMember < ApplicationRecord
    # validates :country, presence: true
    # validates :address_line_1, presence: true
  
    # # state has to be valid when changing a country
    # validates :state, inclusion: { in: ->(record) { record.state_opts.keys }, allow_blank: true }
    # validates :state, presence: { if: ->(record) { record.state_opts.present? } }
  
    # # some countries don't have any cities, like Vatican.
    # # city has to be valid when changing a country/state
    # validates :city, inclusion: { in: ->(record) { record.city_opts }, allow_blank: true }
    # validates :city, presence: { if: ->(record) { record.city_opts.present? } }

    validates :state, presence: true
    validates :city, presence: true
    def countries
      CS.countries
    end
  
    def states
      CS.states(country)
    end
  
    def cities
      CS.cities(state, country) || []
    end
  
    def country
    #   country_opts[country]
    :ua
    end
  
    def state_name
      state_opts[state]
    end

end
