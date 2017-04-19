module ApplicationCable
  class Connection < ActionCable::Connection::Base

    #this is where we'll put any authorisations, this could possibly be used to determine who goes in what channel. An individual user will create one consumer-connection pair per browser tab, window, or device they have open. Connections are instances of ApplicationCable::Connection.

  end
end
