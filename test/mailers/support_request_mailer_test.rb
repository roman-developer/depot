require 'test_helper'

class SupportRequestMailerTest < ActionMailer::TestCase
  test "respond" do
    support_request = SupportRequest.create!(
      email: "to@example.org",
      subject: "Respond",
      body: "Hi all",
      order: orders(:one)
    )
    mail = SupportRequestMailer.respond(support_request)
    assert_equal "Re: Respond", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["support@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
