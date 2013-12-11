require 'rspec'

describe 'Peak finder' do

  it 'finds 1D peaks' do
    find_1d_peak([1]).should == 1
    find_1d_peak([1, 2]).should == 2
    find_1d_peak([2, 1]).should == 2
    find_1d_peak([1, 2, 1]).should == 2
    find_1d_peak([1, 2, 1, 2, 3]).should == 2
    find_1d_peak([1, 2, 3, 5, 4]).should == 5
    find_1d_peak([1, 3, 3, 3, 4]).should == 3
    find_1d_peak([1, 3, 3, 4, 3]).should == 4
  end
end