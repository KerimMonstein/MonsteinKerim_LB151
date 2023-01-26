# Projekt-Dokumentation

Monstein

| Datum    | Version | Zusammenfassung                                              |
| -------- | ------- | ------------------------------------------------------------ |
| 05.01.23 | 0.0.1   | Ich habe die ersten 5 Punkte (ausser 4.2) der Dokumentation ausgefüllt. |
| 12.01.23 | 0.0.2   | Unter Punkt 1 Analyse Tier 4 bearbeitet.                     |
| 13.01.23 | 0.0.3   | Anforderungen fertig gestellt.                               |
| 13.01.23 | 0.0.4   | Testfälle erstellt.                                          |
| 26.01.23 | 0.0.5   | Ich habe einige Anforderungen Inhaltlich und deren Nummerierung korrigiert und die Anforderungen B & C zu muss geändert. Tracer Bullter-Prototyp, Datenbank & GUI (grob) erstellt.|

# 0 Ihr Projekt

Ein Glücksradspiel, basierend auf der deutschen TV-Show, in dem man verschiedene Wörter eraten kann.

# 1 Analyse

* Tier 1 (Presentation): Webseite mit Glücksrad & Buchstaben.
* Tier 2 (Webserver): Daten entgegennehmen & überprüfen
* Tier 3 (Application Server): Übereinstimmung von Buchstaben prüfen.
* Tier 4 (Dataserver): Admin-Login & Highscore-Liste, Wörter/Phrasen

# 2 Technologie

Ich möchte mit Java arbeiten und das Framework JSF verwenden, damit ich die Unterichtsmaterialien sinnvoll und effizient anwenden kann. 

# 3 Datenbank

Daten sollen in einer mySQL Datenbank gespeichert werden, ebenfalls um Komplikationen mit mir unbekannten Varianten zu vermeiden.

