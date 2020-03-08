BASE = ./base/release.sh
WINE = ./wine/release.sh
FIREFOX = ./applications/firefox/release.sh
MOTRIX = ./applications/motrix/release.sh

basic:
	@$(BASE) bionic
	@$(BASE) focal

wine:
	@$(WINE) bionic


push:
	@$(BASE) bionic push
	@$(BASE) focal push
	@$(WINE) bionic push
	@$(FIREFOX) push
	@$(MOTRIX) push
