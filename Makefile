.PHONY: publish
publish:
	npm run compile
	npm version $(shell ./scripts/version_prompt.sh)
	git push  --set-upstream origin $(shell bash -c "git rev-parse --abbrev-ref HEAD")
	#git push --tags
	#npm publish