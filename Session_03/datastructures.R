# Arbeit mit Daten

## Vektoren

* Vektoren anlegen
```{r echo = TRUE}
v1 <- 1
v1
v2 <- 1:150
v2
v3 <- c('a', 'b', 'c', 'd', 'e', 'z')
v3
```

* Vektortyp überprüfen
```{r echo = TRUE}
typeof(v2)
typeof(v3)
```
* Sequenzen generieren
```{r echo = TRUE}
seq(1, 11, 2) # Kommentar
```

```{r}

```

```{r}

```


## DataFrames

    Wortart   TokenFrequenz   TypenFrequenz	Klasse
    ADJ	      421		          271		        offen
    ADV       337		          103		        offen
    N	        1411	          735		        offen
    KONJ      458		          18		        geschlossen
    PRAEP     455		          37		        geschlossen


* Vektoren anglegen
```{r echo = TRUE}
Wortart <- c('ADJ', 'ADV', 'N', 'KONJ', 'PRAEP')
Wortart

TokenFrequenz <- c(421, 337, 1311, 458, 455)
TypenFrequenz <- c(271, 103,735,  18, 37)
Klasse <- c('offen', 'offen', 'offen', 'geschlossen',
            'geschlossen')

```

* Vektoren verbinden
```{r echo = TRUE}

df1 <- data.frame(Wortart, TokenFrequenz, TypenFrequenz,
                  Klasse)
df1

typeof(df1)
class(df1)
```

* Dataframes speicher
```{r echo = TRUE}
write.table(df1, file = 'df1.csv', sep = '\t')
```
* Dataframes einlesen
```{r echo = TRUE}
df2 <-  read.table(file = 'df1.csv')
df2
```


## Sortierung und Selektion
* Elemente des Dataframes ansprechen
```{r}
str(df1)

is.vector(df1$TokenFrequenz)
df1[1, 2]

df1[1:3, 2]
df1[ , 3]
```

* Logische Abfragen
```{r echo = TRUE}
df1$Klasse == 'offen'
df1[df1$Klasse == 'offen', ]
```

* Logische Abfragen mit mehreren Bedingugen
```{r echo = TRUE}
df1[df1$Klasse == 'offen', ][df1$TokenFrequenz < 500, ]
```

## Hausaufgabe
* Daten herunterladen und im richtigen Verzeichnis ablegen:
  http://tinyurl.com/r-Session03-data

* Daten als ein DataFrame einlesen

* Durchschnittliche Pausenlänge bei Männern berechnen

* Die kürzeste und die länste Pause identifizieren (Fallnummer angeben)

* Überprüfen, ob es stimmt, dass Frauen im Dialog eher Schweigepausen machen. table()
