mappings=$1
trellofile=$2
ghownner=$3
ghrepo=$4
ghmail=$5
ghpassword=$6
echo $ghpassword
docker run -it --rm --name import-trello-github -v "$PWD":/src -w /src import-trello-github  \
	/src/import-issues.py  \
	--loglevel DEBUG \
   --statedir state \
   --labelmaps $mappings \
   $trellofile $ghownner $ghrepo \
   $ghmail  $ghpassword
