# encoding: utf-8
require 'spec_helper'
module IfeVotingSpec
  describe Candidate do
    describe "attributes of the Entity Candidate" do
      it "should have name, alias and Dr. Evil" do
        epn = Candidate.new
        epn.name = "Enrique Peña Nieto"
        epn.alias = "El Gavioto"
        epn.dr_evil = "El Innombrable"
        epn.name.should == "Enrique Peña Nieto"
        epn.alias.should == "El Gavioto"
        epn.dr_evil.should == "El Innombrable"
      end
    end
  end

  describe IfeCard do
    describe "Entity IFE Card" do
      it "should return the correct elector clave" do
        fedesoria_ife = IfeCard.new
        fedesoria_ife.first_name = "Federico"
        fedesoria_ife.last_name = "Soria"
        fedesoria_ife.dob = Date.new(1982,7,13) 
        fedesoria_ife.state_of_birth = "SR"
        fedesoria_ife.sex = "M"
        fedesoria_ife.clave.should == "SOFE82713MSRDERI58"
      end
    end
  end 

end