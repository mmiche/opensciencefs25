Open science FS26
================
Marcel Miché
2026-03-23

- [Misstrauen, Skepsis](#misstrauen-skepsis)
  - [Was ist das hier?](#was-ist-das-hier)
    - [Transparenz](#transparenz)
    - [Orientierung, Kompass](#orientierung-kompass)
    - [Checklisten, Regelsammlungen](#checklisten-regelsammlungen)
    - [emmeans und marginaleffects](#emmeans-und-marginaleffects)
  - [Estimated marginal means](#estimated-marginal-means)
    - [Forschungsparadigmen - Exkurs](#forschungsparadigmen---exkurs)
- [Kategorial oder nicht?](#kategorial-oder-nicht)
- [Visualisierung](#visualisierung)
  - [Kontinuierlicher Prädiktor](#kontinuierlicher-prädiktor)
  - [Ordinaler Prädiktor](#ordinaler-prädiktor)
  - [URLs etc. zu Visualisierung](#urls-etc-zu-visualisierung)
- [Vermeide Kontraproduktivität](#vermeide-kontraproduktivität)
  - [Methodische Sicherheit](#methodische-sicherheit)
  - [Methodische Details](#methodische-details)
    - [Indzidenz und
      Regressionsmodell](#indzidenz-und-regressionsmodell)
    - [Überfrachtetes
      Regressionsmodell](#überfrachtetes-regressionsmodell)
    - [Dichotomanie](#dichotomanie)
    - [Präzision](#präzision)
    - [Konfidenzintervall](#konfidenzintervall)
    - [Alpha Signifikanzniveau](#alpha-signifikanzniveau)
    - [Nullismus](#nullismus)
    - [Zwischenfazit](#zwischenfazit)
    - [Likelihood Ratio (LR)](#likelihood-ratio-lr)
- [Literaturverzeichnis](#literaturverzeichnis)

# Misstrauen, Skepsis

Gebe niemals die Kontrolle ab, an von anderen Menschen oder von dir
selbst aufgestellte Regeln. Das heisst, dass Misstrauen wesentlich
besser ist als Vertrauen, im Rahmen von Regelsammlungen, z.B.
Checklisten, weil **Misstrauen** Wachsamkeit fördert (und fordert),
während Vertrauen erschreckend häufig Unachtsamkeit fördert (nicht
zwingend fordert).

Nachdem dies nun geschrieben ist, sei betont, dass Checklisten und
Regelsammlungen dann sehr gut sein können, wenn man mit ihrer Hilfe ein
bewusstes sowie gut begründetes Ziel verfolgt, das von einer gesunden
Portion Misstrauen begleitet wird.

## Was ist das hier?

Eine während des FS26 produzierte Sammlung von hoffentlich relevanten
Hinweisen als auch konkreten Anleitungen, zu Umsetzungsmöglichkeiten von
[open
science](https://poldrack.github.io/psych-open-science-guide/README.html).
Open science macht hauptsächlich dann Sinn, wenn Personen keine
(Existenz-)Angst zu haben brauchen, wenn sie öffentlich zeigen (=
dokumentieren), was sie aus welchem Grund, auf welche Weise und zu
welchem Zweck in die Tat umgesetzt haben. Zugleich will sich
selbstverständlich niemand öffentlich lächerlich machen. Genau diesem
Zweck sollen alle Inhalte dieses Dokuments dienen, denn die dumpfe,
latente Angst, sich lächerlich zu machen, scheint meist daher zu kommen,
dass man sich nicht sicher genug ist, ob man den Kern einer Sache, z.B.
eines statistischen Werkzeugs, ausreichend gut verstanden hat, um mit
dessen Hilfe etwas öffentlich in die Tat umzusetzen.

### Transparenz

Transparenz ist **das** Synonym schlechthin für open science. Beginnen
wir also mit dem Dokumenttyp dieses
[markdown](https://www.markdownguide.org/) Dokuments. Es wurde mittels
[rmarkdown](https://rmarkdown.rstudio.com/index.html) produziert
([weitere rmarkdown Quelle](https://yihui.org/rmarkdown/)). Wie bei
jedem Dokumenttyp, stellt sich auch hier die Frage nach dem Ziel, d.h.
was soll in welcher Form und auf welchem Weg an wen gelangen, und
weshalb?

**Was?** Informationen unterschiedlicher Art, z.B. Weblinks, Text,
Codebeispiele, Graphiken.

**In welcher Form?** Nach keinen rigiden Vorgaben sowie unmittelbar,
d.h. Weblinks zum Anklicken, Text zum Lesen, Codebeispiele entweder mit
Ergebnis-Output oder ohne, jedenfalls zum Kopieren und ins eigene
R-Skript Einfügen, Graphiken zum Betrachten.

**Auf welchem Weg?** Online (GitHub) und uneingeschränkt frei
zugänglich.

**An wen?** In erster Linie an Studierende dieses open science Seminars,
zudem aber auch an jede Person, der der Weblink weitergeleitet wird.

**Weshalb?** Sammlung relevanter open science Hinweise als auch konkrete
technische Anleitungen, z.B. zur öffentlichen Bereitstellung des
Analysecodes.

### Orientierung, Kompass

Wer verstehen will, braucht Orientierung. Beides geht optimal mit
Einfachheit, entweder als erstem Schritt oder sobald man anfängt, den
Wald vor lauter Bäumen nicht mehr zu sehen.

<div class="figure">

<img src="osfs26_files/figure-gfm/chunk1-1.png" alt="Maximal einfache Darstellung einer Schwierigkeit und deren (teilweiser) Lösung bzw. Behebung." width="580" />
<p class="caption">

Maximal einfache Darstellung einer Schwierigkeit und deren (teilweiser)
Lösung bzw. Behebung.
</p>

</div>

Obige Graphik kann ähnlich wie ein Kompass verwendet werden. Jede/r
Wissenschaftler/in beschäftigt sich in einem gegebenen Augenblick
ausschliesslich mit <ins>einer</ins> **S**chwierigkeit, d.h. etwas das
er/sie (noch) nicht versteht. Beim **W**arum versucht man, mögliche
Erklärungsfaktoren für die **S**chwierigkeit zu finden. Beim **D**arum
prüft man empirisch, ob ein identifizierter Erklärungsfaktor die **S**
tatsächlich (teilweise) produziert (wenn es ein RF ist) oder verhindert
(wenn es ein PF ist). Zuletzt versucht man den Erklärungsfaktor so gut
es geht zu eliminieren (wenn es ein RF ist) oder zu stärken (wenn es ein
PF ist), wodurch im besten, nämlich in einem monokausalen, Fall die
**S** künftig ausbleibt (KS), wenigstens aber geringer als zuvor
ausgeprägt ist (GS).

**Kleines Beispiel**: Sollte es ein RF für geringes psychologisches
Wohlbefinden (pW) sein, dass man Diskriminierungserfahrungen macht, dann
sagt man damit lediglich, dass man vermutet, dass diskriminierte
Personen weniger pW aufweisen, verglichen mit Personen ohne jenen RF.
Man erwartet somit einen **Unterschied** in pW, **in Abhängigkeit vom**
vermuteten RF (der entweder vorhanden oder eben nicht vorhanden ist).
Somit richtet sich jede Forschungsfrage gezwungenermassen immer danach,
ob ein **bedingter Unterschied** vorliegt oder nicht. Bei einem
vermuteten PF dreht sich lediglich die Richtung des erwarteten
Unterschiedes um, im Gegensatz zu einem vermuteten RF.

### Checklisten, Regelsammlungen

Im Seminar zu open science (Bereich: empirische Psychologie) geht es -
aufgrund der quasi-Gleichsetzung von empirisch und datengestützt - um
das Planen, Durchführen und Analysieren von messbaren Konstrukten bzw.
deren vermuteter Zusammenhänge.

In der empirischen Psychologie ist mit Zusammenhang fast immer ein
linearer Zusammenhang gemeint. Ein **linearer Zusammenhang** ist immer
nur dann vorhanden, wenn ein **bedingter Unterschied** in den Daten
vorhanden ist. Dies ist am einfachsten an einem sogenannten Scatterplot
demonstriert, wobei hier ein positiver Zusammenhang gezeigt wird.

``` r
library(correlatio)
library(ggplot2)
set.seed(1) # set.seed to ensure reproducibility
# Simulate two continuous variables x1 and x2
dat <- correlatio::simcor(obs=40, rhos=.7)[[1]]
# Scatterplot and slope of the linear model (lm)
ggplot(data=dat, aes(x=x1, y=x2)) +
    geom_point() +
    geom_smooth(method="lm", se=FALSE)
```

<figure>
<img src="osfs26_files/figure-gfm/chunk2-1.png"
alt="Scatterplot und slope aus der einfachen linearen Regression." />
<figcaption aria-hidden="true">Scatterplot und slope aus der einfachen
linearen Regression.</figcaption>
</figure>

Man sieht, wenn man x1 von links nach rechts abläuft, dass man dann
tendenziell auf höhere x2 Werte stösst (Englisch: slope = rise over
run). Anders gesagt, es macht einen Unterschied auf Ebene x2, ob man auf
Ebene x1 zwischen -2 und 0 liegt oder ob man x1-Werte grösser als 0 hat.
Ein linearer Zusammenhang ist somit die Verallgemeinerung des Konzepts
Unterschied, den man gewöhnlich nur mit einer Gruppenzugehörigkeit
verbindet, z.B. die Experimentalgruppe habe durchschnittlich höhere
Werte als die Kontrollgruppe. Ein **Unterschied** wird in der Statistik
häufig als **Effekt** bezeichnet (Vorsicht vor Kausalitätsillusionen!).
Der vermutete **Effekt** bezieht sich dabei immer auf die sogenannten
**Erwartungswerte**, die auf theoretischer Populationsebene existieren
(laut Theorie). Die konkrete Schätzung geschieht jedoch anhand von
**Mittelwerten** einer konkreten Stichprobe, die aus der Zielpopulation
stammen soll.

### emmeans und marginaleffects

Vor diesem Hintergrund, d.h. der bewussten und gut begründeten Analyse
des Zusammenhangs gemessener psychologischer Konstrukte, empfehle ich
das R Paket [emmeans](https://rvlenth.github.io/emmeans/). Insbesondere
empfehle ich, dass der Text unterhalb der Überschrift [‘Tidyness can be
dangerous’](https://rvlenth.github.io/emmeans/#tidiness-can-be-dangerous)
so oft gelesen wird, bis er in Mark und Bein übergegangen ist. Eine von
emmeans unabhängige, jedoch ähnliche Absicht steckt hinter der
Onlinequelle [marginaleffects](https://marginaleffects.com/).
<!-- Auch hier stösst man auf der Titelseite auf ähnliche Hinweise wie bei emmeans, nämlich dass allem Anschein nach viele Forscher/innen (nicht nur Psycholog/innen) in der Vergangenheit und Gegenwart ihr Verständnis komplexer statistischer Modelle sehr häufig überschätzt haben. Mit anderen Worten, sie haben sich auffällig häufig gegen das [Misstrauen](#Misstrauen), d.h. für das Vertrauen entschieden, z.B. in beliebte, doch leider lückenhafte Fachbücher und in 'anwenderfreundliche' Software, die bei genauem Hinsehen eher als anwenderfeindlich gelten sollte. Grund: Diese Software verletzt den Grundsatz 'Hilfe zur Selbsthilfe', d.h. diese Software suggeriert, dass sie, d.h. die Softwarefirmen, den Forscher/innen mühsame (Denk-)Arbeit abnehmen kann, worauf leider die grosse Mehrzahl aller Forscher/innen seither eingestiegen ist. Der Grad an vertrauensvoller Naivität ist hierbei maximal. Die Quittung ist, dass Softwarefirmen zwar viele zufriedene 'Kund/innen' haben, die jedoch leider Forschung betreiben, die viel zu wünschen übrig lässt [@park2023papers]. Beispiele gibt es zu viele um sie hier alle aufzuzählen, deshalb seien stellvertretend nur drei Beispiele genannt:

1. Der hybride p-Wert. Eine Mischung aus dem p-Wert von Fisher und von Neyman-Pearson, die über kein wissenschaftliches Fundament verfügt [@goodman1993p]!
2. Die völlig einseitige sowie fehlerhafte Anwendung der frequentistischen Inferenzstatistik, die Denkfaulheit fördert, weil sie suggeriert, dass der Forschungsprozess fast vollständig mechanisch (objektiv) abläuft [@nuzzo2014scientific], dass dies sogar gut so sei, weil 'subjektive' Einschätzungen den wissenschaftlichen Erfolg gefährden, was blödsinnig erscheint, es sei denn, man hat sich vollkommen dem Positivismus verschrieben [@park2020positivism].
3. Korrektur für multiples Testen [@greenland2019multiple; @hooper2025adjust]. Die Menge sowie die Titel der Publikationen zu diesem Thema zeigen an, dass eine grosse Mehrheit an Forscher/innen allem Anschein nach sich nicht mit 'subjektiven' Überlegungen hierzu aufhält. Dies zeigt eine beträchtliche Unsicherheit an. -->

## Estimated marginal means

Die ‘population marginal means’ wurden von Searle, Speed, and Milliken
(1980) als Alternative zu den oberflächlichen least squares means
vorgeschlagen. Das heisst lediglich, dass ein etwas genaueres, zugleich
also ein etwas längeres bzw. intensiveres Hinsehen auf die Ergebnisse
einer empirischen Datenanalyse vorgeschlagen wurde. Um einigermassen
nachvollziehen zu können, warum diese doch scheinbar so
selbstverständliche Angelegenheit (genau(er) hinzusehen) als
‘Alternativvorschlag’ bezeichnet wird, der ausgerechnet an
Forscher/innen gerichtet war bzw. ist, braucht es Hintergrundwissen zu
Forschungsparadigmen (Pandey et al. 2025). Die Tatsache, dass sehr
viele, leider vor allem Nachwuchsforscher/innen, so gut wie nichts zu
Forschungsparadigmen wissen, zeigt überdeutlich den Trend in der
‘modernen’ Forschung an. Es muss in erster Linie der äusserliche Schein
gewahrt werden, obwohl nichts anderes so unwissenschaftlich ist. Der
eigentliche Kern der Wissenschaft besteht doch gerade darin, den
äusserlichen Schein durch genaue(re)s Hinsehen zu durchbrechen.

### Forschungsparadigmen - Exkurs

Das in der empirischen, mit Sicherheit in der klinischen, Psychologie
weiterhin dominante Forschungsparadigma ist der Positivismus (Park,
Konge, and Artino Jr 2020), genau genommen ist es der Post-Positivismus
(Pandey et al. 2025). Das deutlichste Merkmal dieses Paradigmas liegt in
der Verachtung der subjektiven Urteilsfähigkeit (SU) des Individuums.
Das lässt sich u.a. leicht an der extremen Betonung der Objektivität
erkennen, z.B. die strikte Regel, dass der/die Experimentator/in
möglichst keinerlei Kontakt mit den Versuchspersonen, vor oder während
des Experiments, haben sollte. Daran ist tatsächlich nichts auszusetzen.
Es ist hingegen sehr viel daran auszusetzen, dass das gesamte Regelwerk
des Post-Positivismus durch jene Verachtung der SU sehr viel dazu
beigetragen hat, so zu tun, als könnten empirische Analysen, d.h.
statistische Datenauswertung, ebenfalls ohne SU auskommen. Es wurde und
wird so getan, als könne man, genau wie bei einer Maschine, ein und
dieselbe Prozedur so oft man will wiederholen, und müsse einfach nur
jedes Mal notieren, was man objektiv(!) beobachtet hat. Das ist die
Kernidee des Frequentismus bzw. der frequentistischen Inferenzstatistik.
Die Verachtung der SU geht so weit, dass man wie selbstverständlich
davon ausgeht, dass ein Individuum, z.B. du, niemals ernsthaft auf den
Gedanken kommen könnte, darüber nachzudenken inwiefern jene
frequentistische Kernidee der Realität nah oder fern steht, geschweige
denn, dass jenes Individuum zum subjektiven Urteil kommen könnte, dass
jene Kernidee viel zu extrem und deshalb zu relativieren sei.

Da die Verachtung der SU und einige offensichtliche
Widersprüchlichkeiten im (Post-)Positivismus nicht nach dem Geschmack
mancher Menschen sind, gibt es andere Forschungsparadigmen, die die SU
des Menschen wertschätzen. Das heisst nicht, dass sich diese anderen
Paradigmen unklar darüber wären, dass die SU fehleranfällig ist. Es
heisst lediglich, dass diese Paradigmen, z.B. der Pragmatismus (Casler
and Pierides 2025), die SU nicht vollumfänglich verachten, um sie
komplett von der Bildfläche zu entfernen.

Nebenbei erwähnt: Das Regelwerk des (Post-)Positivismus hat weiterhin
den überaus hässlichen Vorteil (aus meiner Sicht jedoch Nachteil), dass
Studierenden während der universitären ‘Ausbildung’ suggeriert werden
kann, dass grösstenteils der Käse gegessen ist, d.h. dass es die Aufgabe
der Studierenden lediglich sei, sich zu gut funktionierenden Zahnrädern
(innerhalb einer gut etablierten, exzellenten Forschungsmaschinerie)
formen zu lassen. Zu dieser mechanischen Weltsicht, aus der das
positivistische Regelwerk stammt, passt es sehr gut, multiple-choice
Klausuren als fast ausschliessliches Prüfungswerkzeug zu verwenden, denn
es bestätigt und verstärkt das SU-verachtende Forschungsparadigma.
Studierende werden somit als standardisierte Behälter behandelt, die mit
standardisierten Forschungsinformationen befüllt werden müssen, nicht
unähnlich eines Fliessbandes in einer Fabrik.

**Fazit**: Ein Forschungsparadigma ist nichts geringeres als eine
Weltsicht, aus der sich alle Details täglichen Denkens, Fühlens und
Handelns ableiten. Es ist somit sehr empfehlenswert, sich selbst bewusst
zu machen, in welchem Paradigma man sich gegenwärtig aufhält (Pretorius
2024) und ob man diesem Aufenthalt dann bewusst zustimmt, ihn unter
Umständen verlängert, oder ob man ihn zugunsten eines anderen Paradigmas
abzubrechen versucht.

**Exkurs Ende**

Schauen wir uns einmal ein Beispiel zu ‘population marginal means’ an
(geläufiger bekannt als ‘marginal effects’).

``` r
# Simulation von 10, 15 und 13 Werten auf 3 Gruppen verteilt.
set.seed(5)
vals1 <- rnorm(n=10, mean=3)
set.seed(4)
vals2 <- rnorm(n=15, mean=3.5)
set.seed(49)
vals3 <- rnorm(n=13, mean=4)
df <- data.frame(
    # Weise group den Typ 'factor' zu (kategoriale Variable).
    group=factor(rep(1:3, times=c(10, 15, 13))),
    vals=c(vals1, vals2, vals3)
)
# Mittelwerte der drei Gruppen
c(mean(vals1), mean(vals2), mean(vals3))
```

    ## [1] 2.921148 3.941326 3.678518

``` r
mod <- lm(vals ~ group, data=df)
coefficients(summary(mod))
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 2.9211485  0.2901259 10.068556 7.088035e-12
    ## group2      1.0201775  0.3745509  2.723735 1.000175e-02
    ## group3      0.7573696  0.3859035  1.962588 5.768205e-02

``` r
# Plot
ggplot(df) +
    aes(x = group, y = vals) +
    geom_point(shape = 1)
```

![](osfs26_files/figure-gfm/chunk3-1.png)<!-- -->

Da der Prädiktor hier kategorial ist, erhalten wir in der
Standardausgabe die Unterschiede zwischen group2 und group1 (1.020) und
zwischen group3 und group1 (.757). Wenn nichts spezifiziert wird, nimmt
R die unterste Kategorie (hier group1) als Referenz (siehe Intercept =
Mittelwert von group1).

Mit dem ‘emmeans’ Paket lassen sich sehr viele genauere Einblicke in das
Analyseresultat gewinnen. Zu den einfachsten Einblicken gehören die
paarweisen
[Kontraste](https://cloud.r-project.org/web/packages/emmeans/vignettes/comparisons.html)
zwischen den drei Gruppen (group als kategoriale Variable).

``` r
library(emmeans)
# ctrs: contrasts
ctrs <- emmeans::emmeans(mod, specs = "group")
pairs(ctrs)
```

    ##  contrast        estimate    SE df t.ratio p.value
    ##  group1 - group2   -1.020 0.375 35  -2.724  0.0264
    ##  group1 - group3   -0.757 0.386 35  -1.963  0.1366
    ##  group2 - group3    0.263 0.348 35   0.756  0.7321
    ## 
    ## P value adjustment: tukey method for comparing a family of 3 estimates

Der Vergleich der beiden Ergebnisausgaben zeigt die zwei bereits
bekannten **Unterschiede** zwischen group1 und group2 sowie zwischen
group1 und group3, aber eben zusätzlich den **Unterschied** zwischen
group2 und group3. Zudem wird automatisch eine Korrektur für multiples
Testen gemäss Tukey durchgeführt. Wenn man keine Korrektur möchte
(Hooper 2025), dann muss man in der emmeans Funktion das Argument adjust
auf ‘none’ setzen. Es lassen sich etliche Dinge spezifizieren als auch
visualisieren.

``` r
plot(ctrs, comparisons = TRUE)
```

<figure>
<img src="osfs26_files/figure-gfm/chunk5-1.png"
alt="Paarweise Kontraste." />
<figcaption aria-hidden="true">Paarweise Kontraste.</figcaption>
</figure>

Ob ein Kontrast statistisch signifikant ist, zeigt sich durch
Nichtüberlappung der roten Pfeile, hier zwischen group1 und group2.
Überlappung (hier group2 und group3 sowie group1 und group3) also
bedeutet, dass diese Kontraste statistisch nicht signifikant sind (es
wird hierbei einbezogen, ob bzw. welche Korrektur für multiples Testen
durchgeführt worden ist).

**Vorläufiges Fazit**: Warum würde sich ein/e Forscher/in, der/die
grosses Interesse an den Analyseergebnissen hat, sich mit einer
oberflächlichen summary Ausgabe zufrieden geben? Vier mögliche Gründe:

1.  Die Person weiss nicht gut genug Bescheid, mit der Statistiksoftware
    umzugehen und *muss* sich daher mit der Standardausgabe zufrieden
    geben.
2.  Die Person hat kein Interesse an detaillierten Analyseergebnissen.
3.  Die Person möchte das Risiko um keinen Preis eingehen, ein stat.
    nicht signifikantes Ergebnis zu sehen.
4.  Die Person orientiert sich daran, was die grosse Mehrheit anderer
    Forscher/innen im eigenen Forschungsfeld macht. Wenn ‘marginal
    effects’ dort nur sehr selten berichtet werden, dann berichtet diese
    Person sie eben auch nicht.

**Zusatz**: Bei meinen Recherchen war ich jedenfalls sehr überrascht,
wie selten man beim Thema ‘marginal effects’ auf psychologische
Publikationen stösst (Thomson, Maskrey, and Vlaev 2017; Hautamäki et al.
2025, 2026). Einen sehr kurzen, aber aufschlussreichen Erklärungsansatz
liefert Norton, Dowd, and Maciejewski (2019). Darüber hinaus dürften
Mize, Doan, and Long (2019) und Howell-Moroney (2024) eine wertvolle
Informationsquelle sein.

# Kategorial oder nicht?

Die weiterhin am stärksten verbreitete Art in der empirischen
Psychologie, Analyseergebnisse zu betrachten, ist kategorial. Das
heisst, ein statistisches Signifikanzniveau, meist unreflektiert die
konventionelle 5% Grenze, wird als Entscheidungskriterium akzeptiert
(Emmert-Streib 2024). Der Blick des/der Forscher/in richtet sich also
unwillkürlich auf den empirischen p-Wert. Der Vorteil, bei genauerem
Hinsehen eher ein Nachteil, liegt im Entscheidungsautomatismus, d.h. ein
**genaueres** bzw. **intensiveres** Hinsehen auf die Ergebnisse scheint
unnötig zu sein. *Oder nicht?* Noch dazu suggeriert es so etwas wie
Sicherheit und Entschlossenheit, was man leicht mit ‘Expertise’
verwechseln kann. Kurz: Ein angenehmes Gefühl, seinen Forschungserfolg
so automatisch und schnell bestätigt zu bekommen. Es könnte jedoch auch
als etwas zu schön um wahr zu sein erscheinen (bei genauerem Hinsehen).
*Oder?* (Haeffel 2022)

Hingegen, wenn man statt einer kategorialen Signifikanzgrenze das
komplette Konfidenzintervall dimensional versteht, dann wäre man
gezwungen, etwas genauer, und zudem auf eine andere Weise, hinzusehen.
Bei genauerem Hinsehen fällt jedoch auf, dass man sogar dann immer noch
(teilweise) kategorial handelt, jedenfalls dann, wenn man ein bestimmtes
Konfidenzintervall (KI), z.B. das 95%-KI, verwendet. Versteift man sich
also auf keine bestimmte Prozentzahl, dann käme man schliesslich zur
sogenannten p-Wert Funktion (Infanger and Schmidt-Trucksäss 2019; Rafi
and Greenland 2020). Hier läge der Vorteil darin, dass ohne
**genaueres** bzw. **intensiveres** Hinsehen überhaupt nichts zustande
kommen kann. Dies habe ich ausführlich im HTML ‘pValueIssue’
beschrieben.

**Vorläufiges Fazit**: Je mehr man die kategoriale Betrachtung der
Analyseergebnisse ablehnt, desto aufwändiger wird die Arbeit rund um die
Analyseergebnisse. Genau dasselbe gilt auch für das Berichten von
‘marginal effects’. Man schafft sich, und somit auch dem/der Leser/in
der Publikation, eine beträchtlich grössere Herausforderung, verglichen
mit der blitzschnellen Kenntnisnahme, ob das summary Standardergebnis
statistisch signifikant ist. Je nach Perspektive ist das eine oder das
andere von Vor- bzw. Nachteil.

**Beispiel**: Ein sehr passendes Beispiel entstammt einer Masterarbeit,
die ich im Februar 2026 begutachtet habe. Die Rohdaten kann ich leider
nicht zur Verfügung stellen, aber das Hauptergebnis schon, weil auf
diese Weise niemand der Studienteilnehmer/innen identifiziert werden
kann.

Es handelt sich um 31 Psychologiestudierende, deren
Depressionssymptomschwere (DSS) zu drei Messzeitpunkten (MZP) mit dem
Beck’s Depression Inventory 2 (BDI-II) gemessen wurde. Zwischen dem
zweiten und dritten MZP erhielten 21 (der 31) Personen ein spezifisches
Training (Experimentalgruppe, EG), während die Kontrollgruppe (KG, 10
der 31 Personen) ein anderes Training erhielt. Die Hauptfrage war, ob
die DSS in der EG zwischen MZP 2 und 3 anders verlief als in der KG.
Diese Hauptfrage kann man mit oder ohne Richtungsvorgabe stellen. Ohne
Richtung bedeutet, dass man nur vermutet, dass sich EG und KG bzgl. DSS
unterscheiden werden. Das könnte in dieser Studie sinnvoll sein, weil
das Training der EG auf die Zwangsstörung zugeschnitten war, d.h. eine
Verringerung der DSS wäre als mögliche positive Nebenwirkung des
Trainings zu verstehen. Jedoch könnte man trotzdem, u.a. aus
theoretischen Überlegungen und auf Basis der Fachliteratur, eine
bestimmte Richtung in der Hypothese verankern, nämlich, dass die DSS in
der EG stärker abnimmt als in der KG.

Aus der Erstversion der begutachteten Masterarbeit war für mich nicht
eindeutig klar, ob die Hypothese ungerichtet oder gerichtet war. In der
Datenanalyse wurde sie jedenfalls ungerichtet ausgewertet. Womöglich
aber nur deshalb, weil die Standardausgabe der verwendeten Software (R
und R Paket lme4) eine ungerichtete Hypothese voraussetzt. Ich hätte
dieses Beispiel nicht gewählt, wenn sich nicht eine ‘besondere’
Situation ergeben hätte: Bei ungerichteter Hypothese war der
Interaktionseffekt aus Gruppe (EG vs KG) und Zeit (MZP 2 vs MZP 3) nicht
stat. sign. (zweiseitiger p-Wert = .07), bei gerichteter Hypothese aber
schon (einseitiger p-Wert = .07/2 = .035), trotz der sehr kleinen
Stichprobe. In ein solches Scheindilemma kann man nur geraten, wenn man
das Signifikanzniveau von 5% wirklich ernstnimmt. Das Ernstnehmen
wiederum hängt aufs Engste mit dem Forschungsparadigma zusammen, in dem
man sich aufhält. Es folgt das visualisierte und numerische Ergebnis,
das gerade beschrieben wurde:

``` r
(dssinteraction <-
ggplot(data=dataPlot_long, aes(x=Time, y=BDI, color=group, group=group)) +
    geom_line() +
    # expand_limits(y=c(0, 12)) +
    xlab(label="Measurement timepoint") +
    ylab(label="BDI-II score") +
    theme(legend.position = "top",
          legend.title = element_blank()))
```

<figure>
<img src="osfs26_files/figure-gfm/chunkK2-1.png"
alt="Deutlicher Interaktionseffekt zwischen MZP 2 (mid) und 3 (post)." />
<figcaption aria-hidden="true">Deutlicher Interaktionseffekt zwischen
MZP 2 (mid) und 3 (post).</figcaption>
</figure>

Würde man im ggplot2 Code expand_limits der y-Achse zwischen 0 und 12
aktivieren, dann würde der Interaktions’effekt’ nicht so beeindruckend
gross erscheinen wie hier. Gleichzeitig wäre dann aber 2/3 der Graphik
von nichts als einer weissen Fläche eingenommen. Entscheidungen beim
Visualisieren von Ergebnissen haben eben auch immer Vor- und Nachteile,
die es abzuwägen gilt.

``` r
colMeans(data[data$group=="Control group",c("bdi_mid", "bdi_post")])
```

    ##  bdi_mid bdi_post 
    ##      8.3     11.9

``` r
colMeans(data[data$group=="Experimental group",c("bdi_mid", "bdi_post")])
```

    ##  bdi_mid bdi_post 
    ## 9.571429 8.047619

Die in der Graphik (KG rot, EG türkis) relevanten DSS Mittelwerte sind
8.3 (mid, KG), 11.9 (post, KG) und 9.57 (mid, EG), 8.05 (post, EG).

``` r
library(lme4)
library(lmerTest)
# Linear mixed effects model (LMM)
# Just show the fixed effects results:
round(coefficients(summary(lmer(BDI ~ Time * Group + (1 | Subject), data = data_long))), digits=4)
```

    ##                                  Estimate Std. Error      df t value Pr(>|t|)
    ## (Intercept)                        8.3000     2.4015 44.0161  3.4561   0.0012
    ## TimePost                           3.6000     2.2435 29.0000  1.6046   0.1194
    ## GroupExperimental group            1.2714     2.9178 44.0161  0.4357   0.6652
    ## TimePost:GroupExperimental group  -5.1238     2.7258 29.0000 -1.8797   0.0702

``` r
# p-value for the two-sided hypothesis
pt(q=-1.8797417, df=29, lower.tail = TRUE)*2
```

    ## [1] 0.0702245

``` r
# p-value for the one-sided hypothesis
pt(q=-1.8797417, df=29, lower.tail = TRUE)
```

    ## [1] 0.03511225

**Zusatz**: Obiges Beispiel bezog sich zwar hauptsächlich auf das p-Wert
‘Dilemma’, eignet sich aber zudem sehr gut, um die lme4/lmerTest
Standardausgabe zweifelsfrei zu verstehen. Erinnerung: Es geht bei jeder
Forschungsfrage und Hypothese letztlich immer nur darum, ob es
**Unterschiede** gibt. Gehen wir also die Standardausgabe von oben bis
unten ab und erinnern wir uns an die vier relevanten DSS Mittelwerte.

``` r
# Relevante DSS Mittelwerte
kgMid <- 8.3; kgPost <- 11.9
egMid <- 9.571429; egPost <- 8.047619
# Estimate Spalte der lme4/lmerTest Standardausgabe
# Intercept = KG mid (MZP 2) = 8.3
# TimePost = Unterschied zwischen KG post und KG mid
kgPost - kgMid
```

    ## [1] 3.6

``` r
# GroupExperimental group = Unterschied EG mid und KG mid
egMid - kgMid
```

    ## [1] 1.271429

``` r
# Interaktionsterm: Unterschied zwischen zwei Unterschieden
egPost - kgPost - (egMid - kgMid)
```

    ## [1] -5.12381

Wichtiger als sich auf diese Zahlen zu konzentrieren, ist es, die
dazugehörige Graphik zu verstehen und noch viel wichtiger, sie kritisch
zu hinterfragen (Stichwort Forschungsparadigma) und zu einem subjektiven
Urteil zu gelangen. Ohne dies bleibt ‘Kompetenz’ bzw. ‘Expertise’ bloss
eine leere Worthülse, ein Bluff.

![](osfs26_files/figure-gfm/chunkK5-1.png)<!-- -->

Was genau zeigt sich im Interaktionsterm? Es zeigt sich die Erwartung,
dass die EG und KG beide denselben Verlauf zwischen mid und post nehmen,
falls das Training der EG keinerlei Wirkung hätte. Aber ist diese
Erwartung so selbstverständlich? Woher kommt sie? Könnte es auch
Erklärungen geben, warum trotz keinerlei Wirkung einer Intervention
solche DSS Verläufe zwischen mid und post nicht exakt gleich sind?
Spielt es zum Beispiel eine Rolle, dass die DSS der
Studienteilnehmer/innen sich grösstenteils im unteren Drittel der BDI-II
Skala (= 0 bis 63) aufgehalten hatten? (DSS Wertebereich waren
hauptsächlich: mid = 3 bis 11 (min = 0, max = 27); post = 4 bis 14 (min
= 0, max = 25).) Können in diesem Wertebereich DSS vielleicht auch ohne
Interventionswirkung (stark) schwanken? Was ist mit der kleinen
Stichprobengrösse (*N*=31) und der ungleichen Gruppengrössen (21 vs 10)?
Solche und etliche weitere Fragen werden sowohl von der Graphik als auch
von der Standardausgabe des linear mixed effects model vollkommen
ignoriert. Schlimmer noch, es wird standardmässig einfach der maximale
‘Effekt’ (**Unterschied**) ausgegeben. Wenn also der/die Forscher/in
(bzw. Student/in) solche und weitere kritische Fragen nicht stellt und
zu subjektiven Urteilen kommt, wer sonst?

**Fazit**: Open science trägt also (implizit) auch die Hoffnung in sich,
dass wenn Forscher/innen alles transparent machen, inkl. Ergebnisse
adäquat zu visualisieren, dass dann vielleicht auch mehr kritisches
Hinterfragen stattfindet als das bisher in der grossenteils
intransparenten Forschungs- und Publikationspraxis der Fall war und noch
ist.

# Visualisierung

Auch ohne publizierte Forschungsempfehlungen, wie etwa Pek and Flora
(2018), ist es wohl allen klar, dass empirische Ergebnisse wesentlich
besser verstanden werden können, wenn sie gut visualisiert worden sind.
‘Gut’ bedeutet hier ‘dem Verständnis förderlich’.

Nehmen wir einmal die simulierten Daten von oben (3 ungleich grosse
Gruppen, kontinuierlicher Outcome) und visualisieren unterschiedliche
Zusammenhänge, je nachdem wie der Prädiktor ‘Gruppe’ definiert wird.

## Kontinuierlicher Prädiktor

``` r
dfKontin <- df
dfKontin$group <- as.numeric(dfKontin$group)
modKontin <- lm(vals ~ group, data=dfKontin)
coefficients(summary(modKontin))
```

    ##              Estimate Std. Error  t value     Pr(>|t|)
    ## (Intercept) 2.8650640  0.4463164 6.419357 1.919239e-07
    ## group       0.3453123  0.2011934 1.716320 9.469815e-02

``` r
# Plot
ggplot(dfKontin) +
    aes(x = group, y = vals) +
    geom_point(shape = 1) +
    geom_smooth(color = "blue", 
                method = lm, se = FALSE)
```

<figure>
<img src="osfs26_files/figure-gfm/chunk6-1.png"
alt="Kontinuierlicher Prädiktor." />
<figcaption aria-hidden="true">Kontinuierlicher Prädiktor.</figcaption>
</figure>

``` r
# Prüfe, ob der Intercept für group = 0 korrekt ist:
predict(modKontin, newdata = data.frame(group=0))
```

    ##        1 
    ## 2.865064

``` r
# Gebe Vorhersage auch für Werte 1-3 aus:
predict(modKontin, newdata = data.frame(group=1:3))
```

    ##        1        2        3 
    ## 3.210376 3.555689 3.901001

Da der Prädiktor hier als kontinuierliche Variable behandelt wird,
berechnet das lineare Model (lm) den Intercept für die
Prädiktorausprägung 0, obwohl es diese Ausprägung gar nicht gibt. Wir
erhalten als summary Ergebnis eine durchschnittliche Steigung von .3453.
Sofern ein/e Forscher/in einen guten Grund für solch eine Information
hätte, stünde dieser Berechnung nichts im Wege. Jedoch, etwas zu
berechnen und im Anschluss einen Sinn darin zu suchen, ist nicht
empfehlenswert.

## Ordinaler Prädiktor

Hier ist der kategoriale Prädiktor aufsteigend geordnet. Dies veranlasst
R einen linearen und separat einen quadratischen Zusammenhang zu testen.

``` r
dfOrd <- df
dfOrd$group <- ordered(dfKontin$group)
modOrd <- lm(vals ~ group, data=dfOrd)
coefficients(summary(modOrd))
```

    ##               Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept)  3.5136641  0.1509366 23.279066 6.940244e-23
    ## group.L      0.5355412  0.2728750  1.962588 5.768205e-02
    ## group.Q     -0.5237766  0.2494604 -2.099638 4.303940e-02

``` r
# Plot
ggplot(dfOrd) +
    aes(x = group, y = vals) +
    geom_point(shape = 1) +
    geom_smooth(aes(x = unclass(group), color = "1"), 
                formula = y ~ x, 
                method = lm, se = FALSE) +
    geom_smooth(aes(x = unclass(group), color = "2"), 
                formula = y ~ poly(x, 2), 
                method = lm, se = FALSE) +
    scale_color_discrete("Trend", labels = c("linear", "quadratic"))
```

<figure>
<img src="osfs26_files/figure-gfm/chunk7-1.png"
alt="Ordinaler Prädiktor." />
<figcaption aria-hidden="true">Ordinaler Prädiktor.</figcaption>
</figure>

``` r
# Prüfe, ob der Intercept korrekt ist.
mean(predict(modOrd, newdata=data.frame(group=ordered(1:3))))
```

    ## [1] 3.513664

Der lineare Trend ist exakt derselbe wie oben ([siehe Kontinuierlicher
Prädiktor](#kontinuierlicher-prädiktor)). Der quadratische Trend geht
exakt durch die Mittelwerte der drei Gruppen (2.92, 3.94, 3.68). Der
Intercept ist der Mittelwert dieser drei Mittelwerte (3.51). Der
quadratische Trend zeigt einen besseren Modelfit, was daran zu erkennen
ist, dass der Betrag des t-Wertes \|2.1\| grösser ist als der t-Wert des
linearen Trends (1.96). Dies ist nicht überraschend, weil die
Datenpunkte etwas besser dem quadratischen Trend entsprechen, als dem
linearen Trend.

Der lineare Trend tested, ob die Daten mit dem linearen Model besser als
mit dem Nullmodel beschrieben werden können, welches verglichen mit dem
linearen Model einer horizontalen Geraden entspricht. Der quadratische
Trend testet, ob die Daten mit dem quadratischen Model besser
beschrieben werden können, verglichen mit linearen Model, welches somit
in diesem Vergleich als Nullmodel fungiert. Was genau die Zahlen in der
Spalte Estimate bedeuten, mit Ausnahme des Intercept, weiss ich leider
nicht.

Ähnlich wie oben, wo der Prädiktor als kontinuierlich behandelt wurde,
ist die einzig entscheidende Frage, ob bzw. welches Interesse der/die
Forscher/in hat, d.h. welche Information er/sie aus den Daten erhalten
möchte. Wenn polynomiale Trends des Grades 2 oder mehr (= nicht-lineare
Trends) exploriert werden sollen, wäre diese Analyse passend. Bei
polynomialen Trends höheren Grades muss man jedoch sehr aufpassen, dass
man sich nicht vom statistischen Modelfit blenden lässt, d.h. eine
Überanpassung (overfit) verletzt den wissenschaftlichen Grundsatz eines
möglichst sparsamen (parsimonious) Datenmodels (Azzalini 2023).

In diesem [Video (8:56
Min.)](https://www.youtube.com/watch?v=QptI-vDle8Y) wird gut erklärt und
veranschaulicht, was polynomiale Regression ist und was es mit Polynomen
zweiten usw. Grades auf sich hat.

**Vorläufiges Fazit**: Genau wie die gesamte Publikation, so sollte auch
eine Graphik so leicht verständlich wie möglich sein, was bei so etwas
Selbstverständlichem wie der Erkennbarkeit beginnt, z.B. der
Schriftgrösse der Achsen:

``` r
ggplot(data=dat, aes(x=x1, y=x2)) +
    geom_point(size=3)  +
    theme(
        panel.background = element_blank(),
        axis.text.x=element_text(size=16),
        axis.title.x=element_text(size=16),
        axis.text.y=element_text(size=16),
        axis.title.y = element_text(size=16),
        panel.border = element_rect(color="grey", fill=NA))
```

<figure>
<img src="osfs26_files/figure-gfm/chunk8-1.png"
alt="Grössere Beschriftung und bessere Erkennbarkeit." />
<figcaption aria-hidden="true">Grössere Beschriftung und bessere
Erkennbarkeit.</figcaption>
</figure>

## URLs etc. zu Visualisierung

Das Internet ist voll von Beiträgen, z.B. [Visual
Statistics](https://visualstats.bryer.org/), die der Visualisierung
empirischer Ergebnisse dienen sollen (Download des R-Pakets
[VisualStats](https://github.com/jbryer/VisualStats) von GitHub).
Publikationen zum selben Zweck nicht zu vergessen, z.B. Stoudt and Nolan
(2025) oder Majumder et al. (2025). Zugleich ist das Bedienen an einem
Buffet oder das Orientieren an einem ‘Storyboard’ wie kaum etwas anderes
dazu geeignet, in die Unachtsamkeit abzudriften, was um jeden Preis zu
vermeiden ist ([siehe Misstrauen, Skepsis](#misstrauen-skepsis))! Ein
Beispiel für Unachtsamkeit wäre, dass man eine möglichst
‘eindrucksschindende’ Visualisierung produziert, anstatt eine Graphik,
die sowohl möglichst einfach aussieht (= nicht aufdringlich) als auch
möglichst optimal das Verständnis des empirischen Ergebnisses fördert
und/oder erleichtert.

# Vermeide Kontraproduktivität

**Heute: 2026-03-17**

Open science als relativ *neuartige* Bewegung kann durchaus als
Armutszeugnis verstanden werden, d.h. wenn Wissenschaft in der
akademischen Psychologie in Übereinstimmung mit der ursprünglichen Idee
von Wissenschaft funktioniert hätte, dann würde es diese Bewegung nicht
brauchen. Dass es sie braucht, zeigt, dass Wissenschaft alles andere als
ein Selbstläufer ist.
<!--Ich liste im Folgenden Themen auf, die ich als relevant für die akademische Psychologie einschätze, meist deshalb, weil jene Themen trotz ihrer Relevanz von der Mehrheit psychologischer Forscher/innen unberücksichtigt geblieben ist, was auch weiterhin der Fall ist. Es handelt sich eigentlich immer um methodische Details, in denen bekanntlich der (Fehler-)Teufel steckt. Warum es (vermutlich) nirgends so sehr relevant ist wie in open science, methodische Details zu kennen und sie angemessen zu berücksichtigen, braucht wohl nicht extra erklärt zu werden.-->

Erinnerung: Checklisten sind kontraproduktiv, solange man nicht genau
weiss, was man warum auf welche Weise machen will, d.h. um welches
psychologische Problem (oder Phänomen) es einem **inhaltlich** geht,
z.B. Essstörung bei Frauen in den Wechseljahren (Vincent et al. 2024).
Als kleines Selbstexperiment bietet es sich an, die Publikation
‘Improving statistical reporting in psychology’ von Schubert et al.
(2025) anzusehen, und dabei aufmerksam zu beobachten, wie stark sich das
Gefühl aufdrängt, sich dieser Checkliste willenlos zu unterwerfen, weil
man ‘ja eh keine Chance hat mitzureden’. Weiterhin kann die
Kontraproduktivität darin bestehen, dass der Aufwand so viele kognitive
Kapazitäten beansprucht, aufgrund der vielen methodischen Details, der
Durchführung (z.B. R Code) und der Ergebnisauswertung, dass der/die
Forscher/in völlig vergisst, dass es doch eigentlich um das inhaltliche
Problem (Phänomen) gehen sollte. Stattdessen kann es so kommen, dass man
am Ende den Eindruck hat, dass der Inhalt zur Neben- und die Methodik
zur Hauptsache geworden ist.

Aus diesen Aussagen ergibt sich ein Reihenfolgeproblem (wer hat
eigentlich die Führung, die Checklist oder der/die Forscher/in?), das
man ernstnehmen sollte. Da es eine Tatsache ist, dass es sehr viele
methodische Details gibt, über deren (Un-)Wichtigkeit man selbst
entweder nur eingeschränkt oder gar nicht kompetent urteilen kann,
braucht es eine gute Strategie. Sich einer Checkliste zu unterwerfen,
ist mit die schlechteste Strategie. Eine bessere Strategie ist, dass man
sich methodische Sicherheit aneignet, und zwar so, dass man sie
berechtigt empfindet. Ohne Einsicht und subjektives Verständnis ist
Kontraproduktivität praktisch unausweichlich. Ich spreche von
methodischen Grundprinzipien, die man sich aneignen kann. Es sind wenige
und sie sind nicht kompliziert. Bewerte selbst …

## Methodische Sicherheit

Ohne Statistik, Mathematik o.ä. zu studieren, lässt sich dennoch
methodische Sicherheit gewinnen. Wie das? Man muss sich bewusst machen
und darf es dann nicht mehr vergessen, dass es eine allgemein
menschliche Fähigkeit ist, Unterschiede zu erkennen und sie gewöhnlich
adäquat zu interpretieren. Diese Fähigkeit stellen alle Menschen
vielfach täglich unter Beweis. Wenn in einem Regal im Supermarkt nur
noch zwei Packungen Toastbrot liegen, statt wie üblich 20 oder mehr,
sind wir erleichtert noch eine Packung bekommen zu haben. Dieses
implizite bzw. intuitive Verständnis für Unterschiede ist in der
Publikation von Masnick and Morris (2022) geschildert. Das Endergebnis
eines beliebigen statistischen Testverfahrens zeigt an, ob ein
Unterschied festgestellt werden konnte. Statistische Testverfahren sind
also bloss Hilfsmittel, um Unterschiede festzustellen, ähnlich wie eine
Brille ein Hilfsmittel ist, um besser zu sehen. Man darf somit nicht
blind sein, sonst hilft auch keine Brille.

Was wird also von einem statistischen Testverfahren genutzt, um einen
Unterschied festzustellen? Ausser dem Unterschied selbst, z.B. zwischen
zwei oder mehr Gruppen, wird zudem berücksichtigt, wie stark die Werte
in den Gruppen variieren. Insgesamt heisst das im Fachjargon:
Unterschiede zwischen den Gruppen (between group differences) werden
relativiert an Unterschieden innerhalb der Gruppen (within group
differences). Als Grundprinzip ausgedrückt: Unterschiede (zwischen
Gruppen) werden an Variabilität (in den Gruppen) relativiert. Das
Ergebnis hiervor ist das statistische Endergebnis, z.B. ein t-Wert.
Falls man null hypothesis significance testing (NHST) betreiben sollte,
wird zuletzt noch geprüft, ob das statistische Endergebnis (der
ermittelte t-Wert) unter der Wahrscheinlichkeitsverteilung der
Nullhypothese (unter der t-Verteilung mit ? vielen Freiheitsgraden)
extremer ist als der gewählte Cutoff-Wert (alpha Signifikanzniveau).
Folgende Ergebnisse stammen von oben, [siehe Kontinuierlicher
Prädiktor](#kontinuierlicher-prädiktor).

``` r
summary(modKontin)
```

    ## 
    ## Call:
    ## lm(formula = vals ~ group, data = dfKontin)
    ## 
    ## Residuals:
    ##      Min       1Q   Median       3Q      Max 
    ## -1.58792 -0.58708 -0.08655  0.50733  2.29194 
    ## 
    ## Coefficients:
    ##             Estimate Std. Error t value Pr(>|t|)    
    ## (Intercept)   2.8651     0.4463   6.419 1.92e-07 ***
    ## group         0.3453     0.2012   1.716   0.0947 .  
    ## ---
    ## Signif. codes:  0 '***' 0.001 '**' 0.01 '*' 0.05 '.' 0.1 ' ' 1
    ## 
    ## Residual standard error: 0.9599 on 36 degrees of freedom
    ## Multiple R-squared:  0.07564,    Adjusted R-squared:  0.04996 
    ## F-statistic: 2.946 on 1 and 36 DF,  p-value: 0.0947

``` r
# t-Wert = Estimate/Std. Error = .3453/.2012
estimate <- coefficients(summary(modKontin))["group","Estimate"]
stdError <- coefficients(summary(modKontin))["group","Std. Error"]
(tVal <- estimate/stdError)
```

    ## [1] 1.71632

``` r
# Zweiseitiger empirischer p-Wert
pt(q=tVal, df=36, lower.tail = FALSE)*2
```

    ## [1] 0.09469815

Ist das eben beschriebene Grundprinzip kompliziert? Ich würde sagen,
dass es eher primitiv einfach ist. Es ist ein durch und durch
mechanisches Grundprinzip, für das eigentlich gar keine menschliche
Intelligenz nötig ist, es sei denn man möchte NHST kompetent und
verantwortungsvoll durchführen. Sofern man das will, fehlen noch sehr
wichtige Komponenten: Eine zuvor bestimmte und begründete Effektgrösse,
d.h. eine Antwort auf die Frage ‘Welcher Effekt wäre sowohl praktisch
relevant als auch theoretisch zu erwarten?’ Zudem eine Antwort auf die
Frage, wie hoch die statistische Power sein soll, mit der man den
erwarteten Effekt entdecken können möchte? Sofern das alpha
Signifikanzniveau ebenfalls kompetent und verantwortungsvoll gewählt
wurde, d.h. durch Abwägen wichtiger Aspekte aus der realen Welt, lässt
sich für das gewählte statistische Testverfahren bestimmen, wie gross
die Stichprobe sein sollte.

Es sind diese wichtigen Vorabinformationen, die furchtbar häufig in
Publikationen fehlen und von denen man als Leser/in den deutlichen
Eindruck hat, dass sie nicht einfach nur in der Publikation fehlen,
sondern dass sie bei den Publikationsverantwortlichen gar keine Rolle
spielten. Die Bayesianische Statistik ist wie jede Statistikvariante
beschränkt, aber wenigstens spielen dort diese wichtigen
Vorabinformationen eine so zentrale Rolle, dass man sie unter keinen
Umständen ‘vergessen’ könnte.

Vielleicht hilft es manchen, diese relativ wenigen statistischen
Grundprinzipien in ein anderes Bild zu setzen: Die Anwendung eines
statistischen Testverfahrens ist prinzipiell ähnlich, wie wenn man ein
Mikroskop verwendet. Man muss vorher genau wissen, was man sich
anschauen will, z.B. Mikroben. Könnte man sie mit dem blossen Auge
sehen, würde man vielleicht gar kein Mikrospkop verwenden. Man muss
weiterhin vorab festlegen, wie gross das Forschungsobjekt ist (ähnlich
zu vorab festgelegter Effektgrösse) und in welcher Vergrösserung man es
sich anschauen will (ähnlich zu vorab festgelegter Power).
Stichprobengrösse und alpha Signifikanzniveau machen in diesem Bild
leider keinen erkennbaren Sinn.

Methodische Sicherheit ist übrigens nicht nur möglich, sondern sogar
sehr wichtig. Und zwar damit man nicht auf die Idee kommt, Dinge wie das
5% alpha Signifikanzniveau (die ‘Kontrolle’ des Fehlers erster Art) mit
Sicherheit zu verwechseln. Jedes qualitative oder quantitive
wissenschaftliche Ergebnis ist und bleibt unsicher. Erst wenn man eine
zweifelsfreie kausale Ursache für ein Ergebnis bestimmen kann, hätte man
Sicherheit. Dann bräuchte man in dieser Angelegenheit nicht weiter zu
forschen. Forschung macht nur Sinn bei relativer Unsicherheit.
Methodische Sicherheit bedeutet bloss, dass man weiss, wie man ein
methodisches Hilfsmittel, z.B. ein Mikroskop oder Statistik, korrekt
verwendet. Das Forschungsobjekt, das man sich damit sichtbar(er) zu
machen versucht, bleibt (relativ) unsicher. Ist das schwer zu verstehen?

Bevor man sich also statistischer Auswertung zuwendet, sollte man sich
darüber klar sein, welche Effekte man auf welche Weise und aus welchem
Grund statistisch sichtbar zu machen versucht. Wenn man das nicht weiss
oder vergessen haben sollte, z.B. aufgrund kognitiver
Kapazitätsüberlastung, sollte man sich zuerst obige Frage erneut stellen
und beantworten. Der action bias (Jeremiah and Radics 2025), d.h. das
vorschnelle Handeln, allein des Handelns willen, ist sehr
kontraproduktiv! Man geht ja auch nicht über die Strasse und kümmert
sich erst währenddessen oder danach, ob von links oder rechts etwas
kommt oder gekommen ist. Vielleicht wäre es gut, wenn einem auch in der
Statistik der action bias lebensgefährlich werden könnte?

**Open science**, wenn ernst und gewissenhaft ausgeführt, kann also
schon deshalb sehr nützlich sein, weil es dazu veranlasst, sich sehr
früh, z.B. (lange) bevor man die Daten der Studie zu sehen bekommt, mit
relevanten methodischen Details aktiv auseinanderzusetzen.

Die beiden letztlich einzig wichtigen empirischen Fragen sind:

1.  Liegt der statistisch sichtbar gemachte Unterschied in der
    erwarteten Richtung?
2.  Ist der statistisch sichtbar gemachte Unterschied von praktischer
    Bedeutung?

Eine Zusatzfrage, die natürlich alle am liebsten beantworten können
möchten, ist: Vorausgesetzt, dass der sichtbar gemachte Unterschied echt
ist (anstatt eines statistischen Artefakts), was verursacht ihn? Diese
Frage ist in der wissenschaftlichen Psychologie, inklusive
psychologischer Laborexperimente, bisher noch nie zweifelsfrei
beantwortet worden.

Notiz: Ich habe oben überall von Unterschied gesprochen, nicht von
Zusammenhang. Grund: Ein Zusammenhang ist eine Verallgemeinerung des
Konzepts Unterschied (siehe oben [Checklisten,
Regelsammlungen](#checklisten-regelsammlungen)).

## Methodische Details

> - Sofern alles gelesen, verstanden und subjektiv eingesehen (=
>   kritisch reflektiert) wurde, was oben steht, und es nicht wieder
>   vergessen wird, können wir uns ab hier dem ein oder anderen
>   methodischen Detail widmen, das man entweder auf dem Schirm haben
>   sollte oder es zumindest von Vorteil wäre, wenn man darüber Bescheid
>   weiss.
> - Alle methodischen Details zeigen in Richtung Nüchternheit (Gegenteil
>   von ‘overconfidence’). Das ist erwähnenswert, weil akademische
>   Wissenschaft sich äusserlich gerne als nüchtern gebärdet, es jedoch
>   leicht zu erkennen ist, dass der akademische Karrieremotor verreckt,
>   sobald etwas anderes als ‘overconfidence’ im Tank ist. Wer etwas
>   mehr hierüber erfahren möchte, siehe z.B. Greenland (2017b) oder
>   Smith (2018).
> - Mindestens ebenso wichtig zu erwähnen: Ein neues Manuskript (van
>   Zwet, Gelman, and Więcek 2026) deutet darauf hin, dass das bisherige
>   wissenschaftliche Vorgehen insofern optimistisch stimmen sollte, als
>   zumindest die *Richtung* der untersuchten Effekte korrekt
>   festgestellt zu werden schien. Zudem wird im Manuskript betont, dass
>   ‘Replikation’ unter den weiterhin dominanten NHST Bedingungen ein
>   sehr impotentes Kriterium für wissenschaftlichen Erfolg ist.

### Indzidenz und Regressionsmodell

Folgendes Beispiel hat diesen Hintergrund. Eine Arbeitskollegin, die die
Ergebnisse eines Regressionsmodells auf einer Konferenz präsentieren
wollte, fragte mich (ein wenig besorgt), was sie antworten könne, falls
ein/e Zuschauer/in fragen sollte, warum das Regressionsgewicht der
Variable Sex nicht das zeigte, was alle wissen, nämlich dass
Suizidversuche (SV) bei Frauen häufiger als bei Männern beobachtet
werden.

Die Antwort war, dass es in diesem Fall ein statistisches Artefakt ist.
Wir können die Ergebnisse zudem nutzen, um daran zu erinnern, warum bei
einem (multiplen) Regressionsmodel per Default immer ein zweiseitiger
statistischer Test stattfindet (Erinnerung: Jedes Regressionsgewicht und
der Intercept werden statistisch getestet). Der Grund ist, dass man bei
Hinzunahme weiterer Prädiktoren ins Modell nie wissen kann, wie stark
sich die Regressionsgewichte der bis dahin enthaltenen Prädiktoren
ändern, was eben auch die Möglichkeit umfasst, dass sich das Vorzeichen
ändert. Genau das ist hier passiert:

``` r
# Outcome: Suizidversuch (SV)
Stichprobengrösse = 4050 (Anzahl Männer = 1841, Frauen = 2209)
# Prozentual: 1.03% der Männer mit SV, 1.31% der Frauen mit SV.   
            0         1
  0 98.967952  1.032048
  1 98.687189  1.312811
# Regressionsmodell mit: 
# Prädikor Sex
(Intercept)         Sex 
 -4.5632511   0.2434668
# Prädikoren Sex, Age
(Intercept)         Sex         Age 
-2.11576636  0.29337492 -0.04826642
# Prädikoren Sex, Age, früherer SV
(Intercept)         Sex         Age        SUA2 
-2.56253404  0.04332210 -0.04776294  2.85591644
# Prädikoren Sex, Age, früherer SV, frühere psych. Störung
(Intercept)         Sex         Age        SUA2    mentalDx 
-4.02962663 -0.06306595 -0.04230424  2.54458514  1.71131043  
```

Beim letzten Modell ist das Vorzeichen von Sex negativ, weshalb es
fälschlicherweise (= Artefakt) erscheint, als ob Männer häufiger SV
begingen als Frauen. Die insgesamt sehr geringe SV Inzidenz (48/4050 =
1.19%) und der sehr geringe Unterschied der SV Inzidenz zwischen Männern
(1.03%) und Frauen (1.31%) waren ausschlaggebend, dass sich das
Vorzeichen änderte. Die Ergebnisse des letzten Modells entstammen dieser
[Publikation](https://doi.org/10.1186/s12888-024-05647-w) (siehe dort,
Table 2, leider übersehener Druckfehler bei Lifetime mental disorder,
1.1711 ist falsch, 1.711 ist richtig).

### Überfrachtetes Regressionsmodell

Ein Regressionsmodell ist wehrlos, d.h. es kann nicht zurückmelden, dass
sich viel zu viele Prädiktoren im Modell befinden. Der/die Forscher/in
muss um dieses mögliche Problem wissen. Mehrere Analysen von
Publikationen (in Medizin und Psychologie) haben ergeben, dass dieses
Wissen mehrheitlich entweder nie vorlag oder vergessen oder aus
irgendwelchen Gründen ignoriert wurde (Babyak 2004; Freedland, Reese,
and Steinmeyer 2009; Dalicandro et al. 2021). Das Problembewusstsein
scheint auch aktuell nicht so stark ausgeprägt zu sein wie es sein
sollte, obwohl das Wort ‘Overfitting’ fast allen Forscher/innen sehr gut
bekannt ist. Sie wissen meist was damit gemeint ist, nämlich dass ein
Regressionsmodell dank zu vieler Prädiktoren zu stark den Besonderheiten
der vorliegenden Stichprobe angepasst wird (was die Daten betrifft),
wodurch teilweise das verloren geht, wofür die Regressionsanalyse
‘eigentlich’ durchgeführt wurde, nämlich um die Ergebnisse
inferenzstatistisch generalisieren zu können. Man kann Overfitting zudem
auch so verstehen, dass zu viele Prädiktoren im Modell die Stabilität
der Effektschätzungen (= der Regressionsgewichte) schwächen, was von
Greenland (2021) beschrieben wird als ‘too many covariates chasing too
few data points’. Mit covariates sind die Prädiktoren im Modell gemeint.

Trotzdem es keine harten Grenzen sondern eher empirische Daumenregeln
sind, es gibt sie (Babyak 2004) und man kann sie sich leicht merken:

- Sollte der Outcome auf einer kontinuierlichen Skala liegen, dann bitte
  mindestens 10 Studienteilnehmer/innen je Prädiktor im Modell.

- Sollte der Outcome dichtom (= binär) sein, dann bitte mindestens 10
  Studienteilnehmer/innen, die den Outcome aufweisen, je Prädiktor im
  Modell.

Ob diese Daumenregel eingehalten wurde, lässt sich in allen
Publikationen prüfen, worin Ergebnisse eines Regressionsmodells
berichtet werden und sofern die beiden nötigen Informationen (Outcome
kontinuierlich oder dichotom? Anzahl Prädiktoren im Modell?) vorliegen.
Sie liegen im Normalfall immer vor.

Beispiel: In Tabelle 3 in Marić et al. (2022) sind sechs
Regressionsmodelle aufgeführt. Die Zeilen der Tabelle stellen die Anzahl
der Prädiktoren dar, genauer genommen, die Anzahl durchgeführter
statistischer Tests, in diesem Fall 20. Manche Prädiktoren, z.B.
Altersgruppe, sind faktisch mehr als ein Prädiktor, in diesem Fall drei,
denn es wurden drei statistische Tests durchgeführt für die Altersgruppe
18-29 Jahre, 30-39 und 40-49, zur Referenzgruppe 50-65 Jahre. Die ersten
vier der sechs Regressionsmodelle hatten einen dichotomen Outcome, d.h.
für sie gilt die zweite der beiden Daumenregeln. Die Häufigkeit des
Outcome in den vier Modellen war 183, 55, 52 und 96. Die zweite
Daumenregel erfordert 200 Outcomefälle (20 Prädiktoren \* 10). Nur das
erste Modell hält sich sehr grob in dieser Nähe auf. Die letzten beiden
Regressionsmodelle hatten einen kontinuierlichen Outcome. Da die
Stichprobe 1203 Personen umfasste, war bei ihnen die erste Daumenregel
erfüllt.

Tabelle 3 in Marić et al. (2022) zeigt weitere Mängel, von denen eine
von Greenland (2017c) als Dichotomanie bezeichnet wurde, d.h. die
unwissenschaftliche und dennoch in vielen ‘wissenschaftlichen’ Bereichen
allgemein praktizierte (und somit akzeptierte) Nutzung des 5% alpha
Signifikanzniveaus als harte Grenze, um damit Ergebnisse in
‘signifikant’ (in Tabelle 3 fett hervorgehobene p-Werte) und ‘nicht
signifikant’ zu unterteilen, und diese Unterteilung als finalen Schritt
der Datenanalyse zu behandeln (NHST at its best; das ist sarkastisch
gemeint!!).

Laut Kraemer (2015) ist das Überfrachten von Regressionsmodellen eine
wahrscheinliche und plausible Quelle, die zur Replikationskrise
beigetragen haben dürfte. Diesen möglichen Beitrag wollte ich einmal an
den sechs Regressionsmodellen aus Tabelle 3 in Marić et al. (2022)
prüfen. Hierfür musste ich mir erst einmal ausdenken, wie man so etwas
‘prüfen’ könnte. Ob meine Idee hierfür gut genug ist, dürft ihr und
andere bewerten. So bin ich vorgegangen: Die 20 oben genannten
‘Prädiktoren’ reduzieren sich zu 15 Prädiktoren, aus demselben Grund wie
im simulierten Beispiel (oben) in diesem Dokument:

``` r
# Der kategoriale Prädiktor 'group' (3 Kategorien) wird im Regressionsmodell
# automatisch zu 2 Prädiktoren (group2, group3) umfunktioniert.
coefficients(summary(mod))
```

    ##              Estimate Std. Error   t value     Pr(>|t|)
    ## (Intercept) 2.9211485  0.2901259 10.068556 7.088035e-12
    ## group2      1.0201775  0.3745509  2.723735 1.000175e-02
    ## group3      0.7573696  0.3859035  1.962588 5.768205e-02

Meine Idee war es, alle möglichen Regressionsmodelle für jeden der sechs
Outcomes zu prüfen. Bei 15 Prädiktoren macht das 32’767 Modelle, z.B.
Modell mit allen 15 Prädiktoren, Modell mit Prädiktoren 1-14, usw. Dann
wollte ich sehen, in wie viel Prozent aller Modelle, in denen Prädiktor
x enthalten war, sein p-Wert kleiner oder gleich 5% war. Stabilität des
Regressionsgewichts hatte ich in diesem Fall festgelegt als ‘konsistent
über alle Modelle hinweg’, d.h. wenn er im gesamten Modell (nicht) stat.
sign. war, dann sollte er über fast alle Modelle hinweg ebenfalls
(nicht) stat. sign. sein. ‘Fast alle’ hatte ich übersetzt als ‘in mind.
90% aller Modelle’. Ergebnisse:

**Modell 1** (183 Fälle mit Outcome). Stat. sign.: 1 von 8 instabil, er
war in 64% aller Fälle nicht signifikant. Stat. nicht sign.: 3 von 12
instabil, sie waren stat. sign. in 32%, 50% und in 95% aller Fälle.

**Modell 2** (55 Fälle mit Outcome). Stat. sign.: 0 von 2 instabil.
Stat. nicht sign.: 6 von 18 instabil, sie waren stat. sign. in 15%, 22%,
zweimal 31%, 39% und in 81% aller Fälle.

**Modell 3** (52 Fälle mit Outcome). Stat. sign.: 1 von 7 instabil, er
war in 30% aller Fälle nicht signifikant. Stat. nicht sign.: 4 von 13
instabil, sie waren stat. sign. in 15%, 33% und zweimal in 70% aller
Fälle.

**Modell 4** (96 Fälle mit Outcome). Stat. sign.: 0 von 3 instabil.
Stat. nicht sign.: 6 von 17 instabil, sie waren stat. sign. in 15%, 18%,
20%, 50%, 67% und in 92% aller Fälle.

**Modell 5** (kontin. Outcome Depression). Stat. sign.: 0 von 6
instabil. Stat. nicht sign.: 4 von 14 instabil, sie waren stat. sign. in
12%, 72%, 76% und in 90% aller Fälle.

**Modell 6** (kontin. Outcome Angst). Stat. sign.: 1 von 7 instabil, er
war in 73% aller Fälle nicht signifikant. Stat. nicht sign.: 4 von 13
instabil, sie waren stat. sign. in 12%, 17%, 44%, 61%, 83% und in 89%
aller Fälle.

**Gesamtergebnis**: Kein klares Gesamtbild. In Einzelfällen zeigt sich,
dass je nach Anzahl der Prädiktoren im Modell, manche
Regressionsgewichte einen völlig anderen Eindruck machen, im Vergleich
zum Modell mit allen Prädiktoren. Heisst: In jedem der 6 Modelle kam
mind. ein Prädiktor vor, der in mind. 70% der Fälle instabil war; in
Modell 2 und 6 war dies bei zwei, in Modell 5 sogar bei 3 Prädiktoren
der Fall; immer war es so, dass diese Prädiktoren im Gesamtmodell nicht
stat. sign. waren, es aber in mind. 70% aller Modelle gewesen wären, in
denen diese Prädiktoren enthalten waren.

### Dichotomanie

Bei Einzelstudien ist es bereits höchst fragwürdig, ob das 5%
Signifikanzniveau zur Unterteilung in ‘signifikant’ und ‘nicht
signifikant’ sinnvoll ist. Eine bessere Alternative wäre die
beschreibende Herangehensweise an statistische Ergebnisse, siehe hierzu
pValueIssue2.html und compatibilitySurprisal.html.

Ausser bei Einzelstudien zeigt sich das Problem der Dichotomanie
(Greenland 2017c) (= Signifikanzwahn) besonders bei
[Meta-Analysen](https://doing-meta.guide/) oder auch beim narrativen
Abgleich einer Studie mit anderen Einzelstudien, wie es im
Diskussionsteil jeder Einzelstudie üblich ist.
<!--Autor/innen von Meta-Analysen (in Medizin und Psychologie) wollen bzw. müssen ebenfalls viel und in prestigeträchtigen Fachjournalen publizieren, wenn sie ihre Forschungskarriere aufrechterhalten oder sogar vorantreiben wollen. Vielleicht 'vergessen' sie unter anderem deshalb ihr Versprechen so regelmässig, das sie mind. einmal gemacht haben, z.B. am Ende ihrer PhD-Disputation. Das Versprechen lautet, dass man alle Fähig- und Fertigkeiten dafür einsetzen werde, mit wissenschaftlichen Mitteln zur Wahrheit beizutragen. Dichotomanie und dieses Versprechen können nicht koexistieren.-->
Eines von (sehr) vielen traurigen Beispielen ist von Greenland (2017a)
kritisiert worden. Thema: Einnahme eines Medikaments (bzw. eine
bestimmte Dosis) zur Verringerung des Risikos eines bösartigen
Krebstumors im Gehirn oder Rückenmark (Gliom). Autoren einer
Einzelstudie hatten in ihrem Diskussionsteil zwei weitere Studien mit
ihrer eigenen Studie verglichen. Dieser Vergleich verleitete sie zur
Schlussfolgerung, dass jenes Medikament das Gliom-Risiko nicht
verringern könne, was in diesem Fall sehr nach Dichotomanie aussieht:

``` r
library(meta)
# Drei Fall-Kontroll Einzelstudien:
# https://doi.org/10.1007/s10654-016-0145-7, page 950
# https://doi.org/10.1002/ijc.27536, pages E1032 and E1034
# https://doi.org/10.1038/bjc.2012.536, page 717
# Beachte: Diese Tabelle enthält adjustierte OR Ergebnisse.
#                Author   OR 95lo 95up
# Seliger et al. (2016) 0.75 0.48 1.17
#  Ferris et al. (2012) 0.72 0.52 1.00
#   Gaist et al. (2013) 0.76 0.59 0.98
# Aus diesen Einzelstudien stammende Anzahl an Beobachtungen.
dfMeta <- data.frame(Author=c("Seliger et al. 2016",
                              "Ferris et al. 2012",
                              "Gaist et al. 2013"),
                 Ee=c(24, 122, 96), Ne=c(2469, 517, 2656),
                 Ec=c(332, 126, 831), Nc=c(24690, 400, 18480))
# Die metabin Funktion berechnet nicht-adjustierte OR.
(m.bin <- metabin(Ee, Ne, Ec, Nc,
                 data = dfMeta,
                 studlab = paste(Author),
                 common = FALSE,
                 random = TRUE,
                 overall.hetstat = FALSE,
                 method = "Inverse",
                 sm = "OR"))
```

    ## Number of studies: k = 3
    ## Number of observations: o = 49212 (o.e = 5642, o.c = 43570)
    ## Number of events: e = 1531
    ## 
    ##                          OR           95%-CI     z p-value
    ## Random effects model 0.7457 [0.6354; 0.8752] -3.59  0.0003
    ## 
    ## Details of meta-analysis methods:
    ## - Inverse variance method

Bereits ohne das metaanalytische Ergebnis lässt sich an den 95%
Konfidenzintervallen (95% KI) erkennen, dass der Grossteil der
Effektschätzungen in Richtung Chancenverringerung geht, z.B. Odds Ratio
von .48 bedeutet 52% Verringerung, .52 bedeutet 48% Verringerung und .59
bedeutet 41% Verringerung, wohingegen 1.17 eine Gliom-Chancenerhöhung
von 17% bedeutet. Was bedeutet in diesem Fall Dichotomanie? Laut 5%
Signifikanzniveau sind 2 der 3 Studien stat. nicht signifikant, weil der
Wert 1 entweder im 95% KI liegt oder dessen Grenze darstellt (die Grenze
gehört zum Intervall dazu). Eine Studie ist stat. signifikant. Somit
lautete das Gesamturteil 2:1 für ‘stat. nicht signifikant’. Was die
Autoren ausser Acht gelassen hatten, war, dass ihre eigene Studie die
geringste Präzision aufwies (= das breiteste 95% KI zeigte).

Zwei weitere wichtige, methodische Details, die hierhin gehören:

1.  Warum sprechen die Autoren der Studien von Risikoverringerung, ich
    aber von Chancenverringerung? Das Odds Ratio bezieht sich rein
    methodisch auf ein Chancenverhältnis (Odds = Chance, Ratio =
    Verhältnis). Es gibt ein anderes Mass in der Epidemiologie, dass
    zwei Risiken ins Verhältnis setzt, das relative Risiko (Risk Ratio).
    Konzeptuell gibt es keine Berechtigung Chance und Risiko synonym zu
    setzen. Was die numerischen Ergebnisse betrifft, kann es jedoch so
    sein, dass diese sich so gut wie nicht voneinander unterscheiden,
    und zwar je geringer die Outcomehäufigkeit ist (siehe Table 2 in
    Schmidt and Kohlmann (2008), point estimate bei Inzidenz von 4%
    wesentlich ähnlicher als bei Inzidenz 62%). Die Bedeutung des Wortes
    muss man zudem beachten: Ein Faktor kann nur dann inhaltlich als
    ‘Risikofaktor’ gelten, wenn garantiert ist, dass er zeitlich vor der
    Erstmanifestation des Outcome vorgelegen hat. Dasselbe gilt auch für
    ‘Protektivfaktor’. Während ein Risikofaktor das Risiko für den
    Outcome erhöht, verringert ein Protektivfaktor das Risiko, den
    Outcome zu entwickeln.
2.  Bei Meta-Analysen wird empfohlen, dass man das ‘prediction interval’
    berechnet, um die Heterogenität der Effektgrössen der Einzelstudien
    empirisch adäquat zu berücksichtigen (Higgins 2008), jedoch sollten
    hierfür mindestens 5 Einzelstudien vorliegen. Im Beispiel oben sind
    es nur 3 Studien.

### Präzision

Präzision wird empirisch als Breite des Konfidenzintervalls verstanden.
Bei steigender Stichprobengrösse wird es enger (weil dadurch die
Standardabweichung (standard deviation; SD) verringert wird), d.h. die
Präzision der Effektschätzung wird besser (Sedgwick 2014; Button et al.
2013). Leider ist es in den sog. weichen Wissenschaften wie Psychologie,
Soziologie usw. weitaus schwerer Effekte präzise zu schätzen als z.B. in
der Physik. Beziehungsweise wären Stichprobengrössen nötig, die jeden
finanziellen Rahmen sprengen würden. Meta-Analysen werden u.a. auch
gerade deshalb durchgeführt, um die Stichproben der Einzelstudien zu
einer wesentlich grösseren ‘Meta’-Stichprobe zusammenzuführen (Liu
2015).

Hierzu habe ich ein Beispiel. Siehe Luo et al. (2020), Figure 3 im
Corrigendum! Änderungen der Zahlen betreffen zwei der 14 Studien (Choi
2014 und Wright 2005). Zudem habe sie bei Mohr 2012 den Mittelwert der
Kontrollgruppe zu 10.32 korrigiert, ohne es explizit zu erwähnen.

Warum führe ich dieses Beispiel hier beim Thema Präzision auf? Es war
(wem auch immer) erst nach der Publikation aufgefallen, dass die zweite
der 14 Studien durch extrem kleine SD auffiel, zudem identisch in beiden
Gruppen (nämlich .2). Nach der Korrektur konnte ich ihr Ergebnis leider
trotzdem nicht exakt reproduzieren. Zwei mögliche Erklärungen sind, dass
mind. eine Einstellung bei der Berechnung des random 95% CI abweicht,
und/oder das deren verwendete Software (RevMan) leicht andere
Einstellungen nutzt als das meta Paket in R.

Besonders erwähnenswert ist dieses Beispiel jedoch aus zwei Gründen:

1.  Die Autor/innen der Studie haben sich auf die Dichotomanie
    verlassen, weil ihr korrigiertes Ergebnis noch immer die 0 nicht im
    95% KI enthalten hatte: -1.76 bis -.09. Sie schrieben deshalb: ‘This
    error did not change the results, direction, or the conclusions.’
    Laut meinem 95% KI hat sich etwas geändert: -2.35 bis .44.
2.  Die Autor/innen der Studie haben das ‘prediction interval’ nicht
    berichtet. Das prediction interval zeigt den Bereich an, in dem man
    das Ergebnis einer neuen Studie erwarten würde, basierend auf den
    bisherigen Ergebnissen und deren Heterogenität. Das Ergebnis (-6.2
    bis 4.3) legt eine noch grössere Ernüchterung nahe als das 95% KI,
    ob man einen ‘Unterschied’ zwischen der Experimental- und der
    Kontrollgruppe annehmen möchte.

<!-- -->

    ##    author n.e mean.e sd.e n.c mean.c sd.c
    ## 1   A2013  33  10.00  1.9  36   7.00 1.60
    ## 2   C2014  56   9.86  1.3  63  13.67 1.25
    ## 3   G2012   7   9.40  3.5   7   2.80 3.50
    ## 4   H2013  16   6.30  2.5  18   8.70 2.10
    ## 5   K2014  50   9.40  1.5  53  10.00 1.10
    ## 6  KL2009  32  11.50  2.8  35  18.30 2.40
    ## 7   L2016  62  13.00  2.2  59  18.00 2.20
    ## 8   M2012 163   9.25  0.7 162  10.35 0.80
    ## 9   N2003  14   7.70  2.9  14   1.90 3.90
    ## 10  P2016  51   4.70  2.4  50   4.00 2.40
    ## 11  S2010   9   0.70  3.4  10  11.80 1.90
    ## 12  S2013  23   5.50  1.2  21  13.60 1.30
    ## 13  W2014  32  10.60  2.1  30  11.10 2.10
    ## 14  W2005  15  20.40  2.9  15  14.70 2.80

    ## Review:     eCBT vs. Face to Face
    ## 
    ##            SMD             95%-CI %W(random)
    ## A2013   1.6953 [ 1.1406;  2.2500]        7.3
    ## C2014  -2.9719 [-3.4980; -2.4459]        7.3
    ## G2012   1.7649 [ 0.4687;  3.0611]        6.8
    ## H2013  -1.0205 [-1.7413; -0.2996]        7.2
    ## K2014  -0.4548 [-0.8464; -0.0633]        7.3
    ## KL2009 -2.5866 [-3.2446; -1.9286]        7.2
    ## L2016  -2.2584 [-2.7173; -1.7994]        7.3
    ## M2012  -1.4603 [-1.7053; -1.2153]        7.4
    ## N2003   1.6385 [ 0.7659;  2.5110]        7.1
    ## P2016   0.2895 [-0.1027;  0.6816]        7.3
    ## S2010  -3.9102 [-5.5640; -2.2564]        6.5
    ## S2013  -6.3705 [-7.8826; -4.8584]        6.7
    ## W2014  -0.2351 [-0.7350;  0.2648]        7.3
    ## W2005   1.9456 [ 1.0573;  2.8339]        7.1
    ## 
    ## Number of studies: k = 14
    ## Number of observations: o = 1136 (o.e = 563, o.c = 573)
    ## 
    ##                          SMD            95%-CI     t p-value
    ## Random effects model -0.9605 [-2.3561; 0.4352] -1.49  0.1609
    ## Prediction interval          [-6.1941; 4.2732]              
    ## 
    ## Quantifying heterogeneity (with 95%-CIs):
    ##  tau^2 = 5.4649 [2.7982; 15.3013]; tau = 2.3377 [1.6728; 3.9117]
    ##  I^2 = 96.9% [95.9%; 97.7%]; H = 5.69 [4.94; 6.56]
    ## 
    ## Test of heterogeneity:
    ##       Q d.f.  p-value
    ##  421.01   13 < 0.0001
    ## 
    ## Details of meta-analysis methods:
    ## - Inverse variance method
    ## - Restricted maximum-likelihood estimator for tau^2
    ## - Q-Profile method for confidence interval of tau^2 and tau
    ## - Calculation of I^2 based on Q
    ## - Hartung-Knapp adjustment for random effects model (df = 13)
    ## - Prediction interval based on t-distribution (df = 13)
    ## - Hedges' g (bias corrected standardised mean difference; using exact formulae)

### Konfidenzintervall

Das Konfidenzintervall (KI) und der p-Wert der frequentistischen
Inferenzstatistik (fIs) sind beide komplizierter als man glaubt! Leider
scheint der Glaube, KI und p-Wert seien ganz einfach, bei sehr vielen
Wissenschaftler/innen stärker zu sein als die Fakten. Folgendes ist
sowohl wahr als auch den meisten Psycholog/innen entweder entfallen oder
nie wirklich klar geworden. Es gibt eine extrem wichtige Unterscheidung
zwischen **vorher** und **nachher**. Die Hauptbedeutung des KI bzw. des
p-Werts in der fIs bezieht sich auf das **Vorher**. Dann nämlich sollten
alle Abwägungen gemacht werden (Lakens et al. 2018), auf Basis der
Expertise des/der Forscher/in und der Bedeutung der noch zu ermittelnden
Analyseergebnisse. Das Fazit bestünde in der Wahl eines adäquaten alpha
Signifikanzniveaus, z.B. alpha = .003, wodurch automatisch auch das KI
festgelegt wäre, nämlich 99.7%. Kommt man jedoch beim **Nachher** an,
wenn also die Ergebnisse vorliegen, dann **muss** man aufpassen, nicht
unbemerkt zum/zur Bayesianer/in zu werden. **Nachher**, d.h. wenn die
Ergebnisse vorliegen, haben die (in unserem Beispiel) 99.7% keine
spezielle Bedeutung mehr, denn egal welches KI gewählt wurde, es ist
**IMMER** so, dass die Wahrscheinlichkeit 50% ist, dass der wahre Wert
im Intervall oder ausserhalb des Intervalls liegt (man weiss es eben
nie). Warum? Weil es EIN EINZIGES Ergebnis ist. Der Frequentismus heisst
so, weil er sich auf theoretisch unendlich viele Ergebnisse bezieht.
Unter sehr eng gefassten und sehr gut kontrollierbaren Umständen
funktioniert die fIs tadellos, z.B. bei Würfelexperimenten (viele Male
einen Würfel werfen und jedes Mal das Ergebnis festhalten). Die
Geschichte der fIs etwas zu kennen (Zyphur and Pierides 2020) kann sehr
wichtige Fragen provozieren, z.B. ob und wie gut man es auch bei
psychologischen Experimenten oder Beobachtungsstudien anwenden kann. Ich
erinnere daran: Beim Versuch solche Fragen zu beantworten, drängt sich
unmittelbar Ernüchterung auf, was der akademischen Karriere durchaus
gefährlich werden kann.

### Alpha Signifikanzniveau

Es ist extrem wichtig zu betonen, dass eine subjektiv abwägende Art das
alpha Signifikanzniveau zu bestimmen, ohne Ausnahme **vorher** (bevor
man von den Daten Wind bekommt) stattfinden müsste. Es danach, also post
hoc, zu wählen, wäre kontraproduktiv (Hemerik and Koning 2026). Bei all
den alpha Problemen, scheint es durchaus plausibel, dass manche
Methodolog/innen gefordert haben, das alpha Signifikanzniveau komplett
aus dem Programm zu nehmen (McShane et al. 2019; Amrhein, Greenland, and
McShane 2019; Ciapponi et al. 2021), wennschon nicht ohne Protest
(Ioannidis 2019).

Das Problem dabei ist immer dasselbe, und zwar: Was soll anstelle von
alpha treten, welche Alternative(n) gibt es? Ich erinnere hier an
compatibility intervals und surprisals, die beide auf der
Informationstheorie von Claude Shannon basieren, das Unsicherheit als
zentrales Konzept nutzt (Cole 1993). Bisher hat es jedoch kaum jemand
geschafft, es (klinischen) Psycholog/innen schmackhaft zu machen
(Rohlfsen, Shannon, and Parsons 2025).

### Nullismus

Nullismus (Greenland 2017c) ist die Gewohnheit, die
Default-Nullhypothese von exakt Null Effekt zu verwenden, ohne jemals
darüber konsequent zu reflektieren, ob und warum dies gerechtfertigt
sein soll. Damit wird die Passivität wissenschaftlichen Arbeits
gefördert, was eigentlich ein Widerspruch in sich ist. Aber im Rahmen
des (Post-)Positivismus erscheint es als eine wissenschaftliche Tugend,
anstatt als kognitives Defizit.

Der Nullismus und die Dichotomanie sind eng verwandt. Warum? Wenn man
wissenschaftliche Ergebnisse hauptsächlich oder sogar ausschliesslich
dichotom versteht (Erfolg = stat. sign. auf dem 5% Niveau; Misserfolg,
wenn empirischer p-Wert \> 5%) und zudem niemals konsequent hinterfragt
hat, warum eigentlich der Effekt von exakt Null immer die Nullhypothese
darstellen soll, der/die wird meist die Gewohnheit entwickeln, sich
mental daran zu orientieren, ob das 95% KI den Wert 0 enthält (=
Misserfolg) oder nicht enthält (= Erfolg). Auf dieses Defizit verweisen
die letzten zwei Sätze in Ramos (2025): ‘You can always test for an
effect that you deem practically significant if you want to,
acknowledging that doing so does remove your chances of discovering
smaller statistically significant effects. After all, you were not
interested in them anyway, right?’

### Zwischenfazit

Alle Themen bisher kreisen, wie oben angekündigt, einerseits um den
Versuch einen Unterschied mithilfe statistischer Hilfsmittel
sichtbar(er) zu machen (Unterschied zwischen Gruppen relativiert an
Variabilität der Daten in den Gruppen), und andererseits um die
Nüchternheit, mit der die sichtbar gemachten Unterschiede
(miss-)verstanden, und dementsprechend publiziert werden.

### Likelihood Ratio (LR)

Auf die allgemeine Idee, die hinter LR steht, spricht Nuzzo (2014)
(siehe Überschrift ‘What does it all mean’) mit dieser Beschreibung an:

> ‘That requires another piece of information: the odds that a real
> effect was there in the first place. To ignore this would be like
> waking up with a headache and concluding that you have a rare brain
> tumour — possible, but so unlikely that it requires a lot more
> evidence to supersede an everyday explanation such as an allergic
> reaction. The more implausible the hypothesis — telepathy, aliens,
> homeopathy — the greater the chance that an exciting finding is a
> false alarm, no matter what the P value is.’

Die LR ist also ein Veränderungsfaktor, der die *a priori* in die *a
posteriori* Wahrscheinlichkeit einer Hypothese übersetzt. Da in diesem
Fall Hypothesen mit Auftretenswahrscheinlichkeiten versehen sind,
befinden wir uns automatisch in der Bayesianischen Statistik. Jedoch
spielt das Konzept ‘Likelihood’ (Etz 2018) auch in der frequentistischen
Statistik eine zentrale Rolle. So nutzen z.B. generalisierte lineare
Modelle wie die logistische Regression die ‘maximum likelihood’ Methode
(Pedersen 2025), um die Regressionsgewichte zu ermitteln. Wie
Bayesianische und frequentistische Statistik verbunden sind, versucht
u.a. Sidebotham et al. (2023) zu erklären.

Der LR Veränderungsfaktor bezeichnet die Stärke der empirischen Evidenz,
also genau das, worum es in der Wissenschaft andauernd und in zentaler
Weise geht: Die Suche nach **starker** empirischer Evidenz, die erklärt,
warum ein bestimmtes Phänomen auftritt (positive LR bzw. LR+). Umgekehrt
wäre es ebenso wichtig, starke Evidenz zu haben, die erklärt, warum ein
bestimmtes Phänomen nicht auftritt (negative LR bzw. LR-). **Die
allgemeine Idee hinter LR ist also DIE Idee, die Wissenschaft zu
Wissenschaft macht!** (Starke Belege, die in wiederholt gleichbleibend
starker Weise emirisch demonstrieren, warum das Phänomen (nicht)
auftritt (= Faktische Replizierbarkeit).)

<!--Der LR Veränderungsfaktor ist im Rahmen eines Bewerbungsverfahrens vielleicht am einfachsten zu verstehen. Je mehr die Kriterien für potenzielle Bewerber/innen auf die Spitze getrieben werden, desto weniger Personen kann es (weltweit) überhaupt geben, die (annähernd) für die ausgeschriebene Stelle infrage kämen. Es wird damit zunehmend unwahrscheinlich, dass sich solch ein seltenes Exemplar tatsächlich unter den Bewerber/innen auf die ausgeschriebene Stelle befinden, d.h. die *a priori* Wahrscheinlichkeit war extrem gering (solch eine/n Bewerber/in zu erreichen), weshalb auch die *a posteriori* Wahrscheinlichkeit nur minimal grösser sein dürfte. Wie gross sie tatsächlich ist, wird von der LR beschrieben, d.h. wenn die Stellenausschreibung wie durch ein Wunder mehr als ein solch seltenes Exemplar dazu bewogen haben sollte, sich zu bewerben, dann wäre die LR ziemlich gross.-->

In der (klinischen) Diagnostik (Deeks and Altman 2004) sowie in der
(klinischen) Forschung (randomized trials) spielt LR eine sehr wichtige,
weil praktische, Rolle (Perneger 2021). In folgendem Beispiel geht es um
die Frage, wie wahrscheinlich es ist, dass eine Person, die ein
**positives** diagnostisches Ergebnis erhalten hat, die diagnostizierte
Krankheit tatsächlich habe (Einschlussdiagnostik), und zwar bei diesen
Voraussetzungen:

- Prävalenz der Krankheit in der Bevölkerung sei 5%.
- Sensitivität des diagnostischen Tests sei 99%.
- Spezifität des diagnostischen Tests sei 90%.

Es gibt zudem Ausschlussdiagnostik. Dort geht es um die Frage, wie
wahrscheinlich es ist, dass eine Person, die ein **negatives**
diagnostisches Ergebnis erhalten hat, die Krankheit habe.

In diesem Zahlenbeispiel würde jemand, der keinerlei Test durchführt,
für eine beliebige Person x annehmen, dass es 5% wahrscheinlich ist,
dass diese Person die fragliche Krankheit habe, und zwar weil dies die
Prävalenz der Krankheit ist. Ein diagnostischer Test ist umso besser, je
stärker er diese Ratewahrscheinlichkeit erhöht (was von der LR+
angezeigt wird) bzw. verringert (was von der LR- angezeigt wird).

Die Formel für LR+ lautet Sensitivität/(1-Spezifität). Das heisst, dass
die Wahrscheinlichkeit einer erkrankten Person unter denen mit positivem
Testergebnis (Sensitivität) zur Wahrscheinlichkeit einer erkrankten
Person unter denen mit negativem Testergebnis (1-Spezifität) ins
Verhältnis gesetzt wird.

``` r
# lrp: likelihood ratio positive
(lrp <- .99/(1-.9)) # LR+
```

    ## [1] 9.9

Die Formel für LR- lautet (1-Sensitivität)/Spezifität. Das heisst, dass
die Wahrscheinlichkeit einer gesunden Person unter denen mit positivem
Testergebnis (1-Sensitivität) zur Wahrscheinlichkeit einer gesunden
Person unter denen mit negativem Testergebnis (Spezifität) ins
Verhältnis gesetzt wird.

``` r
# lrn: likelihood ratio negative
(lrn <- (1-.99)/.9) # LR-
```

    ## [1] 0.01111111

Bevor es mit dem Rechnen weitergeht, will ich die Ergebnisse
vorwegschicken und sagen, dass per Daumenregel ein LR+ von 10 (oder
mehr) und ein LR- von .1 (oder weniger) als sehr guter diagnostischer
Test gilt. In der Einschlussdiagnostik würde obiger Test die
Wahrscheinlichkeit von 5% zu 34% erhöhen, dass Person x bei positivem
Ergebnis die Krankheit habe. In der Ausschlussdiagnostik würde obiger
Test die Wahrscheinlichkeit von 5% zu .05% verringern, dass Person x bei
negativem Ergebnis die Krankheit habe.

Nachdem die Ergebnisse feststehen, wie kommen sie zustande? Hierzu
braucht es die Formeln in der blauen Textbox auf S.168 in Deeks and
Altman (2004). Darin spielt das statistische Konzepts ‘Chance’ bzw.
‘Odds’ eine Rolle, welches definiert ist als Wahrscheinlichkeit (p) im
Verhältnis zur Gegenwahrscheinlichkeit (1-p). LR ist der
Veränderungsfaktor (siehe oben: LR+ = 9.9 und LR- = .0111), der die *a
priori* bzw. *pretest* Wahrscheinlichkeit in die *a posteriori* bzw.
*post-test* Wahrscheinlichkeit übersetzt. Wir brauchen also noch die *a
priori* Odds, multiplizieren das mit dem LR und müssen zuletzt das
Ergebnis (das *a posteriori* Odds) in die *a posteriori*
Wahrscheinlichkeit übersetzen (hierzu die Formel: Odds/(1 + Odds)).

``` r
# Prävalenz der Krankheit in der Bevölkerung
probability <- .05
pretestOdds <- probability/(1-probability)
# Veränderungsfaktor bei seiner 'Arbeit'
positivePostTestOdds <- pretestOdds*lrp
negativePostTestOdds <- pretestOdds*lrn
# A posteriori probability due to LR+ = 34%
positivePostTestOdds/(1+positivePostTestOdds)
```

    ## [1] 0.3425606

``` r
# A posteriori probability due to LR- = 0.5%
negativePostTestOdds/(1+negativePostTestOdds)
```

    ## [1] 0.0005844535

<!--Es gibt eine positive und eine negative LR, je nachdem worauf der Fokus liegt. Wird ein Test durchgeführt, um einen Zustand zu diagnostizieren oder um ihn auszuschliessen? Im Zahlenbeispiel von eben würde jemand, der keinen Test nutzt nur auf Basis der Prävalenz raten, d.h. man würde die Wahrscheinlichkeit von 5% annehmen, dass Person x jene Krankheit habe. Führt der diagnostische Test dazu, dass diese Wahrscheinlichkeit erhöht werden kann, dann sollte man ihn wohl durchführen. In diesem Zahlenbeispiel steigt die Wahrscheinlichkeit von 5% auf 34% (also um 29 Prozentpunkte gestiegen). Die positive LR (LR+) zeigt, wie viel wahrscheinlicher ein positives Testergebnis für eine Person ist, die die Krankheit hat, verglichen mit einem positiven Testergebnis für eine Person, die die Krankheit nicht hat. Eine LR+ von 10 (oder mehr) zeigt gewöhnlich einen starken diagnostischen Test an. Berechnung: LR+ = Sensitivität/(1-Spezifität)-->

**Fazit**: Um Dinge wie LR zu wissen, z.B. im Bereich klinischer
Diagnosen in der realen Welt, kann unter Umständen traumatische
Ereignisse oder sogar Suizide verhindern helfen! Warum? Viele Menschen
erleben eine Diagnose als etwas Feststehendes, nicht als etwas
Wahrscheinliches, und schon gar nicht als etwas gering Wahrscheinliches.
Man stelle sich vor, die Krankheitsprävalenz einer entsetzlichen
Krankheit sei nicht 5% sondern nur .4%, während die Sensitivität .99 und
Spezifität .98 sei. Wie hoch wäre dann die positive und die negative
post-test Wahrscheinlichkeit?

``` r
# lrp: likelihood ratio positive
(lrp <- .99/(1-.98)) # LR+
```

    ## [1] 49.5

``` r
# lrn: likelihood ratio negative
(lrn <- (1-.99)/.98) # LR-
```

    ## [1] 0.01020408

``` r
# Prävalenz der Krankheit in der Bevölkerung
probability <- .004
pretestOdds <- probability/(1-probability)
# Veränderungsfaktor bei seiner 'Arbeit'
positivePostTestOdds <- pretestOdds*lrp
negativePostTestOdds <- pretestOdds*lrn
# A posteriori probability due to LR+ = 16.6%
positivePostTestOdds/(1+positivePostTestOdds)
```

    ## [1] 0.1658291

``` r
# A posteriori probability due to LR- = 0.004%
negativePostTestOdds/(1+negativePostTestOdds)
```

    ## [1] 4.097857e-05

Die Wahrscheinlichkeit, dass eine Person mit positivem diagnostischen
Testergebnis die Krankheit tatsächlich habe, wäre ca. 17%. Wenn diese
Zahl der Person nicht deutlich gesagt werden würde, sondern lediglich,
dass die Testsensitivität und -spezifität bei nahezu 100% liegen, würde
diese Person auch die Diagnose als nahezu 100% sicher einordnen, obwohl
17% weit von 100% entfernt liegt.

<!--
- Thematisieren und empirisches, korrektes(!) Prüfen der Testannahmen, und es publizieren.
- Der kognitiven Verzerrung 'Dichotomanie' entgegenwirken.
- Die methodischen Bereiche 'beschreibend', 'explanatorisch' und 'prädiktiv' voneinander unterscheiden können und dann in Übereinstimmung mit der Forschungsarbeit adäquat anwenden (Shmueli, 2025)
- Unterscheiden können, was warum 'explorativ' und was warum 'konfirmatorisch' ist, und dann adäquat anwenden (https://doi.org/10.5964/meth.17705).
- Das Regressionsmodell nicht überfrachten ('too many variables chasing too few data points')
- Alternative Datenanalysen durchführen, falls die Voraussetzungen parametrischer Analysemodelle zu sehr verletzt sind (Höfler_2025Preprint), z.B. robust regression.
- Sensitivitätsanalyse(n) durchführen.
- Fehlende Werte imputieren (in diesem Bereich hat sich sehr viel getan)
- Nicht für multiples Testen korrigieren, falls nicht wirklich angemessen (Hooper).
- Statistische Power angemessen thematisieren, d.h. falls nicht konfirmatorisch getestet wird, dann sollte zumindest erwähnt werden, aus welchen Gründen welche Effektgrösse als realistisch erachtet wird und ob bzw. welche Bedeutung der vorhandenen Stichprobengrösse zukommt.
- Die Präzision eines statistischen Testergebnisses explizit thematisieren, d.h. insbesondere die Bedeutung der Präzision (= Breite des Konfidenzintervalls).
- Gardner 2013 und Hedge 2018 average not the same as individual. -->

# Literaturverzeichnis

<div id="refs" class="references csl-bib-body hanging-indent"
entry-spacing="0">

<div id="ref-amrhein2019scientists" class="csl-entry">

Amrhein, Valentin, Sander Greenland, and Blake McShane. 2019.
“Scientists Rise up Against Statistical Significance.” *Nature* 567
(7748): 305–7.

</div>

<div id="ref-azzalini2023use" class="csl-entry">

Azzalini, Adelchi. 2023. “On the Use of Ordered Factors as Explanatory
Variables.” *Stat* 12 (1): e624.

</div>

<div id="ref-babyak2004you" class="csl-entry">

Babyak, Michael A. 2004. “What You See May Not Be What You Get: A Brief,
Nontechnical Introduction to Overfitting in Regression-Type Models.”
*Biopsychosocial Science and Medicine* 66 (3): 411–21.

</div>

<div id="ref-button2013confidence" class="csl-entry">

Button, Katherine S, John PA Ioannidis, Claire Mokrysz, Brian A Nosek,
Jonathan Flint, Emma SJ Robinson, and Marcus R Munafò. 2013. “Confidence
and Precision Increase with High Statistical Power.” *Nature Reviews
Neuroscience* 14 (8): 585–85.

</div>

<div id="ref-casler2025pragmatism" class="csl-entry">

Casler, Catherine, and Dean Pierides. 2025. “Pragmatism.” In *Elgar
Encyclopedia of Critical Management Studies*, 409–12. Edward Elgar
Publishing.

</div>

<div id="ref-ciapponi2021there" class="csl-entry">

Ciapponi, Agustı́n, José M Belizán, Gilda Piaggio, and Sanni Yaya. 2021.
“There Is Life Beyond the Statistical Significance.” *Reproductive
Health* 18 (1): 80.

</div>

<div id="ref-cole1993shannon" class="csl-entry">

Cole, Charles. 1993. “Shannon Revisited: Information in Terms of
Uncertainty.” *Journal of the American Society for Information Science*
44 (4): 204–11.

</div>

<div id="ref-dalicandro2021prevalent" class="csl-entry">

Dalicandro, Lauren, Jane A Harder, Dwight Mazmanian, and Bruce Weaver.
2021. “How Prevalent Is Overfitting of Regression Models? A Survey of
Recent Articles in Three Psychology Journals.” *The Quantitative Methods
for Psychology* 17 (1): 1–6.

</div>

<div id="ref-deeks2004diagnostic" class="csl-entry">

Deeks, Jonathan J, and Douglas G Altman. 2004. “Diagnostic Tests 4:
Likelihood Ratios.” *Bmj* 329 (7458): 168–69.

</div>

<div id="ref-emmert2024trends" class="csl-entry">

Emmert-Streib, Frank. 2024. “Trends in Null Hypothesis Significance
Testing: Still Going Strong.” *Heliyon* 10 (21).

</div>

<div id="ref-etz2018introduction" class="csl-entry">

Etz, Alexander. 2018. “Introduction to the Concept of Likelihood and Its
Applications.” *Advances in Methods and Practices in Psychological
Science* 1 (1): 60–69.

</div>

<div id="ref-freedland2009multivariable" class="csl-entry">

Freedland, Kenneth E, Rebecca L Reese, and Brian C Steinmeyer. 2009.
“Multivariable Models in Biobehavioral Research.” *Biopsychosocial
Science and Medicine* 71 (2): 205–16.

</div>

<div id="ref-greenland2017serious" class="csl-entry">

Greenland, Sander. 2017a. “A Serious Misinterpretation of a Consistent
Inverse Association of Statin Use with Glioma Across 3 Case-Control
Studies.” *European Journal of Epidemiology* 32: 87–88.

</div>

<div id="ref-greenland2017and" class="csl-entry">

———. 2017b. “For and Against Methodologies: Some Perspectives on Recent
Causal and Statistical Inference Debates.” *European Journal of
Epidemiology* 32 (1): 3–20.

</div>

<div id="ref-greenland2017invited" class="csl-entry">

———. 2017c. “Invited Commentary: The Need for Cognitive Science in
Methodology.” *American Journal of Epidemiology* 186 (6): 639–45.

</div>

<div id="ref-greenland2021noncollapsibility" class="csl-entry">

———. 2021. “Noncollapsibility, Confounding, and Sparse-Data Bias. Part
2: What Should Researchers Make of Persistent Controversies about the
Odds Ratio?” *Journal of Clinical Epidemiology* 139: 264–68.

</div>

<div id="ref-haeffel2022psychology" class="csl-entry">

Haeffel, Gerald J. 2022. “Psychology Needs to Get Tired of Winning.”
*Royal Society Open Science* 9 (6).

</div>

<div id="ref-hautamaki2026risk" class="csl-entry">

Hautamäki, Sari, Taina Laajasalo, Noora Ellonen, Laura Mielityinen, and
Hanna-Mari Lahtinen. 2026. “Risk and Protective Factors for Child Sexual
Abuse: A Comparison of 2013 and 2022.” *Journal of Child Sexual Abuse*,
1–20.

</div>

<div id="ref-hautamaki2025psychosocial" class="csl-entry">

Hautamäki, Sari, Iina Savolainen, Emmi Kauppila, Anu Sirola, and Atte
Oksanen. 2025. “Psychosocial Factors Behind Addiction—a Six-Wave
Longitudinal Comparison of at-Risk Gambling and Drinking.” *Alcohol and
Alcoholism* 60 (1): agae089.

</div>

<div id="ref-hemerik2026choosing" class="csl-entry">

Hemerik, Jesse, and Nick Koning. 2026. “Choosing Alpha Post Hoc: The
Danger of Multiple Standard Significance Thresholds.” *Statistical
Science* 41 (1): 222–26.

</div>

<div id="ref-higgins2008commentary" class="csl-entry">

Higgins, Julian PT. 2008. “Commentary: Heterogeneity in Meta-Analysis
Should Be Expected and Appropriately Quantified.” *International Journal
of Epidemiology* 37 (5): 1158–60.

</div>

<div id="ref-hooper2025adjust" class="csl-entry">

Hooper, Richard. 2025. “To Adjust, or Not to Adjust, for Multiple
Comparisons.” *Journal of Clinical Epidemiology* 180: 111688.

</div>

<div id="ref-howell2024inconvenient" class="csl-entry">

Howell-Moroney, Michael. 2024. “Inconvenient Truths about Logistic
Regression and the Remedy of Marginal Effects.” *Public Administration
Review* 84 (6): 1218–36.

</div>

<div id="ref-infanger2019p" class="csl-entry">

Infanger, Denis, and Arno Schmidt-Trucksäss. 2019. “P Value Functions:
An Underused Method to Present Research Results and to Promote
Quantitative Reasoning.” *Statistics in Medicine* 38 (21): 4189–97.

</div>

<div id="ref-ioannidis2019importance" class="csl-entry">

Ioannidis, John PA. 2019. “The Importance of Predefined Rules and
Prespecified Statistical Analyses: Do Not Abandon Significance.” *Jama*
321 (21): 2067–68.

</div>

<div id="ref-jeremiah2025making" class="csl-entry">

Jeremiah, Faith, and Robert Istvan Radics. 2025. “Making Sense of Action
Bias in Higher Education: Pedagogical Insights on Critical Thinking.”
*Behavioral Sciences* 15 (10): 1372.

</div>

<div id="ref-kraemer2015source" class="csl-entry">

Kraemer, Helena Chmura. 2015. “A Source of False Findings in Published
Research Studies: Adjusting for Covariates.” *JAMA Psychiatry* 72 (10):
961–62.

</div>

<div id="ref-lakens2018justify" class="csl-entry">

Lakens, Daniel, Federico G Adolfi, Casper J Albers, Farid Anvari,
Matthew AJ Apps, Shlomo E Argamon, Thom Baguley, et al. 2018. “Justify
Your Alpha.” *Nature Human Behaviour* 2 (3): 168–71.

</div>

<div id="ref-liu2015sample" class="csl-entry">

Liu, Xiaofeng Steven. 2015. “Sample Size and the Precision of the
Confidence Interval in Meta-Analyses.” *Therapeutic Innovation &
Regulatory Science* 49 (4): 593–98.

</div>

<div id="ref-luo2020comparison" class="csl-entry">

Luo, Candice, Nitika Sanger, Nikhita Singhal, Kaitlin Pattrick, Ieta
Shams, Hamnah Shahid, Peter Hoang, et al. 2020. “A Comparison of
Electronically-Delivered and Face to Face Cognitive Behavioural
Therapies in Depressive Disorders: A Systematic Review and
Meta-Analysis.” *EClinicalMedicine* 24.

</div>

<div id="ref-majumder2025developing" class="csl-entry">

Majumder, Mahbubul, Becky Brusky, Michelle Friend, Julie Dierberger,
Sarah Moulton, Andrew W Swift, and Betty Love. 2025. “Developing a Data
Literacy and Visualization Service Learning Course That Fulfills
Undergraduate Quantitative Literacy Requirements.” *Journal of
Statistics and Data Science Education*, 1–12.

</div>

<div id="ref-maric2022covid" class="csl-entry">

Marić, NP, LJB Lazarević, S Priebe, LJ Mihić, M Pejović-Milovančević, Z
Terzić-Šupić, O Tošković, O Vuković, J Todorović, and G Knežević. 2022.
“Covid-19-Related Stressors, Mental Disorders, Depressive and Anxiety
Symptoms: A Cross-Sectional, Nationally-Representative, Face-to-Face
Survey in Serbia.” *Epidemiology and Psychiatric Sciences* 31: e36.

</div>

<div id="ref-masnick2022model" class="csl-entry">

Masnick, Amy M, and Bradley J Morris. 2022. “A Model of Scientific Data
Reasoning.” *Education Sciences* 12 (2): 71.

</div>

<div id="ref-mcshane2019abandon" class="csl-entry">

McShane, Blakeley B, David Gal, Andrew Gelman, Christian Robert, and
Jennifer L Tackett. 2019. “Abandon Statistical Significance.” *The
American Statistician* 73 (sup1): 235–45.

</div>

<div id="ref-mize2019general" class="csl-entry">

Mize, Trenton D, Long Doan, and J Scott Long. 2019. “A General Framework
for Comparing Predictions and Marginal Effects Across Models.”
*Sociological Methodology* 49 (1): 152–89.

</div>

<div id="ref-norton2019marginal" class="csl-entry">

Norton, Edward C, Bryan E Dowd, and Matthew L Maciejewski. 2019.
“Marginal Effects—Quantifying the Effect of Changes in Risk Factors in
Logistic Regression Models.” *Jama* 321 (13): 1304–5.

</div>

<div id="ref-nuzzo2014scientific" class="csl-entry">

Nuzzo, Regina. 2014. “Scientific Method: Statistical Errors.” *Nature*
506 (7487).

</div>

<div id="ref-pandey2025research" class="csl-entry">

Pandey, Chandra Shekhar, Patanjali Mishra, Shri Ram Pandey, Ratan Deep
Singh, and Shweta Pandey. 2025. “Research Paradigms: A Systematic
Literature Review of Methodological Shifts and Interdisciplinary
Approaches in Research.” *Quality & Quantity*, 1–29.

</div>

<div id="ref-park2020positivism" class="csl-entry">

Park, Yoon Soo, Lars Konge, and Anthony R Artino Jr. 2020. “The
Positivism Paradigm of Research.” *Academic Medicine* 95 (5): 690–94.

</div>

<div id="ref-pedersen2025maximum" class="csl-entry">

Pedersen, Cæcilie Bøje. 2025. “Maximum Likelihood Estimation.”
<https://www.ind.ku.dk/publikationer/studenterserien/studenterserien-publikationer/129-maximumlikelihoodestimation/129-C.B.Pedersen.pdf>.

</div>

<div id="ref-pek2018reporting" class="csl-entry">

Pek, Jolynn, and David B Flora. 2018. “Reporting Effect Sizes in
Original Psychological Research: A Discussion and Tutorial.”
*Psychological Methods* 23 (2): 208.

</div>

<div id="ref-perneger2021use" class="csl-entry">

Perneger, Thomas V. 2021. “How to Use Likelihood Ratios to Interpret
Evidence from Randomized Trials.” *Journal of Clinical Epidemiology*
136: 235–42.

</div>

<div id="ref-pretorius2024demystifying" class="csl-entry">

Pretorius, Lynette. 2024. “Demystifying Research Paradigms: Navigating
Ontology, Epistemology, and Axiology in Research.” *The Qualitative
Report* 29 (10): 2698–2715.

</div>

<div id="ref-rafi2020semantic" class="csl-entry">

Rafi, Zad, and Sander Greenland. 2020. “Semantic and Cognitive Tools to
Aid Statistical Science: Replace Confidence and Significance by
Compatibility and Surprise.” *BMC Medical Research Methodology* 20 (1):
244.

</div>

<div id="ref-ramos2025bad" class="csl-entry">

Ramos, Mark Louie F. 2025. “Bad Stats: A Regular Series Exploring
Slip-Ups, Snafus and Salutary Lessons from the World of Statistics.”
*Significance* 22 (5): 42–44. <https://doi.org/10.1093/jrssig/qmaf061>.

</div>

<div id="ref-rohlfsen2025entropy" class="csl-entry">

Rohlfsen, Cory, Kevin Shannon, and Andrew S Parsons. 2025. “Entropy in
Clinical Decision-Making: A Narrative Review Through the Lens of
Decision Theory: Rohlfsen Et Al.” *Journal of General Internal Medicine*
40 (16): 4033–39.

</div>

<div id="ref-schmidt2008use" class="csl-entry">

Schmidt, Carsten Oliver, and Thomas Kohlmann. 2008. “When to Use the
Odds Ratio or the Relative Risk?” *International Journal of Public
Health* 53 (3): 165.

</div>

<div id="ref-schubert2025improving" class="csl-entry">

Schubert, Anna-Lena, Meike Steinhilber, Heemin Kang, and Daniel S
Quintana. 2025. “Improving Statistical Reporting in Psychology.”
*Communications Psychology* 3 (1): 156.

</div>

<div id="ref-searle1980population" class="csl-entry">

Searle, Shayle R, F Michael Speed, and George A Milliken. 1980.
“Population Marginal Means in the Linear Model: An Alternative to Least
Squares Means.” *The American Statistician* 34 (4): 216–21.

</div>

<div id="ref-sedgwick2014understanding" class="csl-entry">

Sedgwick, Philip. 2014. “Understanding Confidence Intervals.” *BMJ* 349.

</div>

<div id="ref-sidebotham2023interpreting" class="csl-entry">

Sidebotham, David, C Jake Barlow, Janet Martin, and Philip M Jones.
2023. “Interpreting Frequentist Hypothesis Tests: Insights from Bayesian
Inference.” *Canadian Journal of Anesthesia/Journal Canadien
d’anesthésie* 70 (10): 1560–75.

</div>

<div id="ref-smith2018continuing" class="csl-entry">

Smith, Richard J. 2018. “The Continuing Misuse of Null Hypothesis
Significance Testing in Biological Anthropology.” *American Journal of
Physical Anthropology*. Wiley Online Library.

</div>

<div id="ref-stoudt2025storyboard" class="csl-entry">

Stoudt, Sara, and Deborah Nolan. 2025. “The Storyboard: A Tool to
Synthesize, Reflect on, and Write about Data Investigations.” *The
American Statistician*, 1–9.

</div>

<div id="ref-thomson2017making" class="csl-entry">

Thomson, Carrie Louise, Neal Maskrey, and Ivo Vlaev. 2017. “Making
Decisions Better: An Evaluation of an Educational Intervention.”
*Journal of Evaluation in Clinical Practice* 23 (2): 251–56.

</div>

<div id="ref-van2026statistical" class="csl-entry">

van Zwet, Erik, Andrew Gelman, and Witold Więcek. 2026. “A Statistical
Case for Qualified Scientific Optimism.”

</div>

<div id="ref-vincent2024disordered" class="csl-entry">

Vincent, Coralie, Alexandra M Bodnaruc, Denis Prud’homme, Jacob
Guenette, and Isabelle Giroux. 2024. “Disordered Eating Behaviours
During the Menopausal Transition: A Systematic Review.” *Applied
Physiology, Nutrition, and Metabolism* 49 (10): 1286–1308.

</div>

<div id="ref-zyphur2020statistics" class="csl-entry">

Zyphur, Michael J, and Dean C Pierides. 2020. “Statistics and
Probability Have Always Been Value-Laden: An Historical Ontology of
Quantitative Research Methods.” *Journal of Business Ethics* 167 (1):
1–18.

</div>

</div>
