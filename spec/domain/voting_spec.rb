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

  describe PoliticalParty do
    describe "Value Object Political Party" do
      it "should have a name" do
        pri = PoliticalParty.new("Partido Revolucionario Institucional")
        pri.name.should == "Partido Revolucionario Institucional"
      end
    end
  end 

  describe VotesCounting do
    describe "Service for Votes Counting" do
      it "should count the votes on favor a each Political Party" do
        pan = double('political party')
        pan.stub(:name).and_return("Partido Acción Nacional")
        urnas = VotesCounting.new
        urna_district_14 = double('urna_district_14')
        urna_district_14.should_receive(:votes_counting).with(pan.name).and_return(300)
        urnas << urna_district_14
        urna_district_43 = double('urna_district_43') 
        urna_district_43.should_receive(:votes_counting).with(pan.name).and_return(450)
        urnas << urna_district_43
        urna_district_23 = double('urna_district_23') 
        urna_district_23.should_receive(:votes_counting).with(pan.name).and_return(150)
        urnas << urna_district_23
        urnas.votes(pan.name).should == 900
      end
    end
  end

  describe Ballot do
    describe "Aggregate Ballot" do
      it "should keep the decision made for the voter" do
        pan = double('political party PAN')
        pan.stub(:name).and_return("Partido Acción Nacional")
        pri = double('political party PRI')
        pri.stub(:name).and_return("Partido Revolucionario Institucional")
        prd = double('political party PRD')
        prd.stub(:name).and_return("Partido de la Revolución Democrática")
        panal = double('political party PANAL')
        panal.stub(:name).and_return("Partido Nueva Alianza")
        epn = double("Candidate EPN")
        epn.stub(:name).and_return("Enrique Peña Nieto")
        epn.stub(:alias).and_return("El Gavioto")   
        epn.stub(:political_party).and_return(pri)
        jvm = double("Candidate JVM")
        jvm.stub(:name).and_return("Josefina Vazquez Mota")
        jvm.stub(:alias).and_return("Chepis")
        jvm.stub(:political_party).and_return(pan)
        amlo = double("Candidate AMLO")
        amlo.stub(:name).and_return("Andres Manuel López Obrador")
        amlo.stub(:alias).and_return("El Peje")   
        amlo.stub(:political_party).and_return(prd)
        gqt = double("Gabriel Quadri de la Torre")
        gqt.stub(:name).and_return("Gabriel Quadri de la Torr")
        gqt.stub(:alias).and_return("El consentido de la maestra")
        gqt.stub(:political_party).and_return(panal)
        ballot = BallotFactory::Ballot.new_ballot_for_president(epn, jvm, amlo, gqt)
        fedesoria_ife = double('Voter Federico Soria')
        fedesoria_ife.stub(:clave).and_return("SOFE82713MSRDERI58")
        ballot.voting(fedesoria_ife, pri)
        ballot.vote(fedesoria_ife).should == pri
      end
    end
  end

  describe "Ballot Factory" do
      describe "Ballot Method Factory" do
        it "should create a Ballot" do
          pan = double('political party PAN')
          pan.stub(:name).and_return("Partido Acción Nacional")
          pri = double('political party PRI')
          pri.stub(:name).and_return("Partido Revolucionario Institucional")
          prd = double('political party PRD')
          prd.stub(:name).and_return("Partido de la Revolución Democrática")
          panal = double('political party PANAL')
          panal.stub(:name).and_return("Partido Nueva Alianza")
          epn = double("Candidate EPN")
          epn.stub(:name).and_return("Enrique Peña Nieto")
          epn.stub(:alias).and_return("El Gavioto")   
          epn.stub(:political_party).and_return(pri)
          jvm = double("Candidate JVM")
          jvm.stub(:name).and_return("Josefina Vazquez Mota")
          jvm.stub(:alias).and_return("Chepis")
          jvm.stub(:political_party).and_return(pan)
          amlo = double("Candidate AMLO")
          amlo.stub(:name).and_return("Andres Manuel López Obrador")
          amlo.stub(:alias).and_return("El Peje")   
          amlo.stub(:political_party).and_return(prd)
          gqt = double("Gabriel Quadri de la Torre")
          gqt.stub(:name).and_return("Gabriel Quadri de la Torr")
          gqt.stub(:alias).and_return("El consentido de la maestra")
          gqt.stub(:political_party).and_return(panal)
          ballot = BallotFactory::Ballot.new_ballot_for_president(epn, jvm, amlo, gqt)
          fedesoria_ife = double('Voter Federico Soria')
          ballot.voting(fedesoria_ife, pri)
          ballot.vote(fedesoria_ife).should == pri           
        end       
      end
    end

end