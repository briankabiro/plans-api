## use a sliding window policy
## 5 requests per minute
## store things in Redis

## when a request comes in,
## check user's ip
## get requests in the last minute,
## if they are more than 5 drop that and return an error
## else record that user's event