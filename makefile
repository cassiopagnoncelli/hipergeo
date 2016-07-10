git-checkout = [ -d $@ ] \
	&& { $(MAKE) --directory=$@ update || true ; } \
	|| git clone --verbose --progress $(1)/$@.git

#------------------------------------------------------------------------------
.PHONY : update nofile

#------------------------------------------------------------------------------
update : nofile
	git pull --stat --no-edit --verbose --progress --all

sh : nofile
	$(call git-checkout,ssh://git@bitbucket.org/renato-carmo)

