SCRIPTS_TO_TEST := build-caesium build-kernel build-twrp apps aliases common functions gitshit hastebin kronic-build setup.sh ssh-copy-id-github.sh
SCRIPTS_TO_TEST += setup/bat.sh setup/diff-so-fancy.sh setup/gdrive.sh setup/hub.sh setup/xclip.sh

test:
		@shellcheck --exclude=SC1090,SC1091 ${SCRIPTS_TO_TEST}

installhook:
		@cp -v shellcheck-hook .git/hooks/pre-commit
		@chmod +x .git/hooks/pre-commit

install:
		@./setup.sh

.PHONY: test