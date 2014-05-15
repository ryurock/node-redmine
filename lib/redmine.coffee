class Redmine
  instance = null
  options  = {}

  @configure : (opts) ->
    throw new Error "opts must be host reuired." unless opts.host
    throw new Error "opts must be key  reuired." unless opts.key
    options  = opts
    instance ?= @

  @issue : (id) ->
    client = new Client options
    client.connection 'issue', id : id

  class Client
    _host = null
    _key  = null
    _auth = null

    constructor : (opts) ->
      _host = opts.host
      _key  = opts.key
      @options opts

    options : (opts) ->
      _auth = opts.auth if opts.auth?

    connection : (name, opts = {}) ->
      connection = new Connection(name, opts)

    class Connection
      constructor : (name, opts) ->
      
    class Issue
      constructor : (opts) ->
        throw new Error "issue must be issue_id reuired." unless opts.id


module.exports = Redmine
