require 'unit_spec_helper'

describe Rpush::Client::Redis::Apns::Feedback do
  it 'validates the format of the device_token' do
    notification = Rpush::Client::Redis::Apns::Feedback.new(device_token: "{$%^&*()}")
    expect(notification.valid?).to be_falsey
    expect(notification.errors[:device_token]).to include('is invalid')
  end
end if redis?
