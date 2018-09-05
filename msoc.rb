require 'tty-progressbar' 
require 'tty-table'
require 'coupon_code'
require 'command_line_reporter'

require_relative 'models/ships'
require_relative 'models/title'
require_relative 'models/cruises'
require_relative 'models/booknow'
require_relative 'models/specialoffers' 
##### This will help to clear screen ######
clear_code = %x{clear}
print clear_code

######## This is for Progress Bar #####
bar = TTY::ProgressBar.new("downloading [:bar]", total: 10)
10.times do
  sleep(0.1)
  bar.advance(1)
end
clear_code = %x{clear}
print clear_code
#### This will help to run the menu again and again ####
while  true do
Title.new.title
puts " Please Choose your Option Number ?"
        options = gets.chomp
        options = options.upcase
    if (options == "ships" || options == "SHIPS" || options == "1" )
        clear_code = %x{clear}
        print clear_code
            ship1 =Ships.new("MS Sky", 100, 2010)
            ship2 =Ships.new("MS Star", 250, 2014)
            ship3 =Ships.new("MS Sun", 350, 2016)
            ship4 =Ships.new("MS Moon", 500, 2018) 
            ship1.shiptitle
            ship1.show
            ship2.show
            ship3.show
            ship4.show
    elsif (options == "Cruises" || options == "CRUISES"|| options == "2" )
        clear_code = %x{clear}
        print clear_code
        cruise1 = Cruises.new("Asia", "Hong Kong", "Hong Kong Disneyland")
        cruise2 = Cruises.new("Africa", "South Africa", "Madagascar")
        cruise3 = Cruises.new("America", "Mexico & Caribbean", "Bermuda Triangle")
        cruise4 = Cruises.new("Oceania", "Australia & New Zealand", "Great Barrier Reef") 
        cruise5 = Cruises.new("Europe", "France & Italy", "Eiffel Tower & Rome") 
        cruise1.cruisetitle
        cruise1.show
        cruise2.show
        cruise3.show
        cruise4.show   
    elsif (options == "booknow" || options == "BOOKNOW"|| options == "3" )
            clear_code = %x{clear}
            print clear_code
            puts "Welcome to Our Book Now Page"
            puts " Enter your fullname :"
            fullname = gets.chomp
            puts " Enter your address :"
            address = gets.chomp
            puts " Enter your phone number :"
            phone_number = gets.chomp.to_i
            puts " Enter your email : "
            email = gets.chomp
            puts " Enter your preferred ship(1.MS Sky 2.MS Star 3.MS Sun  4. MS Moon) : "
            ship_name = gets.chomp
            puts " Enter your preferred Cruise Voyage (1.Asia 2.Africa 3.America 4. Oceania 5. Europe): "
            cruise = gets.chomp
            customer = Booknow.new(fullname, address, phone_number, email, ship_name , cruise)
            customer.Itinerary

    elsif (options == "special" || options == "SPECIAL"|| options == "4" )
            clear_code = %x{clear} 
            print clear_code 
            while true do
                puts "*************************************************************"
                puts "Welcome to Our Special Offers Page"
                puts "*************************************************************"
                puts "Please Make a Selection:" 
                puts " 1. Discount " + "2. Excursions " + " 3. Packages " + " 4. Menu "
                puts "*************************************************************"
                options = gets.chomp 
                options = options.upcase 
                clear_code = %x{clear} 
                print clear_code
                if (options == '1'|| options == " DISCOUNT ")
                    code = CouponCode.generate
                    CouponCode.validate(code)
                    puts " Discount Code : " + CouponCode.generate(parts: 4)
                elsif(options == '2'|| options == " EXCURSIONS ")
                    puts " Excursion section " 
                elsif(options == '3'|| options == " PACKAGES ")
                    puts " Packages section " 
                elsif (options == "menu" || options == "MENU"|| options == "4" )
                    clear_code = %x{clear} 
                    print clear_code 
                    break
                else
                    puts "Invalid Selection"      
                end
            end

    elsif (options == "exit" || options == "EXIT"|| options == "5" )
            puts "See you again. Thank you"
            break
    else
            puts "Invalid Selection"
    end
end

##### Image Section ####