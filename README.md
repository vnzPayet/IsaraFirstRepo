# IsaraFirstRepo
Prise en main de git et github pour **OPEN23**

```
## Pour changer de répertoire
cd Documents/

## Créer un dossier et y entrer
mkdir TD-git
cd TD-git

## Faire un clone du dépôt distant sur la machine locale
git clone https://github.com/vnzPayet/IsaraFirstRepo.git

## se déplacer dans le dossier
cd IsaraFirstRepo

## On fait une modification dans un fichier test.txt

## On ajoute le fichier dans le staging
git add test.txt

## On commit
git commit -m "Nouveau fichier"

## On pousse sur le dépot distant
git push
```

Si l'identification par mot de passe ne fonctionne pas pour que le `push` fonctionne il faut alors au préalable avoir crée un token :
https://techglimpse.com/git-push-github-token-based-passwordless/

Ce token (long code secret) sera utilisé à la place du mot de passe
