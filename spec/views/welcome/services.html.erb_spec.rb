require 'spec_helper'

describe "welcome/services.html.erb" do

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
        para.should have_selector 'div',:class=>'head1',:count=>1

      end

    end

    it "has text who we are" do
      rendered.should have_selector 'div',:id=>'firstColumn' do | para |
        para.should have_selector 'div',:class=>'head1',:content=>'Our Services'

      end

    end
    it "lastcolumn has" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:count=>2

      end

    end
    it "has text Payment" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:content=>'Payment'

      end

    end

  end
end
