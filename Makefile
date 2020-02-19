BIONIC = ./base/bionic/release.sh
FIREFOX = ./applications/firefox/release.sh
MOTRIX = ./applications/motrix/release.sh

basic:
	@$(BIONIC)
	

push:
	@$(BIONIC) push
	@$(FIREFOX) push
	@$(MOTRIX) push
