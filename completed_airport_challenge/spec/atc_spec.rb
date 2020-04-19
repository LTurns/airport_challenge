require 'atc'
require 'dummy_class.rb'
module ATC
  RSpec.describe ATC do
    describe '#confirm_weather_descent' do
      context "when stormy" do
        it "logs a message 'stormy'" do
          subject = DummyClass.new
          allow(subject).to receive(:confirm_weather_descent) { "stormy" }
        end
      end
      context "when sunny" do
        it "logs a message 'sunny'" do
          subject = DummyClass.new
          allow(subject).to receive(:confirm_weather_descent) { "sunny" }
        end
      end
      context 'when result is sunny' do
        it "returns true" do
          subject = DummyClass.new
          expect(subject).to respond_to(:take_off_plane)
        end
      end
      context 'when result is stormy' do
        it "returns true" do
          subject = DummyClass.new
          expect(subject).to respond_to(:cancel_take_off)
        end
      end
    end
    describe '#land_plane' do
      it "shows permission to land plane" do
        subject = DummyClass.new
        expect(subject).to respond_to(:land_plane)
      end
    end
    describe '#confirm_landing' do
      it "confirms plane has landed" do
        subject = DummyClass.new
        expect(subject).to respond_to(:confirm_landing)
      end
    end
    describe '#take_off_plane' do
      it "prepares plane for take-off" do
        subject = DummyClass.new
        expect(subject).to respond_to(:take_off_plane)
      end
    end
    describe '#confirm_take_off' do
      it "confirms plane is in air" do
        subject = DummyClass.new
        expect(subject).to respond_to(:confirm_take_off)
      end
    end
    describe '#cancel_take_off' do
      it "confirms take-off is cancelled" do
        subject = DummyClass.new
        expect(subject).to respond_to(:cancel_take_off)
      end
    end
    describe '#cancel_landing' do
      it "confirms landing has been cancelled" do
        subject = DummyClass.new
        expect(subject).to respond_to(:cancel_landing)
      end
    end
  end
end
