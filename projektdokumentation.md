# Projekt-Dokumentation

Monstein

| Datum    | Version | Zusammenfassung                                              |
| -------- | ------- | ------------------------------------------------------------ |
| 05.01.23 | 0.0.1   | Ich habe die ersten 5 Punkte (ausser 4.2) der Dokumentation ausgefüllt. |
| 12.01.23 | 0.0.2   | Unter Punkt 1 Analyse Tier 4 bearbeitet. |
| 13.01.23 | 0.0.3   | Anforderungen fertig gestellt.    |
|          | 0.0.4   |                                                              |

# 0 Ihr Projekt

Ein Glücksradspiel, basierend auf der deutschen TV-Show, in dem man verschiedene Wörter eraten kann.

# 1 Analyse

* Tier 1 (Presentation): Webseite mit Glücksrad & Buchstaben.
* Tier 2 (Webserver): Daten entgegennehmen & überprüfen
* Tier 3 (Application Server): Übereinstimmung von Buchstaben prüfen.
* Tier 4 (Dataserver): Admin-Login & Highscore-Liste, Wörter/Phrasen

# 2 Technologie

Ich möchte mit Java arbeiten und das Framework JSF verwenden, damit ich die Unterichtsmaterialien sinvoll und effizient anwenden kann. 

# 3 Datenbank

Daten sollen in einer mySQL Datenbank gespeichert werden, ebenfalls um Koplikationen mit mir unbekannten Varianten zu vermeiden.

# 4.1 User Stories

| US-№ | Verbindlichkeit | Typ  | Beschreibung                       |
| ---- | --------------- | ---- | ---------------------------------- |
| 1 | Muss | Funktional | Als Administrator möchte ich mich mit einem Benutzernamen & Passwort authentifizieren können, damit nur ich Zugang zu Admin-Funktionen habe. |
| 2 | Muss | Funktional | Als Administrator möchte ich Phrasen und Rätselwörter anlegen, ändern und löschen können, damit das Spiel auf Dauer interessant und unvorhersehbar bleibt. |
| 3 | Muss | Funktional | Als Administrator möchte ich Kategorien anlegen und jedes Wort bzw. jede Frage einer Kategorie zuordnen können, damit das Wort für die Kandidaten nicht so schwer zum Erraten ist. |
| 4 | Muss | Funktional | Als Administrator möchte ich einzelne Einträge der Highscore-Liste löschen können, damit die Einträge frei von missbräuchlichen Inhalten bleiben (z.B. Beleidigungen, Links etc.) |
| 5 | Muss | Funktional | Als Kandidat möchte ich das Spiel auf einem Webbrowser spielen können, damit ich das Spiel auf möglichst vielen Geräten spielen kann. |
| 6 | Muss | Funktional | Als Kandidat möchte ich meinen Namen eingeben können, damit dieser auf der Highscore-Liste sichtbar ist. |
| 7 | Muss | Funktional | Als Kandidat möchte ich zu jeder Zeit meinen Kontostand einsehen können, damit ich weiss, wie viel Geld ich habe. |
| 8 | Muss | Funktional | Als Kandidat möchte ich zu jeder Zeit die Anzahl übriger Lebenspunkte sehen, damit ich weiss, wie oft ich noch raten darf. |
| 9 | Muss | Funktional | Als Kandidat möchte ich mitgeteilt bekommen, ob meine Antwort richtig oder falsch war, damit ich meine nächste Antwort daran anpassen kann. |
| 10 | Muss | Funktional | Als Kandidat oder Administrator möchte ich in der Highscore-Liste den Rang, Namen, Zeitpunkt des Spiels, Geldbetrag & Anzahl Spielrunden des Eintrages sehen, damit ich diesen mit anderen vergleichen kann |
| 11 | Muss | Qualität | Als Kandidat oder Administrator möchte ich, dass die Highscore-Liste nach Rang, der durch die Höhe des Geldbetrags bestimmt wird, aufsteigend sortiert wird, damit die List übersichtlich ist und man direkt den besten Kandidaten herauslesen kann. |
| 12 | Muss | Funktional | Als Kandidat möchte ich, dass mir kein Rätselwort und keine Phrase mehr als einmal gestellt wird, damit das Spiel weiterhin anspruchsvoll bleibt. |
| 13 | Muss | Funktional | Als Kandidat möchte, ich jederzeit aufhören, damit mein Gewinn in die Highscore-Liste übernommen wird und ich nicht Bankrott gehe. |
| 14 | Muss | Funktional | Als Kandidat möchte ich, dass das Spiel mit einer spielbaren Anzahl Wörtern und Fragen gefüllt wird, damit ich genügend Wörter erraten kann, um einen neuen Highscore aufzustellen. |
| 15 | Muss | Funktional | Als Entwickler möchte ich die Anzahl der Spielrunden zählen, damit ich die Beliebtheit des Spiels messen und analysieren kann. |
| 16 | Muss | Funktional | Als Entwickler möchte ich leere Textfelder und andere Formulareingaben auf Client- und Serverseite überprüfen, damit ich die Datenqualität sicherstellen kann. |
| 17 | Muss | Funktional | Als Entwickler möchte ich eine Datenbank-Anbindung verwenden, die unabhängig vom tatsächlich verwendeten Produkt ist, um flexibler und skalierbarer zu sein, damit ich die Anwendung skalieren und erweitern kann. |
| 18 | Muss | Funktional | Als Entwickler möchte ich Transaktionsmanagement einsetzen, um die Integrität der Daten zu gewährleisten, damit ich die Datenintegrität sicherstellen kann. |
| 19 | Muss | Funktional | Als Entwickler möchte ich Sicherheitsaspekte implementieren, um die Anwendung und die Daten zu schützen, damit ich die Sicherheit sicherstellen kann. |
| A | Kann | Funktional | Als Kandidat möchte ich einen Darkmode aktivieren könne, damit ich meine Augen schonen kann. |
| B | Kann | Funktional | Als Kandidat möchte ich den Schwierigkeitsgrad einstellen können, damit ich das Niveau meinem Können anpassen kann. |
| C | Kann | Funktional | Als Administrator möchte ich Wörter/Phrasen Schwierigkeitsgrade zuweisen, damit die Spieler den passenden Grad wählen können. |
| D | Kann | Funktional | Als Kandidat möchte ich einen Admin kontaktieren können, damit ich diesen um Hilfe fragen kann bei Integritätsproblemen. |

