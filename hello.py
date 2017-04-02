def my_app(env, start_resp):
    outer=list()
    status='200 OK'
    resp_header==[('Content-type','text/plain')]
    try:
        params=list(env['QUERY_STRING'].split('&'))
        for par in params:
            outer.append(par)
            outer.append('\r\n')
    except KeyError: pass
    start_resp(status, resp_header)
    return outer
