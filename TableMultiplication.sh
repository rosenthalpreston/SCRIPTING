#!/bin/bash

while true; do
    # Demande à l'utilisateur de saisir un numéro
    read -p "Entrez un numéro (0 pour arrêter) : " numero

    # Vérifie si l'utilisateur a saisi 0 pour arrêter le programme
    if [ $numero -eq 0 ]; then
        echo "Programme terminé."
        exit 0
    fi

    # Vérifie si le numéro est un entier positif
    if ! [[ $numero =~ ^[0-9]+$ ]]; then
        echo "Erreur : Veuillez saisir un numéro valide."
        continue
    fi

    # Affiche la table de multiplication du numéro saisi
    echo "Table de multiplication pour le numéro $numero :"
    for ((i=1; i<=10; i++)); do
        resultat=$((numero * i))
        echo "$numero x $i = $resultat"
    done

    echo ""
done
