require 'unirest'
require 'byebug'
# require 'fieldbook-ruby/credentials'

class Fieldbook
  attr_accessor :username, :password,
                :book, :connection

  ENDPOINT = "https://api.fieldbook.com/v1/"

  def initialize(options = {})
    @username = options[:username]
    @password = options[:password]
    @book     = options[:book]
    # @public   = Fieldbook::Credentials.new
  end

  def get_sheets
    response = Unirest.get "#{ENDPOINT}#{book}/items",
                           headers: { "Accept" => "application/json" },
                           auth: { :user => username, :password => password }

    response.body
  end

  def get_sheet(sheet, query)

  end

  def get_record(sheet, record, query)

  end

  def add_record(sheet, data)
  end

  def update_record(sheet, record, data)

  end

  def delete_record(sheet, record)

  end

  def add_webhook(config)

  end

  def get_webhooks

  end

  def delete_webhook(webhook)

  end

  private

  def execute_req
    ## handles any request passing the necessary
    ## params
  end

end
