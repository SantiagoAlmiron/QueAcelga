class Amount < ApplicationRecord
  belongs_to :order, optional: true
  belongs_to :product

  def self.unit_price_for(quantity)
    if quantity >= 12
      33
    elsif quantity >= 8
      45
    elsif quantity >= 4
      60
    end 
  end

end


# <% while counter > 0 %>
#         <% if counter % 12 == 0 %>
#           price += 400 * (counter / 12).to_i
#           counter = counter - 12 * ((counter / 12).to_i)
#         <% elsif counter % 8 == 0 %>
#           price += 250 * (counter / 8).to_i
#           counter = counter - 8 * ((counter / 8).to_i)
#         <% elsif counter % 4 == 0 %>
#           price += 100 * (counter / 4).to_i
#           counter = counter - 4 * ((counter / 4).to_i)
#         <% end %>
#     <% end %>