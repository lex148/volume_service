http            = require 'http'
fs = require('fs')
sys = require('sys')
exec = require('child_process').exec
qs = require('querystring')
_und = require("underscore")



app = require('express').createServer()

app.get '/up', (req, res) ->
  exec 'amixer -c 0 set Master 1%+', () ->
  res.send ''
  res.end

app.get '/down', (req, res) ->
  exec 'amixer -c 0 set Master 1%-', () ->
  res.send ''
  res.end


app.listen 11617 
console.log 'Server running at http://127.0.0.1:11617/' 
