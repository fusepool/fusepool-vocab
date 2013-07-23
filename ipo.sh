#!/bin/bash

perl -pe 's/([^\s]*)\s+(.*)/<http:\/\/fusepoo.info\/id\/ipo\/$1> <http:\/\/www.w3.org\/1999\/02\/22-rdf-syntax-ns#type> <http:\/\/xmlns.com\/foaf\/0.1\/Agent> .
<http:\/\/fusepoo.info\/id\/ipo\/$1> <http:\/\/purl.org\/dc\/terms\/identifier> "$1" .
<http:\/\/fusepoo.info\/id\/ipo\/$1> <http:\/\/www.w3.org\/2000\/01\/rdf-schema#label> "$2"\@en ./' ipo.txt > ipo.nt

#echo '<http://fusepoo.info/id/ipo> <http:\/\/www.w3.org\/1999\/02\/22-rdf-syntax-ns#type> <http://www.w3.org/2004/02/skos/core#ConceptScheme> .
#<http://fusepoo.info/id/ipo> <http:\/\/www.w3.org\/2000\/01\/rdf-schema#label> "Intellectual Property Offices"@en .
#<http://fusepoo.info/id/ipo> <http:\/\/purl.org\/dc\/terms\/description> "Country codes consist of two letters (e.g. GB) indicating the country or organisation where the patent application was filed or granted."@en .
#<http://fusepoo.info/id/ipo> <http:\/\/purl.org\/dc\/terms\/source> <http://ep.espacenet.com/help?topic=countrycodes&locale=en_ep&method=handleHelpTopic> .'>> ipo.nt