# 4.1 User Stories
| US-№ | Verbindlichkeit | Typ        | Beschreibung                                                 |
| ---- | --------------- | ---------- | ------------------------------------------------------------ |
| 1    | Muss            | Funktional | Als Administrator möchte ich mich mit einem Benutzernamen & Passwort authentifizieren können, damit nur ich Zugang zu Admin-Funktionen habe. |
| 2    | Muss            | Funktional | Als Administrator möchte ich Phrasen und Rätselwörter anlegen, ändern und löschen können, damit das Spiel auf Dauer interessant und unvorhersehbar bleibt. |
| 3    | Muss            | Funktional | Als Administrator möchte ich Kategorien anlegen und jedes Wort bzw. jede Frage einer Kategorie zuordnen können, damit das Wort für die Kandidaten nicht so schwer zum Erraten ist. |
| 4    | Muss            | Funktional | Als Administrator möchte ich einzelne Einträge der Highscore-Liste löschen können, damit die Einträge frei von missbräuchlichen Inhalten bleiben (z.B. Beleidigungen, Links etc.) |
| 5    | Muss            | Funktional | Als Kandidat möchte ich das Spiel auf einem Webbrowser spielen können, damit ich das Spiel auf möglichst vielen Geräten spielen kann. |
| 6    | Muss            | Funktional | Als Kandidat möchte ich meinen Namen eingeben können, damit dieser auf der Highscore-Liste sichtbar ist. |
| 7    | Muss            | Funktional | Als Kandidat möchte ich zu jeder Zeit meinen Kontostand einsehen können, damit ich weiss, wie viel Geld ich habe. |
| 8    | Muss            | Funktional | Als Kandidat möchte ich zu jeder Zeit die Anzahl übriger Lebenspunkte sehen, damit ich weiss, wie oft ich noch raten darf. |
| 9    | Muss            | Funktional | Als Kandidat möchte ich mitgeteilt bekommen, ob meine Antwort richtig oder falsch war, damit ich meine nächste Antwort daran anpassen kann. |
| 10   | Muss            | Funktional | Als Kandidat oder Administrator möchte ich in der Highscore-Liste den Rang, Namen, Zeitpunkt des Spiels, Geldbetrag & Anzahl Spielrunden des Eintrages sehen, damit ich diesen mit anderen vergleichen kann |
| 11   | Muss            | Qualität   | Als Kandidat oder Administrator möchte ich, dass die Highscore-Liste nach Rang, der durch die Höhe des Geldbetrags bestimmt wird, aufsteigend sortiert wird, damit die List übersichtlich ist und man direkt den besten Kandidaten herauslesen kann. |
| 12   | Muss            | Funktional | Als Kandidat möchte ich, dass mir kein Rätselwort und keine Phrase mehr als einmal gestellt wird, damit das Spiel weiterhin anspruchsvoll bleibt. |
| 13   | Muss            | Funktional | Als Kandidat möchte, ich jederzeit aufhören, damit mein Gewinn in die Highscore-Liste übernommen wird und ich nicht Bankrott gehe. |
| 14   | Muss            | Funktional | Als Kandidat möchte ich, dass das Spiel mit einer spielbaren Anzahl Wörtern und Fragen gefüllt wird, damit ich genügend Wörter erraten kann, um einen neuen Highscore aufzustellen. |
| 15   | Muss            | Funktional | Als Kandidat möchte ich dass die Anzahl der Spielrunden gezählt werden, damit diese in der Highscore-Liste sichtbar ist. |
| 16   | Muss            | Funktional | Als Entwickler möchte ich leere Textfelder und andere Formulareingaben auf Client- und Serverseite überprüfen, damit ich die Datenqualität sicherstellen kann. |
| 17   | Muss            | Funktional | Als Entwickler möchte ich eine Datenbank-Anbindung verwenden, die unabhängig vom tatsächlich verwendeten Produkt ist, um flexibler und skalierbarer zu sein, damit ich die Anwendung skalieren und erweitern kann. |
| 18   | Muss            | Funktional | Als Entwickler möchte ich Transaktionsmanagement einsetzen, um die Integrität der Daten zu gewährleisten, damit ich die Datenintegrität sicherstellen kann. |
| 19   | Muss            | Funktional | Als Entwickler möchte ich Sicherheitsaspekte implementieren, um die Anwendung und die Daten zu schützen, damit ich die Sicherheit sicherstellen kann. |
| A    | Kann            | Funktional | Als Kandidat möchte ich einen Darkmode aktivieren könne, damit ich meine Augen schonen kann. |
| B    | Muss            | Funktional | Als Kandidat möchte ich den Schwierigkeitsgrad einstellen können, damit ich das Niveau meinem Können anpassen kann. |
| C    | Muss            | Funktional | Als Administrator möchte ich Wörter/Phrasen Schwierigkeitsgrade zuweisen, damit die Spieler den passenden Grad wählen können. |
| D    | Kann            | Funktional | Als Kandidat möchte ich einen Admin kontaktieren können, damit ich diesen um Hilfe fragen kann bei Integritätsproblemen. |

# 4.2 Testfälle

