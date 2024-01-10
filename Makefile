FLAGS = -lusb-1.0 -lX11 -lwayland-client -g -pedantic

install:
	${CC} KD100.c ${FLAGS} -o KD100;
clean:
	rm -f KD100
	rm -f ./debian-dpkg/usr/local/bin/KD100
	rm -f huion-k20-kd100.deb
deb:
	${CC} KD100.c ${FLAGS} -o ./debian-dpkg/usr/local/bin/KD100;
	dpkg-deb --build debian-dpkg huion-k20-kd100.deb
