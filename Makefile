export PROJECT ?= carlos-run

PREFIX ?= conf

.PHONY: login domain

login:
	make -f $(PREFIX)/Makefile.gcloud login

domain:
	make -f $(PREFIX)/Makefile.domain zone
