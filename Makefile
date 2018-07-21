export PROJECT ?= carlos-run

PREFIX ?= conf

.PHONY: login domain cluster cluster-update cluster-delete credentials

login:
	make -f $(PREFIX)/Makefile.gcloud login

domain:
	make -f $(PREFIX)/Makefile.domain zone

cluster:
	ENV ACTION=create make -f $(PREFIX)/Makefile.k8 cluster

cluster-update:
	ENV ACTION=update make -f $(PREFIX)/Makefile.k8 cluster

cluster-delete:
	ENV ACTION=delete make -f $(PREFIX)/Makefile.k8 cluster

credentials:
	make -f $(PREFIX)/Makefile.k8 credentials
