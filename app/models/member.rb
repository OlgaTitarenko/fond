class Member < ApplicationRecord

    @country = :UA
    validates :name, :presence => true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates :state, presence: true
    validates :city, inclusion: { in: -> (record) { record.cities }}
    def countries
        CS.countries
    end
    def state_opts
        CS.states(:UA).with_indifferent_access
      end
    
      def city_opts
        CS.cities(state, :UA) || []
      end
      def state_name
        state_opts[state]
      end


    def states
        CS.states(:UA).with_indifferent_access
    end
    
    def cities
        CS.cities(state, :UA) || []
    end
    
    
end
