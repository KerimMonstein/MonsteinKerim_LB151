# Projekt-Dokumentation

Monstein

| Datum    | Version | Zusammenfassung                                              |
| -------- | ------- | ------------------------------------------------------------ |
| 05.01.23 | 0.0.1   | Ich habe die ersten 5 Punkte (ausser 4.2) der Dokumentation ausgefüllt. |
| 12.01.23 | 0.0.2   | Unter Punkt 1 Analyse Tier 4 bearbeitet.                     |
| 13.01.23 | 0.0.3   | Anforderungen fertig gestellt.                               |
| 13.01.23 | 0.0.4   | Testfälle erstellt.                                          |
| 26.01.23 | 0.0.5   | Ich habe einige Anforderungen Inhaltlich und deren Nummerierung korrigiert und die Anforderungen B & C zu muss geändert. Tracer Bullet-Prototyp, Datenbank & GUI (grob) erstellt. |
| 07.02.23 | 0.0.6   | Ich habe die Datenbank fertig gestellt und mit einigen Daten befüllt. Admin-Interface erstellt. |
| 21.02.23 | 0.0.7   | Spiel soweit erstellt das es spielbar ist. (Noch ohne Interaktion mit der Datenbank) |
| 23.02.23 | 0.0.8   | Spielfunktionalität mit Datenbank verbunden. Funktionierende Highscore-Liste. |
| 25.02.23 | 0.0.8   | Dokumentation angepasst, Testen, README.md erstellt          |
| 02.03.23 | 0.0.9   | Testfälle auf Video aufgezeichnet, Video & Datenbank verlinkt |

# 0 Ihr Projekt

Ein Glücksradspiel, basierend auf der deutschen TV-Show, in dem man verschiedene Wörter eraten kann.

# 1 Analyse

* Tier 1 (Presentation): JSF, Webseite mit Glücksrad(Button & Outputfield) & Buchstaben-Grid. (Rateformular)
* Tier 2 (Webserver): JSF, Daten entgegennehmen & überprüfen
* Tier 3 (Application Server): JPA, Übereinstimmung von Buchstaben prüfen, Admin-Login 
* Tier 4 (Dataserver): mySQL, Highscore-Liste, Rate-Wörter/Phrasen

# 2 Technologie

Ich möchte mit Java arbeiten und das Framework JSF verwenden, damit ich die Unterichtsmaterialien sinnvoll und effizient anwenden kann. 

# 3 Datenbank

Daten sollen in einer mySQL Datenbank gespeichert werden, ebenfalls um Komplikationen mit mir unbekannten Varianten zu vermeiden. Erstellt und bearbeitet wird die Datenbank mit phpmyadmin. Die Anbindung an die Applikation funktioniert mittels JPA.

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
| 10   | Muss            | Funktional | Als Kandidat möchte ich Vokale kaufen können um das Wort besser erraten zu können. |
| 11   | Muss            | Funktional | Als Kandidat oder Administrator möchte ich in der Highscore-Liste den Rang, Namen, Zeitpunkt des Spiels, Geldbetrag & Anzahl Spielrunden des Eintrages sehen, damit ich diesen mit anderen vergleichen kann |
| 12   | Muss            | Qualität   | Als Kandidat oder Administrator möchte ich, dass die Highscore-Liste nach Rang, der durch die Höhe des Geldbetrags bestimmt wird, aufsteigend sortiert wird, damit die List übersichtlich ist und man direkt den besten Kandidaten herauslesen kann. |
| 13   | Muss            | Funktional | Als Kandidat möchte ich, dass mir kein Rätselwort und keine Phrase mehr als einmal gestellt wird, damit das Spiel weiterhin anspruchsvoll bleibt. |
| 14   | Muss            | Funktional | Als Kandidat möchte, ich jederzeit aufhören, damit mein Gewinn in die Highscore-Liste übernommen wird und ich nicht Bankrott gehe. |
| 15   | Muss            | Funktional | Als Kandidat möchte ich, dass das Spiel mit einer spielbaren Anzahl Wörtern und Fragen gefüllt wird, damit ich genügend Wörter erraten kann, um einen neuen Highscore aufzustellen. |
| 16   | Muss            | Funktional | Als Kandidat möchte ich dass die Anzahl der Spielrunden gezählt werden, damit diese in der Highscore-Liste sichtbar ist. |
| 17   | Muss            | Funktional | Als Entwickler möchte ich leere Textfelder und andere Formulareingaben auf Client- und Serverseite überprüfen, damit ich die Datenqualität sicherstellen kann. |
| 18   | Muss            | Funktional | Als Entwickler möchte ich eine Datenbank-Anbindung verwenden, die unabhängig vom tatsächlich verwendeten Produkt ist, um flexibler und skalierbarer zu sein, damit ich die Anwendung skalieren und erweitern kann. |
| 19   | Muss            | Funktional | Als Entwickler möchte ich Transaktionsmanagement einsetzen, um die Integrität der Daten zu gewährleisten, damit ich die Datenintegrität sicherstellen kann. |
| 20   | Muss            | Funktional | Als Entwickler möchte ich Sicherheitsaspekte implementieren, um die Anwendung und die Daten zu schützen, damit ich die Sicherheit sicherstellen kann. |
| A    | Kann            | Funktional | Als Kandidat möchte ich einen Darkmode aktivieren könne, damit ich meine Augen schonen kann. |
| B    | Muss            | Funktional | Als Kandidat möchte ich den Schwierigkeitsgrad einstellen können, damit ich das Niveau meinem Können anpassen kann. |
| C    | Muss            | Funktional | Als Administrator möchte ich Wörter/Phrasen Schwierigkeitsgrade zuweisen, damit die Spieler den passenden Grad wählen können. |
| D    | Kann            | Funktional | Als Kandidat möchte ich einen Admin kontaktieren können, damit ich diesen um Hilfe fragen kann bei Integritätsproblemen. |

