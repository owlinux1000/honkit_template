HONKIT := npx honkit
SRC := src/
DST := docs/

help: ## Display this help screen
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

build: ## Build a Book
	$(HONKIT) build $(SRC) $(DST)

serve: ## Serve the Book
	$(HONKIT) serve $(SRC) $(DST)

.PHONY: build serve help
