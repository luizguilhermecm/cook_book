#!/usr/bin/env ruby
require 'pg'

#conn = PG.Connection.open(:host => "168.235.81.92", :dbname => "nsdk", :user => "postgres", :password => "stevenjobs")
puts "asdf"
conn = PGconn.open(:host => "168.235.81.92", :dbname => "nsdk", :user => "postgres", :password => "stevenjobs")
puts "conn"
res  = conn.exec('SELECT 1 AS a, 2 AS b, NULL AS c')
puts res
#query = " SELECT * FROM questoes limit 1 "
#ret = conn.exec(query)
#puts ret

conn.close
