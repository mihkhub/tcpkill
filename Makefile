.PHONY: clean
LDFLAGS = -lpcap -lnet
CFLAGS = -Wall -O3 -msse4.2

tcpkill: pcaputil.c tcpkill.c
	${CC} ${CFLAGS} ${LDFLAGS} -o $@ $^

clean:
	rm -f  tcpkill
