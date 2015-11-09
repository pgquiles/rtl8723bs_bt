rtk_hciattach:hciattach.c hciattach_rtk.o  
	cc -o rtk_hciattach hciattach.c hciattach_rtk.o  

hciattach_rtk.o:hciattach_rtk.c
	cc -c hciattach_rtk.c

clean:
	rm -f *.o  rtk_hciattach

install: rtk_hciattach
	install -p rtk_hciattach $(DESTDIR)$(PREFIX)/bin/
	mkdir -p $(DESTDIR)/lib/firmware/rtl_bt
	cp -p rtlbt_* $(DESTDIR)/lib/firmware/rtl_bt/.
