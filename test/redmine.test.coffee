should  = (require 'chai').should()
# moment  = require 'moment'
Redmine = require '../lib/redmine'

describe 'Redmine Class', ->
  it 'should return throw. opts require key host.', ->
    (->
      Redmine.configure( hoge : "fuga" )
    ).should.throw(Error)


   it 'should return throw. opts require key key.', ->
     (->
       Redmine.configure( host : "fuga" )
     ).should.throw(Error)
  
   it 'should return Redmine Object.', ->
       redmine = Redmine.configure(
         host : "hoge"
         key  : "fuga"
       )
       console.log redmine.issue(12345)
       #redmine.should.to.equal(Redmine)