# 4.2 Testfälle

| TC-№ | Vorbereitung | Eingabe | Erwartete Ausgabe |
| ---- | ------------ | ------- | ----------------- |
| 1.1  |              |         |                   |
| ...  |              |         |                   |

✍️ Die Nummer hat das Format `N.m`, wobei `N` die Nummer der User Story ist, die der Testfall abdeckt, und `m` von `1` an nach oben gezählt. Beispiel: Der dritte Testfall, der die zweite User Story abdeckt, hat also die Nummer `2.3`.

# 5 Prototyp

![MockUpLB151](https://user-images.githubusercontent.com/69577029/210852973-924297c6-481c-47a5-950d-079732b20e22.png)


# 6 Implementation

✍️ Halten Sie fest, wann Sie welche User Story bearbeitet haben

| User Story | Datum | Beschreibung |
| ---------- | ----- | ------------ |
| ...        |       |              |

# 7 Projektdokumentation

| US-№ | Erledigt? | Entsprechende Code-Dateien oder Erklärung |
| ---- | --------- | ----------------------------------------- |
| 1    | ja / nein |                                           |
| ...  |           |                                           |

# 8 Testprotokoll

✍️ Fügen Sie hier den Link zu dem Video ein, welches den Testdurchlauf dokumentiert.

| TC-№ | Datum | Resultat | Tester |
| ---- | ----- | -------- | ------ |
| 1.1  |       |          |        |
| ...  |       |          |        |

✍️ Vergessen Sie nicht, ein Fazit hinzuzufügen, welches das Test-Ergebnis einordnet.

# 9 `README.md`

✍️ Beschreiben Sie ausführlich in einer README.md, wie Ihre Applikation gestartet und ausgeführt wird. Legen Sie eine geeignete Möglichkeit (Skript, Export, …) bei, Ihre Datenbank wiederherzustellen.

# 10 Allgemeines

- [ ] Ich habe die Rechtschreibung überprüft
- [ ] Ich habe überprüft, dass die Nummerierung von Testfällen und User Stories übereinstimmen
- [ ] Ich habe alle mit ✍️ markierten Teile ersetzt
