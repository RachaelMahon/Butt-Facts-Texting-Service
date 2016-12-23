require 'rubygems'
require 'twilio-ruby'


class Messenger

  attr_reader :keys

  def initialize
    @keys = Hash[*File.read('secrets.txt').split(/[, \n]+/)]
    @client = create_twilio_client
    @from = @keys["from"]
    @subscribers = Hash[*File.read('subscribers.txt').split(/[, \n]+/)]
  end

  def send_butt_fact
    @subscribers.each do |number, name|
      @client.account.messages.create(
      :from => @from,
      :to => number,
      :body => create_butt_fact(name)
      )
      terminal_confirmation(name)
    end
  end

  def create_twilio_client
    account_sid = @keys["account_sid"]
    auth_token = @keys["auth_token"]
    Twilio::REST::Client.new account_sid, auth_token
  end

  def create_butt_fact(name)
    butt_facts_array = Array[*File.read('buttfacts.txt').split(/[, \n]+/)]
    butt_fact = butt_facts_array.sample
    "Hello #{name}, did you know that #{butt_fact}"
  end

  def terminal_confirmation(name)
    puts "Sent message to #{name}"
  end
end
