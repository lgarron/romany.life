all: deploy

.PHONY: deploy
deploy:
	rsync -avz \
		--exclude .DS_Store \
		--exclude .git \
		./ \
		romany.life:~/romany.life/
	echo "\nDone deploying. Go to https://romany.life\n"
