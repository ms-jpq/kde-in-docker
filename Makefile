BASE = ./base/release.sh
FIREFOX = ./applications/firefox/release.sh
MOTRIX = ./applications/motrix/release.sh

bionic:
	@$(BASE) bionic

focal:
	@$(BASE) focal

push:
	@$(BASE) bionic push
	# @$(BASE) focal push
	@$(FIREFOX) push
	@$(MOTRIX) push
