# encoding: UTF-8
require 'special_char_remover'
 describe "SpecialCharRemover" do
  it "should indicate special characters found in a string" do
   "MƏNISH".simplify.should eq("MANISH")
   "Lḝts Ć.. if this works".simplify.should eq("Lets C.. if this works")
  end
 end

