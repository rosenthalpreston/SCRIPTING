# SCRIPTING
Check root user 
 

La condition [ "$(id -u)" -eq 0 ] vérifie si l'ID de l'utilisateur courant (obtenu à l'aide de la commande id -u) est égal à 0, qui est l'ID de l'utilisateur root. 

Si la condition est vraie, cela signifie que l'utilisateur est root, et le message "L'utilisateur est root." est affiché. 

Si la condition est fausse, cela signifie que l'utilisateur n'est pas root, et le message "L'utilisateur n'est pas root." est affiché. 

Ainsi, en exécutant ce code, vous pourrez savoir si l'utilisateur qui exécute le script est root ou non. 
