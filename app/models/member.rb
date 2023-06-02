class Member < ApplicationRecord

    @country = :UA
    validates :name, :presence => true
    validates :email, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :phone,:presence => true,
                 :numericality => true,
                 :length => { :minimum => 10, :maximum => 15 }
    validates :state, presence: true
    validates :city,  presence: true
    def countries
        CS.countries
    end
    def state_opts
        # CS.states(:UA).with_indifferent_access
        ['Автономна республіка Крим','Вінницька область', 'Волинська область','Дніпропетровська область', 'Донецька область', 'Житомирська область', 'Закарпатська область', 'Запорізька область', 'Івано-Франківська область', 'Київська область', 'Кіровоградська область', 'Луганська область', 'Львівська область', 'Миколаївська область', 'Одеська область', 'Полтавська область', 'Рівненська область', 'Сумська область', 'Тернопільська область', 'Харківська область', 'Херсонська область', 'Хмельницька область', 'Черкаська область', 'Чернівецька область', 'Чернігівська область']
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
