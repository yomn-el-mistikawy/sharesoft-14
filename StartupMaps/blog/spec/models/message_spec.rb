require 'spec_helper'

describe Message do
	it 'is valid Sends a message' do 
		entity = Entity.create(
			email: 'menna_amer@hotmail.com',
			password:  '12345678')
		message = Message.create(
			sender: entity.email,
			recepient: 'sfathallah@hotmail.com',
			subject: 'Hello',
			body: 'hahahahahhaha')
		expect(message).to be_valid
	end

	it 'is invalid without a subject' do 
		expect(Message.create(subject: 'h' )).to have(1).errors_on(:subject)
	end

	it 'is invalid without a body' do 
		expect(Message.create(body: 'h' )).to have(1).errors_on(:body)
	end

	it 'is invalid without a recepient' do 
		expect(Message.create(recepient: nil )).to have(1).errors_on(:recepient)
	end

	it 'is valid to show sent and received messages' do 
		entity = Entity.create(
			email:  'menna_amer@hotmail.com',
			password:  '12345678')
		entity2 = Entity.create(
			email: 'sfathallah.sf@gmail.com',
			password: '12345678')
		message = Message.create(
			sender: entity,
			recepient: entity2.email,
			subject: 'hahahahahhah',
			body: 'hahahahahhaha')
		message1 = Message.create(
			sender: entity2.email,
			recepient: entity.email,
			subject: 'Hello',
			body: 'hahahahahhaha')
		expect(Message.where(sender: entity.email)) == eq([message])
		expect(Message.where(recepient: entity.email)) == eq([message1])
		# message.should render :show 
	end

	it ' is invalid that the message is in the method' do 
		entity = Entity.create(
			email: 'menna_amer@hotmail.com',
			password: '12345678')
		entity2 = Entity.create(
			email: 'sfathallah.sf@gmail.com',
			password: '12345678')
		message = Message.create(
			sender: entity.email,
			recepient: entity2.email,
			subject: 'hahahahahhah',
			body: 'hahahahahhaha')
		message.destroy
		expect(Message.all.size).to eq(0)
	end
end
