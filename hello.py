import urllib

def my_app(env, start_resp):
    outer=list()
    status='200 OK'
    resp_header=[('Content-type','text/plain')]
    try:
        params=urllib.parse.parse_qs(env['QUERY_STRING'])
        for key in params:
            values= params.get(key)
            for v in values:
                outer.append('{0}={1}'.format(key, v).encode('utf-8'))
                outer.append('\r\n'.encode('utf-8'))
    except KeyError: pass
    start_resp(status, resp_header)
    return outer

