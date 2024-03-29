#!/bin/bash

scriptDir=$(dirname ${BASH_SOURCE[0]})
. ${scriptDir}/common-functions.sh

#-- Change tempDir if you must
tempDir=/tmp

generatedGitignore=${tempDir}/generated.gitignore

Help() {
    echo "Usage:  $0 [ --help | --keywords ] keyword ..."
    echo "where:"
    echo "   --help     prints this message,"
    echo "   --keywords list the possible keywords you can use,"
    echo "   keyword... is a list of keywords/technologies, etc."
    echo ""
    echo "Generates a .gitignore file for the keywords you provide."
    exit 0
}

HelpKeywords() {
    FetchGitIgnore
    keywords=$(find . -name '*.gitignore' -exec basename {} .gitignore \; | sort)

    Info "Possible keywords:"
    echo ${keywords}
    exit 0
}

FetchGitIgnore() {
    cd ${tempDir}
    if [ ! -d gitignore ] ;then
        git clone https://github.com/github/gitignore.git > /dev/null 2>&1
    fi
    cd gitignore
}

#-----------------------------------------------------------------------------
#  M A I N   S C R I P T
#-----------------------------------------------------------------------------
if [[ $# -eq 0 ]] ;then
    Help
elif [ "$1" = "--help" ] ;then
    Help
elif [ "$1" = "--keywords" ] ;then
    HelpKeywords
fi

keywords=$*

echo "# Generated by generate-gitignore.sh on $(date)" > ${generatedGitignore}
echo "" >> ${generatedGitignore}

FetchGitIgnore

for key in ${keywords} ;do
    foundFile=$(find . -name ${key}.gitignore)

    if [ "${foundFile}" = "" ] ;then
        Info "No such keyword: ${key}"
    else
        echo "#-----> Generated for ${key}" >> ${generatedGitignore}
        cat ${foundFile} >> ${generatedGitignore}
    fi
done

echo "Your genererated .gitignore file is here: ${generatedGitignore}"
echo "You may wish to copy it to ~/.gitignore"
exit 0