# 4.2 Testfälle

1. | TC-№ | Vorbereitung                                                 | Eingabe                                                      | Erwartete Ausgabe                                            |
   | ---- | ------------------------------------------------------------ | ------------------------------------------------------------ | ------------------------------------------------------------ |
   | 1.1  | Administrator-Konto erstellt                                 | 1. Benutzername: admin 2. Passwort: admin123                 | 3. Admin-Interface Seite im Reiter sichtbar                  |
   | 2.1  | Administrator angemeldet, Admin-Interface Seite offen, Liste enthält Einträge | 1. "Wort/Phrase hinzufügen" anklicken 2. "Cristiano Ronaldo" in Eingabefeld "CreateWoerterLabel_wort" eingeben 3. "CreateWoerter" anklicken | 4. Wort "Cristiano Ronaldo" erscheint in der Liste.          |
   | 2.2  | Administrator angemeldet, Admin-Interface Seite offen, Liste enthält Einträge | 1. Bei "Cristiano Ronaldo" "Edit" anklicken 2. "Toni Kroos" in Eingabefeld "CreateWoerterLabel_wort" eingeben 3. "Edit" anklicken | 4. Wort "Toni Kroos" erscheint in der Liste & "Cristiano Ronaldo" verschwindet. |
   | 2.3  | Administrator angemeldet, Admin-Interface Seite offen, Liste enthält Einträge | 1. "Toni Kroos" auswählen 2. "Destroy" anklicken             | "Toni Kroos" verschwindet aus der Liste.                     |
   | 3.1  | Administrator angemeldet, Admin-Interface Seite offen        | 1. Neue Kategorie: "Videospiele" anlegen                     | 2. Kategorie "Videospiele" in Kategorie-Liste sichtbar       |
   | 3.2  | Administrator angemeldet, Admin-Interface Seite offen        | 1. "GTA V" mit Kategorie "Videospiele" hinzufügen            | 2.  "GTA V"  hat in der DB die Kategorie ID"9"               |
   | 4.1  | Administrator angemeldet, Admin-Interface Seite offen, Highscore-Liste enthält Einträge | 1. Highscore liste öffnen 2. Bei Eintrag "BoeserName" "Destroy" anklicken | 3. Eintrag des Nutzers "BoeserName" verschwindet.            |
   | 5.1  | Projekt ausgeführt, Responsively (o. Ä.) installiert         | 1. Eingabe der URL in Responsively                           | 2. Vollständige Webseite wird in allen Formate angezeigt im Browser |
   | 6.1  | Webseite offen                                               | 1. "Test" als Benutzername 2. Spiel spielen                  | 3. "SpielerX" in der Highscore-Liste sichtbar                |
   | 7.1  | Webseite offen                                               | 1. "Test" als Benutzername 2. Spiel spielen                  | 3. "Kontostand: *900*"                                       |
   | 8.1  | Webseite offen                                               | 1. "Test" als Benutzername 2. Spiel spielen                  | 3. "Lebenspunkte: 3"                                         |
   | 9.1  | Webseite offen                                               | 1. "Test2" als Benutzername 2. Buchstaben falsch raten       | 3. "Falsch"                                                  |
   | 10.1 | Webseite offen, Spiel begonnen, Kontostand >= 1000           | 1. "Vokal kaufen" drücken                                    | 2. Alle Vokale im Wort werden angezeigt.                     |
   | 11.1 | Webseite offen, Einträge in Highscore-Liste vorhanden        | -                                                            | 1. Eintrag in der Liste" 1 / Test/Thu Mar 02 10:53:44 CET  / 2'783 / 2" |
   | 12.1 | Webseite offen, Einträge in Highscore-Liste vorhanden        | -                                                            | 1. Einträge sind nach Rang aufsteigend sortiert              |
   | 13.1 | Phrasen Liste enthält 10 Wörter                              | 1. Spiel 2 Mal 5 Runden spielen                              | 2. In den beiden Durchläufen kommt kein Wort 2 Mal vor.      |
   | 14.1 | Webseite offen                                               | 1. 2 Buchstaben Raten 2. "Aufgeben wählen                    | 3. Aktueller Durchlauf in Highscore-Liste erkennbar          |
   | 15.1 | Datenbank öffnen                                             | -                                                            | 1. Wörter-Liste enthält 40 Einträge.                         |
   | 16.1 | Webseite offen                                               | 1. "SpielerX" als Benutzername 2. Spiel 3 Runden spielen     | 3. "SpielerX" mit "3" Runden in der Highscore-Liste sichtbar |
   | 17.1 | Spiel gestartet                                              | 1. "5" in Eingabefeld "Konsonant …" 2. "Raten" anklicken     | 3. "Bitte geben Sie nur Buchstaben ein.                      |
   | 17.2 | Spiel gestartet                                              | 1. "5" in Eingabefeld "Konsonant …"   2. Eingabefeld rechts klicken                      3. "Element untersuchen" wählen 4. "required" Attribut löschen 5. "Raten" anklicken | 3. "Bitte geben Sie nur Buchstaben ein.                      |
   | 18.1 | Datenbank vorhanden, MySQL gestartet                         | 1. http://localhost/phpmyadmin/... öffnen                    | 2. Datenbank quizlb151 ist vorhanden.                        |
   | 19.1 | Source-Code offen                                            | -                                                            | 1. Datenbank Manipulationen befinden sich in einem Try & catch innerhalb connection.setAutoCommit(false); & connection.commit(); 2. Im catch befindet sich connection.rollback(); |
   | 20.1 | Webseite offen                                               | 1. <script>alert("hallo")</script> in Feld Benutzername      | 2. Benutzername ist "<script>alert("hallo")</script>" (Es erscheint kein Alert) |
   | A.1  | Webseite offen                                               | 1. "Darkmode" anklicken                                      | 2. Hintergrundfarbe wird Dunkel und Text Hell                |
   | B.1  | Webseite offen                                               | 1. "Schwierig wählen                                         | 2. Wort mit der Schwierigkeit-ID 3 erscheint.                |
   | C.1  | Administrator angemeldet, Admin-Interface Seite offen        | 1. "Cristiano Ronaldo" in Eingabefeld "Wort/Phrase" eingeben 2. "Mittel" auswählen 3. "Hinzufügen" anklicken | 4. Wort "Cristiano Ronaldo" erscheint in der Liste mit der Schwierigkeit-ID 2. |
   | D.1  | Webseite offen                                               | 1. "Kontakt & Hilfe" anklicken                               | 2. Mail-Client öffnet sich mit Entwurf an "[k.monstein.inf20@stud.bbbaden.ch](mailto:k.monstein.inf20@stud.bbbaden.ch)" |