| TC-№ | Vorbereitung                                                 | Eingabe                                                      | Erwartete Ausgabe                                            |
| ---- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
| 1.1  | Administrator-Konto erstellt                                 | 1\. Benutzername: admin 2. Passwort: admin123                | 3\. Admin- Interface Seite im Reiter sichtbar                |
| 2.1  | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 2. "Hinzufügen" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste.        |
| 2.2  | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "2" in Eingabefeld "Index" eingeben 2. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 3. "Bearbeiten" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste & Wort/Phrase mit Index 2 verschwindet. |
| 2.3  | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "2" in Eingabefeld "Index" eingeben 2. "Löschen" anklicken | Wort/Phrase mit Index 2 verschwindet.                        |
| 3.1  | Administrator angemeldet, Admin-Interface Seite offen        | 1\. Neue Kategorie: Tiere anlegen                            | 2\. Kategorie "Tiere" in ComboBox auswählbar                 |
| 3.2  | Administrator angemeldet, Admin- Interface Seite offen       | 1\. "Pfeilgiftfrosch" mit Kategorie "Tiere" hinzufügen       | 2\. Pfeilgiftfrosch hat in der DB die Kategorie "Tiere"      |
| 4.1  | Administrator angemeldet, Admin- Interface Seite offen, Highscore-Liste enthält Einträge | 1\. "1" in Eingabefeld "Rang" eingeben 2. "Löschen" anklicken | 3\. Eintrag auf Rang 1 verschwindet.                         |
| 5.1  | Projekt ausgeführt, Responsively (o. Ä.) installiert         | 1\. Eingabe der URL in Responsively                          | 2\. Vollständige Webseite wird in allen Formate angezeigt im Browser |
| 6.1  | Webseite offen                                               | 1\. "SpielerX" als Benutzername 2. Spiel spielen             | 3\. "SpielerX" in der Highscore-Liste sichtbar               |
| 7.1  | Webseite offen                                               | 1\. "SpielerX" als Benutzername 2. Spiel spielen             | 3\. "Kontostand: xxxx"                                       |
| 8.1  | Webseite offen                                               | 1\. "SpielerX" als Benutzername 2. Spiel spielen             | 3\. "Lebenspunkte: 3"                                        |
| 9.1  | Webseite offen                                               | 1\. "SpielerX" als Benutzername 2. Buchstaben falsch raten   | 3\. "Falsch"                                                 |
| 10.1 | Webseite offen, Einträge in Highscore-Liste vorhanden        | -                                                            | 1\. Eintrag in der Liste " 1 / Kerim / 14.02.23 / 20'000 / 4" |
| 11.1 | Webseite offen, Einträge in Highscore-Liste vorhanden        | -                                                            | 1\. Einträge sind nach Rang aufsteigend sortiert             |
| 12.1 | Phrasen Liste enthält 10 Wörter                              | 1\. Spiel 2 Mal 5 Runden spielen                             | 2\. In den beiden Durchläufen kommt kein Wort 2 Mal vor.     |
| 13.1 | Webseite offen                                               | 1\. 2 Buchstaben Raten 2. "Aufgeben wählen                   | 3\. Aktueller Durchlauf in Highscore-Liste erkennbar         |
| 14.1 | Datenbank öffnen                                             | -                                                            | 1\. Wörter-Liste enthält über 40 Einträge                    |
| 15.1 | Webseite offen                                               | 1\. "SpielerX" als Benutzername 2. Spiel 3 Runden spielen    | 3\. "SpielerX" mit "3" Runden in der Highscore-Liste sichtbar |
| 16.1 | Spiel gestartet                                              | 1\. "5" in Eingabefeld "Konsonant.." 2. "Raten" anklicken    | 3\. "Bitte geben sie nur Buchstaben ein.                     |
| 16.2 | Spiel gestartet                                              | 1\. "5" in Eingabefeld "Konsonant.."   2. Eingabefeld rechtsklicken                      3. "Element untersuchen" wählen 4. "required" Attribut löschen 5. "Raten" anklicken | 3\. "Bitte geben sie nur Buchstaben ein.                     |
| 17.1 | Datenbank vorhanden, MySQL gestartet                         | 1. http://localhost/phpmyadmin/... öffnen                    | 2. Datenbank quizlb151 ist vorhanden.                        |
| 18.1 | Source-Code offen                                            | -                                                            | 1\. Datenbank Manipulationen befinden sich in einem Try & catch innerhalb connection.setAutoCommit(false); & connection.commit(); 2. Im catch befindet sich connection.rollback(); |
| 19.1 | Webseite offen                                               | 1\. <script>alert("hallo")</script> in Feld Benutzername     | 2\. Benutzername ist "<script>alert("hallo")</script>" (Es erscheint kein Alert) |
| A.1  | Webseite offen                                               | 1\. "Darkmode" anklicken                                     | 2\. Hintergrundfarbe wird Dunkel und Text Hell               |
| B.1  | Webseite offen                                               | 1\. "Schwierig wählen                                        | 2\. Ratewort mit über 15 Ziffern erscheint                   |
| C.1  | Administrator angemeldet, Admin-Interface Seite offen        | 1\. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 2. "Mittel" auswählen 3. "Hinzufügen" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste.        |
| D.1  | Webseite offen                                               | 1\. "Kontakt & Hilfe" anklicken                              | 2\. Mail-Client öffnet sich mit Entwurf an "<k.monstein.inf20@stud.bbbaden.ch>" |

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
- [x] Ich habe überprüft, dass die Nummerierung von Testfällen und User Stories übereinstimmen
- [ ] Ich habe alle mit ✍️ markierten Teile ersetzt
