BASE = ./base/release.sh
WINE = ./wine/release.sh
FIREFOX = ./applications/firefox/release.sh
BROWSERS = ./applications/browsers/release.sh
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
	@$(BROWSERS) push
	@$(MOTRIX) push
