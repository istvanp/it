# encoding: UTF-8

require 'spec_helper'
require 'it'

describe It, '.link' do
  it "should return an It::Link object" do
    It.link("https://www.github.com").class.should == It::Link
  end
  
  it "should accept one param" do
    expect { It.link("http://www.rubyonrails.org/") }.not_to raise_error
  end
  
  it "should accept two params" do
    expect { It.link("http://www.rubyonrails.org/", {:id => "identity", :class => "classy"}) }.not_to raise_error
  end
  
  it "should raise ArgumentError, if called with three params" do
    expect { It.link("http://www.rubyonrails.org/", {}, :blubb) }.to raise_error(ArgumentError)
  end
end

describe It, '.tag' do
  it "should return an It::Tag object" do
    It.tag(:b).class.should == It::Tag
  end
  
  it "should work with a param" do
    expect { It.tag(:b) }.not_to raise_error
  end
  
  it "should accept two params" do
    expect { It.tag(:b, :class => "very_bold") }.not_to raise_error
  end
  
  it "should raise an ArgumentError if called with three params" do
    expect { It.tag(:b, {}, :blubb) }.to raise_error(ArgumentError)
  end
end

describe It, '.plain' do
  it "should return an It::Plain object" do
    It.plain.class.should == It::Plain
  end
  
  it "should work without params" do
    expect { It.plain }.not_to raise_error
  end
  
  it "should accept one param" do
    expect { It.plain("%s[http://www.rubyonrails.org/]") }.not_to raise_error
  end
  
  it "should raise ArgumentError, if called with two params" do
    expect { It.plain("%s[http://www.rubyonrails.org/]", :blubb) }.to raise_error(ArgumentError)
  end
end