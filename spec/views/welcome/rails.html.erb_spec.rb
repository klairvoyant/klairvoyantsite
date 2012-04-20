require 'spec_helper'

describe "welcome/rails.html.erb" do
  context "and no posts are present" do
    before do
      assign :posts, []
      render
    end
    it "have menu" do
      rendered.should have_selector 'ul',:count => 1,:class=>'dropdown'
    end

    it "first column has" do
      rendered.should have_selector 'div',:id=>'firstColumn' do | para |
        para.should have_selector 'div',:class=>'head1',:count=>3

      end

    end

    it "has text Ruby on Rails" do
      rendered.should have_selector 'div',:id=>'firstColumn' do | para |
        para.should have_selector 'div',:class=>'head1',:content=>'Ruby On Rails'

      end

    end
    it "lastcolumn has" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:count=>4

      end

    end
    it "has text Portfolio" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:content=>'Portfolio'

      end

    end

  end
end
