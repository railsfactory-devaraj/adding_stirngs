require "spec_helper"

describe AddingStirngs do
  it "has a version number" do
    expect(AddingStirngs::VERSION).not_to be nil
  end
  it "should get result 0 for input empty string" do
    expect(AddingStirngs.adding_string '').to eq(0)
  end
  it "should get result 3 for input 1,2" do
    expect(AddingStirngs.adding_string '1,2').to eq(3)
  end

  it "should get result 3 for input 1****2" do
  	expect(AddingStirngs.adding_string '1****2').to eq(3)
  end
  it "should get result 3 for input 1'/\'n2" do
  	expect(AddingStirngs.adding_string "1\n2").to eq(3)
  end
  it "should raise an error for invalid string" do
  	expect{AddingStirngs.adding_string "-1,2"}.to raise_exception
  end
end
