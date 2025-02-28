# depot installation d ia facilement
et dans docker en docker compose

baseé sur https://github.com/armstrys/docker_scripts_ollama.git

besoin de make, docker, tmux

pour l aide :

'''bash
make
'''

pour installer et lancer l'ia :

'''bash
make start
'''

pour arreter :

'''bash
make stop
'''


permet d'utiliser l'ia via web 2 minutes apres de les docker soit OK

http://localhost:3000/

mais permet aussi d'utiliser l'ia dans vscode, vscodium, Theia-ide 
avec l'extension "continue"

## customisation 

pour changer d ia les placer dans les fichiers ./bin/
- la configuration de make est dans le Makefile
- la configuration des ia dans ./bin
- la page web de oipen-webui est sans password si ous voulez changer cela
	dans le docker-compose.yml 
	- WEBUI_AUTH=False

Vous pouvez modifier les modèles listés dans le fichier « ./bin/_run-autocomplete.sh » 
si vous le souhaitez. Les modèles actuels sont légers.

pour info les models télécharger le son dans ./data/ollama/models

'''bash
make clean
'''
permet de purger les IA une fois le 'make stop' effectuer
