require 'spec_helper'

describe Entry do 
  describe 'attributes' do

    let(:blank) {[nil, '']}

    it { should have_valid(:title).when('Blerg') }
    it { should_not have_valid(:title).when(*blank) }

    it { should have_valid(:description).when('desc') }
    it { should_not have_valid(:description).when(*blank) }

    it { should have_valid(:category).when(Category.new) }
    it { should have_valid(:category).when(nil) }

  end
end