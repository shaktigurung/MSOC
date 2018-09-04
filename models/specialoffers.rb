class Special
    attr_accessor :discounts, :excursions, :packages 
    def initialize discounts, excursions, packages 
        @discounts = discounts
        @excursions = excursions
        @packages = packages
    end 

    def promos 
            puts "Here are the Hottest Deals Today!"
            puts "#{@discounts}" 
    end





end

