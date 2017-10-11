require_relative 'appletree' # include our class in our spec file
RSpec.describe Appletree do  
  before(:each) do 
    @tree1 = Appletree.new(16, 3, 0)
  end

  it 'has a getter and setter for age attribute' do
    @tree1.age = 10 # this line would fail if our class did not have a setter method
    expect(@tree1.age).to eq(10) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end

  it "has only a getter method, not a setter for height" do
    expect{@tree1.height = 10}.to raise_error(NoMethodError) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 

  it "has only a getter method, not a setter for height" do
    expect{@tree1.count = 10}.to raise_error(NoMethodError) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
  end 
  
  context "test proper functionality for year_gone_by" do

  	it "does not grow apples for the first 3 years of life" do
    	@tree1.age = 0
    	3.times do 
    		@tree1.year_gone_by()
    		expect(@tree1.count).to eq(0) 
    	end
    end 

    it "picks all apples off the tree" do
    	@tree = Appletree.new(10,2,20)
    	@tree.pick_apples()
    	expect(@tree.count).to eq(0) # this line would fail if we did not have a getter or if it did not change the name successfully in the previous line.
    end 

    it "grows no more apples if older than ten" do
    	@tree1.age = 11
    	@tree1.year_gone_by()
    	expect(@tree1.count).to eq(0)
    end
  end

end