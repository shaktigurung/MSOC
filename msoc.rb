# require 'tty-progressbar' 

######### This is for Progress Bar #####
# bar = TTY::ProgressBar.new("downloading [:bar]", total: 30)
# 30.times do
#   sleep(0.1)
#   bar.advance(1)
# end

##### This will help to clear scree ######
clear_code = %x{clear}
print clear_code

#### This will help to run the menu again and again ####
while  true do
puts "************************************************************"
puts " Welcome to  MS Ocean Cruises " +  " Trip of your life Time "
puts "*************************************************************"

puts " 1. Ships " + " 3. Book Now "
puts " 2. Cruises " + " 4. Special Offers " + " 5. Exit "

puts " Please Enter what you want to do ?"
    options = gets.chomp
    options = options.upcase
    if (options == "ships" || options == "SHIPS" || options == "1" )
            puts " Welcome to Our Ships Page"
    elsif (options == "Cruises" || options == "CRUISES"|| options == "2" )
            puts " Welcome to Our Cruises Page"
    elsif (options == "booknow" || options == "BOOKNOW"|| options == "3" )
            puts "Welcome to Our Book Now Page"
    elsif (options == "special" || options == "SPECIAL"|| options == "4" )
            puts "Welcome to Our Special Page"
    elsif (options == "exit" || options == "EXIT"|| options == "5" )
            puts "See you again. Thank you"
            break
    else
            puts "Invalid Selection"
    end
end







##### Image Section ####