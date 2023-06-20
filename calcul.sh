#!/bin/bash

# Vérifie le nombre de paramètres
if [ $# -ne 2 ]; then
    echo "Erreur : Veuillez spécifier deux nombres en tant que paramètres."
    echo "Exemple de lancement : $0 10 15"
    exit 1
fi

nombre1=$1
nombre2=$2

# Vérifie si les paramètres sont des chiffres
re='^[0-9]+$'
if ! [[ $nombre1 =~ $re ]] || ! [[ $nombre2 =~ $re ]]; then
    echo "Erreur : Les paramètres doivent être des chiffres."
    exit 1
fi

# Demande à l'utilisateur quelle opération effectuer
read -p "Quelle opération souhaitez-vous effectuer? (+, -, /, x) : " operation

# Vérifie l'opération saisie par l'utilisateur
case $operation in
    "+")
        resultat=$((nombre1 + nombre2))
        ;;
    "-")
        resultat=$((nombre1 - nombre2))
        ;;
    "/")
        if [ $nombre2 -eq 0 ]; then
            echo "Erreur : Division par zéro."
            exit 1
        fi
        resultat=$(awk "BEGIN{printf \"%.2f\", $nombre1 / $nombre2}")
        ;;
    "x")
        resultat=$((nombre1 * nombre2))
        ;;
    *)
        echo "Erreur : Opération invalide. Les opérations valides sont : +, -, /, x"
        exit 1
        ;;
esac

# Affiche le résultat de l'opération choisie
echo "Le résultat de l'opération $operation entre $nombre1 et $nombre2 est : $resultat"
