require 'spec_helper'

describe WithObject do

  class Report

    def allowed; end
    def not_allowed; end

    private :not_allowed
  end

  let(:report) { Report.new }

  it 'returns the object' do
    with(report){}.should == report
  end

  it 'does not call private methods on the object' do
    expect {
      with(report) { not_allowed }
    }.to raise_error(NoMethodError)
  end

  it 'calls public methods on the object' do
    expect {
      with(report) { allowed }
    }.not_to raise_error
  end

  it 'allows chaining multiple methods' do
    a = "12345"

    with a do
      replace("54321")
      chop!
    end

    a.should == "5432"
  end

end