require 'spec_helper'

describe UnevenBars do
  let(:gymnast) { Gymnast.new('Kate') }
  let(:gymnast2) { Gymnast.new('Audrey') }

  it "should allow us to mount" do
    expect(subject.mount(gymnast)).to eq("#{gymnast.name} is now on the uneven bars.")
  end

  it "should not allow us to mount if there is already a gymnast on it" do
    subject.mount(gymnast)
    expect(subject.mount(gymnast2)).to eq("A gymnast is already on the uneven bars.")
  end

  it "should swing the gymnast from the low to the high bar" do
    expect(subject.swing).to eq("The gymnast is now on the high bar.")
  end
end
