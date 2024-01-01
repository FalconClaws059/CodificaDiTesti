# Codifica di testi

In questa repository verrà salvata la codifica di tre pagine dei Diari per l'esame di Codifica di Testi del corso di informatica umanistica dell'Università di Pisa.


## Comando per la validazione con Xerces

```shell
java -cp "Xerces-J-bin.2.12.1/xerces-2_12_1/*" dom.Counter -v codifica.xml
```

I file XML e XSL sono stati trasformati con Saxon-HE 10.3 in un file HTML "<i>prolusioni.html</i>" con il seguente comando:

## Comando per la trasformazione con il processore XSLT "Saxon"

```shell
java -jar ./SaxonHE10-3J/saxon-he-10.3.jar -s:codifica.xml -xsl:stile.xsl -o:index.html
```
Risultato:
```