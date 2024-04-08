# running server
redis-server config/redis.conf

# use database
select 1

# create key
set <key> <value str,number etc>

# get key
get <key>

# delete key
del <key>

# append key
append <key> <value>

# show all keys
keys *

# setrange key
setrange <key> <offset> <end>  ex. setrange test 8 "Hello"

# getrange key
getrange <key> <start> <end> ex getrange test 0 3

# multiple data set
mset indra "200" mara "300" sina "400"

# multiple data get
mget indra mara sina

# expiration key
expire <key> <seconds>

# ttl key
ttl <key>

# increment data
incr <key> / incrby <key>

# decrement data
decr <key> / decrby <key>

# flush
flushall
flushdb

# pipeline
redis-cli -h localhost -p 6379 -n 0 --pipe < pipeline.txt

# transaction
multi
set <key> <value>
get <key>
set <key> <value>
get <key>
exec  / discard

# monitor
monitor

# server information
info

# Client Connection
client list
client id
client kill <ip address>

# persistance save
save
bgsave

