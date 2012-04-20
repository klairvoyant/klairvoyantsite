require 'spec_helper'

describe "welcome/contact.html.erb" do
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

    it "has text Contact Us" do
      rendered.should have_selector 'div',:id=>'firstColumn' do | para |
        para.should have_selector 'div',:class=>'head1',:content=>'Contact Us'

      end

    end
    it "lastcolumn has" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:count=>2

      end

    end
    it "has text Address" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:content=>'Address'

      end

    end

  end
end
