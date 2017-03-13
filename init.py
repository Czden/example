import socket
sock=socket.socket('....')
sock.bind(...)
sock.listen(5)
while True:
    conn,addr=sock.accept()
