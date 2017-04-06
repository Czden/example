def my_app(env, start_resp):
    outer=list()
    status='200 OK'
    resp_header=[('Content-type','text/plain')]
    try:
        outer=[par.encode('utf-8')+'\r\n'.encode('utf-8') for par in env['QUERY_STRING'].split('&')]
    except KeyError: pass
    start_resp(status, resp_header)
    return outer

