PLAYGROUND_SRC := ../mvm-playground
PLAYGROUND_DST := playground

.PHONY: all playground clean serve

all: playground

playground:
	$(MAKE) -C $(PLAYGROUND_SRC) build
	rm -rf $(PLAYGROUND_DST)
	mkdir -p $(PLAYGROUND_DST)
	cp -a $(PLAYGROUND_SRC)/web/. $(PLAYGROUND_DST)/

clean:
	rm -rf $(PLAYGROUND_DST)

serve:
	mvm -e 'http.ListenAndServe(":8080", http.FileServer(http.Dir(".")))'
