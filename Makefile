.PHONY: clean
LDFLAGS = -lpcap -lnet
CFLAGS = -Wall

tcpkill: pcaputil.c tcpkill.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $^

clean:
	rm -f  tcpkill