# 5 Prototyp

![MockUpLB151 drawio](https://user-images.githubusercontent.com/69577029/222418115-93af9d51-af10-4e27-8831-9ed2d6004077.png)


# 6 Implementation

| User Story     | Datum    | Beschreibung                                         |
| -------------- | -------- | ---------------------------------------------------- |
| 14, 17         | 26.01.23 | Datenbank mit Wörter befüllt                         |
| 1-5            | 07.02.23 | Admin-Login & Admin-Interface (Mit Funktionalität)   |
| 6-9, 16, 19    | 07.02.23 | Rate-Seite Interface, Eingabevalidierung, Sicherheit |
| B & C          | 21.02.23 | Spiellogik, Wörter aus Datenbank                     |
| 10, 11, 13, 18 | 23.02.23 | Eintrag in Highscore-Liste, Sortierung, Transaktion  |

# 7 Projektdokumentation

| US-№ | Erledigt? | Entsprechende Code-Dateien oder Erklärung                    |
| ---- | --------- | ------------------------------------------------------------ |
| 1    | ja        | adminBean.java, Zeile 24-31.                                 |
| 2    | ja        | Interface generiert durch JPA, Ordner "woerter", woerterController, woerterFacade |
| 3    | ja        | Interface generiert durch JPA, Ordner "kategorien", kategorienController, kategorienFacade |
| 4    | ja        | Interface generiert durch JPA, Ordner "highscoreliste", highscorelisteController, highscorelisteFacade |
| 5    | ja        | JSF Anwendung läuft im Browser                               |
| 6    | ja        | Index.xhtml, *Zeile 28*                                      |
| 7    | ja        | Index.xhtml, *Zeile 50*                                      |
| 8    | ja        | Index.xhtml, *Zeile 54*                                      |
| 9    | ja        | Index.xhtml, *Zeile 64*                                      |
| 10   | ja        | Index.xhtml, *Zeile 66-87*, gameBean.java, endGame(), *Zeile 206-271* |
| 11   | ja        | Index.xhtml, *Zeile 66-87*, gameBean.java, endGame(), Zeile 241-*248*, highscoreBean.java, getHighscore() |
| 12   | nein      | Zeitmangel                                                   |
| 13   | ja        | Index.xhtml, *Zeile 35* gameBean.java, endGame(), *Zeile 206-271* |
| 14   | ja        | *Sichtbar in der Datenbank Tabelle "woerter".*               |
| 15   | nein      | Zeitmangel                                                   |
| 16   | ja        | Index.xhtml, *Zeile 28 & 57*  gameBean.java *Zeile 130*      |
| 17   | ja        | mySQL Datenbank, angebunden durch JPA                        |
| 18   | ja        | gameBean.java, endGame(), *Zeile 213-261*                    |
| 19   | ja        | Inputfelder werden automatisch escaped, adminInterface in secured-Ordner |
| A    | nein      | Zeitmangel                                                   |
| B    | ja        | Index.xhtml, *Zeile 29-32*, gameBean.java *Zeile 188-196*    |
| C    | ja        | Interface generiert durch JPA, Ordner "woerter", woerterController, woerterFacade |
| D    | nein      | Zeitmangel                                                   |

# 8 Testprotokoll

https://youtu.be/-PyxGOqXTRI

| TC-№ | Datum    | Resultat | Tester         |
| ---- | -------- | -------- | -------------- |
| 1.1  | 25.01.23 | OK       | Kerim Monstein |
| 2.1  | 25.01.23 | OK       | Kerim Monstein |
| 2.2  | 25.01.23 | OK       | Kerim Monstein |
| 2.3  | 25.01.23 | OK       | Kerim Monstein |
| 3.1  | 25.01.23 | OK       | Kerim Monstein |
| 3.2  | 25.01.23 | OK       | Kerim Monstein |
| 4.1  | 25.01.23 | OK       | Kerim Monstein |
| 5.1  | 25.01.23 | OK       | Kerim Monstein |
| 6.1  | 25.01.23 | OK       | Kerim Monstein |
| 7.1  | 25.01.23 | OK       | Kerim Monstein |
| 8.1  | 25.01.23 | OK       | Kerim Monstein |
| 9.1  | 25.01.23 | OK       | Kerim Monstein |
| 10.1 | 25.01.23 | OK       | Kerim Monstein |
| 11.1 | 25.01.23 | OK       | Kerim Monstein |
| 12.1 | 25.01.23 | NOK      | Kerim Monstein |
| 13.1 | 25.01.23 | OK       | Kerim Monstein |
| 14.1 | 25.01.23 | OK       | Kerim Monstein |
| 15.1 | 25.01.23 | NOK      | Kerim Monstein |
| 16.1 | 25.01.23 | OK       | Kerim Monstein |
| 16.2 | 25.01.23 | OK       | Kerim Monstein |
| 17.1 | 25.01.23 | OK       | Kerim Monstein |
| 18.1 | 25.01.23 | OK       | Kerim Monstein |
| 19.1 | 25.01.23 | OK       | Kerim Monstein |
| A.1  | 25.01.23 | NOK      | Kerim Monstein |
| B.1  | 25.01.23 | OK       | Kerim Monstein |
| C.1  | 25.01.23 | OK       | Kerim Monstein |
| D.1  | 25.01.23 | NOK      | Kerim Monstein |

Fast alle "Muss"-Anforderungen (mit Ausnahme von 12 & 15) wurden erfolgreich implementiert. 

# 9 `README.md`

[README.md](https://github.com/KerimMonstein/MonsteinKerim_LB151/files/10832439/README.md)

Datenbank: quizlb151.sql


# 10 Allgemeines

- [x] Ich habe die Rechtschreibung überprüft
- [x] Ich habe überprüft, dass die Nummerierung von Testfällen und User Stories übereinstimmen
- [x] Ich habe alle mit ✍️ markierten Teile ersetzt
