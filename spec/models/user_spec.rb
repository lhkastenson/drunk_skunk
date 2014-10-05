require 'spec_helper'

describe User do
    let (:user) { FactoryGirl.create(:user) }

    subject { user }

    it { should respond_to(:email) }
    it { should respond_to(:password) }

    it { should be_valid }
end
