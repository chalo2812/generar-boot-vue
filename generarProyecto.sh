#!/bin/bash

crearDirectorio () {
    mkdir $1
}

clear
echo "-----------------------------------------------------------"
echo "---   Generar projecto segun las propiedades elegidas   ---"
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
        "1"|"M"|"Monolitico:Busines,Domain,Standalone,Salt,VueJS")
	    crearDirectorio()
            mvn archetype:generate -DarchetypeCatalog=local
            printf "Creando Monolitico"
	    break;;
            #exit
        "2"|"C"|"Cloud:VueJS")
            printf "Creando Cloud"
            break;;
        "3"|"Salir")
            echo "Saliendo..."
            exit
            break;;
        esac
    fi
done

   
#mkdir -p /opt/codigoFuenteMio
#cd /opt/codigoFuenteMio
#rm -rf $1
#mkdir -p $1/
#mvn archetype:generate -DarchetypeGroupId=org.codehaus.mojo.archetypes -DarchetypeArtifactId=pom-root -DarchetypeVersion=RELEASE -DgroupId=afip.dit.st -DartifactId=$1 -Dpackage=pom -DinteractiveMode=false
#cd $1
#mvn archetype:generate -DarchetypeArtifactId=spring-boot-sample-simple-archetype -DarchetypeGroupId=org.springframework.boot -DarchetypeVersion=1.0.2.RELEASE -DgroupId=afip.dit.st -DartifactId=$2 -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false
#mvn archetype:generate -DarchetypeGroupId=org.apache.maven.archetypes -DarchetypeArtifactId=maven-archetype-quickstart -DarchetypeVersion=RELEASE -DgroupId=afip.dit.st -DartifactId=$3 -Dversion=1.0.0-SNAPSHOT -DinteractiveMode=false
#vue init webpack $3

