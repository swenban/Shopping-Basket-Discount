require './shoppingb.rb'

describe 'get total value of shopping basket' do
    it "should equal zero when the shopping basket is empty" do
        basket = ShoppingBasket.new 
        expect(basket.get_total_value(0)).to eq(0.00)
    end
end

describe 'get number of items' do
    it "should equal 1 when there is 1 item in the shopping basket" do
        basket = ShoppingBasket.new
        expect(basket.get_number_of_items(["choc"])).to eq(1)
    end

    it "should equal 2 when there are 2 items in the shopping basket" do
        basket = ShoppingBasket.new
        expect(basket.get_number_of_items(["bread", "cheese"])).to eq(2)
    end
end

