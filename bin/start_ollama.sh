#!/bin/bash
#cd $(pwd)/..
docker-compose up -d
tmux new-session -d -s "ollama_chat" ./bin/_run_chat.sh
tmux new-session -d -s "ollama_autocomplete" ./bin/_run_autocomplete.sh
bash ./bin/_pull_embedding.sh

