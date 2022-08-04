#! /bin/bash
IFS=$'\n'
DIFF=$(find ~/workspace/sigma-rules-wiki/pages -type d | sort | sed 's/.*sigma-rules-wiki\/pages//g' | diff -  <(find ~/workspace/sigma/rules -type d | sort | sed 's/.*sigma\/rules//g'))

function instanciate_file()
{
    local file=$1 ; shift ;
    local realFile=$(echo $file | sed -e 's/^> \(.*\)/\1/g')
    echo $realFile
cat > ~/workspace/sigma-rules-wiki/pages${realFile}.md <<-EOF
# How to process *$(yq ".title" ~/workspace/sigma/rules${realFile}.yml)* rule
This rule $(yq ".description" ~/workspace/sigma/rules${realFile}.yml)

# 1. Identify
TODO

# 2. Contextualize
TODO

# 3. Decide
TODO

# Known False Negatives
None yet.
EOF

    # remains the id mapping to update
    echo "\"$(yq ".id" ~/workspace/sigma/rules${realFile}.yml)\": \"/pages${realFile}.md\"" >> ~/workspace/sigma-rules-wiki/id_to_pages.json
}

function instanciate_folder()
{
    local folder=$1 ; shift ;
    local realFolder=$(echo $folder | sed -e 's/^> \(.*\)/\1/g')
    mkdir -p ~/workspace/sigma-rules-wiki/pages$realFolder
}

# 1st, folders (removed can catch renamed folders)
for directory in $DIFF;
do
    if [[ $(echo $directory | grep -c '^<') -gt 0 ]]; then
        echo "[WARNING] removed : $directory"
    elif [[ $(echo $directory | grep -c '^>') -gt 0 ]]; then
        instanciate_folder "$directory"
    else
        echo "[SKIPPED] bouze : $directory"
    fi
done 

# 2nd, files
DIFF=$(find ~/workspace/sigma-rules-wiki/pages -type f | sort | sed 's/.*sigma-rules-wiki\/pages//g' | sed 's/\.md//g' | diff -  <(find ~/workspace/sigma/rules -type f | sort | sed 's/.*sigma\/rules//g' | sed 's/\.yml//g'))
for file in $DIFF;
do
    if [[ $(echo $file | grep -c '^<') -gt 0 ]]; then
        echo "[WARNING] removed : $file"
    elif [[ $(echo $file | grep -c '^>') -gt 0 ]]; then
        instanciate_file "$file"
    else
        echo "[SKIPPED] bouze : $file"
    fi
done