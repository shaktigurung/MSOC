require 'command_line_reporter'

class Title 
    include CommandLineReporter
  
    def title
        header title: 'MS Ocean Cruises - Plan Trip of Your Life', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true,
        timestamp: true
        
        footer title: 'Developed by: Mike $ Shakti ', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true
        
        table(border: true) do
         row do
           column('Choose Options', width: 30, align: 'left', padding: 5,  color: 'red')
         end
         row do
           column('1. Ships ')
         end
         row do
            column('2. Cruises ')
          end
          row do
            column('3. Book Now ')
          end
          row do
            column('4. Special Offers ')
          end
          row do
            column('5. Exit ')
          end
       end
       header title: '', 
        width: 80, 
        align: 'center', 
        rule: true, 
        color: 'blue', 
        bold: true
       footer title: 'copyright@msoceancruises2018 ', 
       width: 80, 
       align: 'center', 
       rule: true, 
       color: 'blue', 
       bold: true
    end

    def titlebooking
      header title: 'Booking Details ', 
      width: 80, 
      align: 'center', 
      rule: true, 
      color: 'blue', 
      bold: true, 
      timestamp: true
      footer title: ' ', 
      width: 80, 
      align: 'center', 
      rule: true, 
      color: 'blue', 
      bold: true
  end
end