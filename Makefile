loc-by-dir:
	@find . -type d -maxdepth 1 -exec bash -c 'echo $$(find {} -type f | grep -f code.grep | xargs cat | wc -l) {}' \; | sort -rn

loc-by-file:
	@git ls-files --recurse-submodules | grep -f code.grep | xargs wc -l | sort -rn
