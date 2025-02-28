.PHONY: help start stop clean 

help: ## affiche l aide de ce Makefile 
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'


start: ## launch ia for webui or IDE with continue plugin
	./bin/start_ollama.sh
	sleep 60 && echo "You can go http://localhost:3000/ "

stop: ## stop webui and ia
	./bin/stop_ollama.sh	

clean: ## purge le dossier data pour tout reprendre
	sudo rm -fr ./data

autocomplete: ## acces console au tmux autocomplete dans tmux pour sortir Ctrl-b+d
	tmux a -t ollama_autocomplete

chat: ## acces console au tmux chat dans tmux pour sortir Ctrl-b+d
	tmux a -t ollama_chat

tmuxList: ## liste les session tmux
	tmux ls

ollamaListIA: ## Liste les IA chargées dans ollama
	docker exec -it ollama ollama list

