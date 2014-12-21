require 'coffee-errors'

chai = require 'chai'
sinon = require 'sinon'
# using compiled JavaScript file here to be sure module works
testNpmModule = require '../lib/test-npm-module.js'

expect = chai.expect
chai.use require 'sinon-chai'

describe 'test-npm-module', ->
  it 'works', ->
    actual = testNpmModule 'World2'
    expect(actual).to.eql 'Hello World3'
