require 'test_helper'

class ApplicationMailerTest < ActionMailer::TestCase
  test "send_weekly_newsletter" do
    @expected.subject = 'ApplicationMailer#send_weekly_newsletter'
    @expected.body    = read_fixture('send_weekly_newsletter')
    @expected.date    = Time.now

    assert_equal @expected.encoded, ApplicationMailer.create_send_weekly_newsletter(@expected.date).encoded
  end

end
