require 'spec_helper'

describe "welcome/index.html.erb" do

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
        para.should have_selector 'div',:class=>'head1',:count=>2

      end

    end

    it "has text who we are" do
      rendered.should have_selector 'div',:id=>'firstColumn' do | para |
        para.should have_selector 'div',:class=>'head1',:content=>'Who we are'

      end

    end
    it "lastcolumn has" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:count=>2

      end

    end
    it "has text Testimonials" do
      rendered.should have_selector 'div',:id=>'lastColumn' do | para |
        para.should have_selector 'div',:class=>'head2',:content=>'Testimonials'

      end

    end

  end
end
