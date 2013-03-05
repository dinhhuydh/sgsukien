require 'spec_helper'

describe User do
  subject { create(:user) }

  describe 'callbacks' do
    it "should create profile" do
      subject.profile.should_not be_nil
    end
  end

  describe 'role?' do
    User::ROLES.each do |role_name| 
      context "when user is #{role_name}" do
        subject { create(:user, role: role_name) }
        it "should return true" do
          subject.send(role_name.to_s + '?').should be_true
        end
      end
    end
  end
end
