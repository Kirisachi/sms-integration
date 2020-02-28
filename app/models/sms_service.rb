
class SmsService 
    def self.sendsms (text_message)

        # Setup twilio's client
        account_sid = insert_account_sid
        auth_token = insert_auth_token
        client = Twilio::REST::Client.new(account_sid, auth_token)

        byebug
        # From Number
        from = 'Insert_twilio_number'
        to = text_message.title
        body = text_message.text

        # Create sms with twilio
        response = client.messages.create(
                    from: from,
                    to: to,
                    body: body,

                     )


        return true

    end
end