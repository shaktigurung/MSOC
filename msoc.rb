require 'tty-progressbar' 
require 'tty-table'
require 'coupon_code'
require 'command_line_reporter'
require 'tty-prompt'

require_relative 'models/ships'
require_relative 'models/title'
require_relative 'models/cruises'
require_relative 'models/booknow'
require_relative 'models/specialoffers' 
##### This will help to clear screen ######
clear_code = %x{clear}
print clear_code
prompt = TTY::Prompt.new
welcome = prompt.ask("What is your name?") do |q|
    q.required true
    q.validate /\A\w+\Z/
    q.modify :capitalize
end
puts " Welcome to MS Ocean Cruises #{welcome}"
prompt.yes?('Are you excited about Cruise Tour ?')
prompt.yes?('Lets do it...')
######## This is for Progress Bar #####
bar = TTY::ProgressBar.new("downloading [:bar]", total: 10)
10.times do
  sleep(0.1)
  bar.advance(1)
end

#### This will help to run the menu again and again ####
clear_code = %x{clear}
print clear_code
while  true do
Title.new.title
puts " Please Choose your Option Number from above list ?"
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
            Title.new.titlebooking
            fullname = prompt.ask("What is your name?") do |q|
                q.required true
                q.validate(/\A\w+\Z/,'Invalid Name')
            end
            address = prompt.ask("Enter your address?") do |q|
                q.required true
            end
            phone_number = prompt.ask('Enter your phone number ') do |q|
                q.validate(/\b^([0-9]{10})$\b/, 'Invalid Phone number')
            end
            email = prompt.ask('What is your email?') do |q|
                q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
            end
            ship_name = prompt.select("Choose your Ship?", %w(MSSky MSStar MSSun  MSMoon))
            cruise = prompt.select("Choose your Voyage?", %w(Asia Africa America Oceania Europe))
            trip_duration = prompt.select("Choose Trip Duration ?", %w(One-Week Two-Week Three-Week Four-Week))
            customer = Booknow.new(fullname, address, phone_number, email, ship_name , cruise,  trip_duration)
            customer.Itinerary

    elsif (options == "special" || options == "SPECIAL"|| options == "4" )
            clear_code = %x{clear} 
            print clear_code 
            while true do
                Title.new.titleSpecial
                puts " Please Choose your Option Number from above list ?"
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
            prompt.yes?('Are you sure you want to exit ?')
            puts "See you again. Thank you"
            break
    else
            puts "Invalid Selection"
    end
end

