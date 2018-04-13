#!/bin/bash
clear

echo "-----------------------------------------------------------"
echo "---	Generar projecto segun las propias              ---"
echo "-----------------------------------------------------------"
PS3="¿Que tipo de projecto quieres? "
PS2="Monolitico:Busines,Domain,Standalone,Salt,VueJS Cloud:VueJS Salir"
select opcion in $PS2
do
    if [[ -z $opcion ]]; then
        clear
        echo "No existe esta opcion \"$REPLY\" "
        echo $PS3
        REPLY=
    else
        case $opcion in
        1|M)
        #"M:Monolitico:Busines,Domain,Standalone,VueJS"|"M")
            break;;
            #printf "Creando Monolitico"
            #exit
        2|C)
        #"C:Cloud:VueJS"|"C")
            #printf "Creando Cloud"
            break;;
        3)
        #"C:Cloud:VueJS"|"C")
            echo "Aca"
            exit
            break;;
        esac
    fi
done

   # if [ opcion ]; then
      #  if ̣[[ -z $PS2 ]]; then
       #     echo "algo"
      #  else

      #  printf "Opcion incorrecta\n"
    #fi




echo "Number files in SEARCH PATH with EXTENSION:" $(ls -1 "${SEARCHPATH}"/*."${EXTENSION}" | wc -l)
if [[ -n $1 ]]; then
    echo "Last line of file specified as non-opt/last argument:"
    tail -1 "$1"
fi
#mkdir -p /opt/codigoFuenteMio
#cd /opt/codigoFuenteMio
#rm -rf $1
#mkdir -p $1/
#mvn archetype:generate -DarchetypeGroupId=org.codehaus.mojo.archetypes -DarchetypeArtifactId=pom-root -DarchetypeVersion=RELEASE -DgroupId=afip.dit.st -DartifactId=$1 -Dpackage=pom -DinteractiveMode=false
#cd $1
#mvn archetype:generate -DarchetypeArtifactId=spring-boot-sample-simple-archetype -DarchetypeGroupId=org.springframework.boot -DarchetypeVersion=1.0.2.RELEASE -DgroupId=afip.dit.st -DartifactId=$2 -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false
#mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=RELEASE -DgroupId=afip.dit.st -DartifactId=$3 -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false
#vue init webpack $3

