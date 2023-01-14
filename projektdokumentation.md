# Projekt-Dokumentation

Monstein

| Datum    | Version | Zusammenfassung                                              |
| -------- | ------- | ------------------------------------------------------------ |
| 05.01.23 | 0.0.1   | Ich habe die ersten 5 Punkte (ausser 4.2) der Dokumentation ausgefüllt. |
| 12.01.23 | 0.0.2   | Unter Punkt 1 Analyse Tier 4 bearbeitet. |
| 13.01.23 | 0.0.3   | Anforderungen fertig gestellt.    |
| 13.01.23 | 0.0.4   | Testfälle erstellt.  |

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

| TC-№ | Vorbereitung | Eingabe | Erwartete Ausgabe |
| --- | --- | --- | --- |
| 1.1 | Administrator-Konto erstellt | 1\. Benutzername: admin 2. Passwort: admin123 | 3\. Admin- Interface Seite im Reiter sichtbar |
| 2.2 | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 2. "Hinzufügen" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste. |
| 2.2 | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "2" in Eingabefeld "Index" eingeben 2. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 3. "Bearbeiten" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste & Wort/Phrase mit Index 2 verschwindet. |
| 2.3 | Administrator angemeldet, Admin- Interface Seite offen, Liste enthält Einträge | 1\. "2" in Eingabefeld "Index" eingeben 2. "Löschen" anklicken | Wort/Phrase mit Index 2 verschwindet. |
| 3.4 | Administrator angemeldet, Admin-Interface Seite offen | 1\. Neue Kategorie: Tiere anlegen | 2\. Kategorie "Tiere" in ComboBox auswählbar |
| 3.5 | Administrator angemeldet, Admin- Interface Seite offen | 1\. "Pfeilgiftfrosch" mit Kategorie "Tiere" hinzufügen | 2\. Pfeilgiftfrosch hat in der DB die Kategorie "Tiere" |
| 4.6 | Administrator angemeldet, Admin- Interface Seite offen, Highscore-Liste enthält Einträge | 1\. "1" in Eingabefeld "Rang" eingeben 2. "Löschen" anklicken | 3\. Eintrag auf Rang 1 verschwindet. |
| 5.7 | Projekt ausgeführt, Responsively (o. Ä.) installiert | 1\. Eingabe der URL in Responsively | 2\. Vollständige Webseite wird in allen Formate angezeigt im Browser |
| 6.8 | Webseite offen | 1\. "SpielerX" als Benutzername 2. Spiel spielen | 3\. "SpielerX" in der Highscore-Liste sichtbar |
| 7.9 | Webseite offen | 1\. "SpielerX" als Benutzername 2. Spiel spielen | 3\. "Kontostand: xxxx" |
| 8.10 | Webseite offen | 1\. "SpielerX" als Benutzername 2. Spiel spielen | 3\. "Lebenspunkte: 3" |
| 9.11 | Webseite offen | 1\. "SpielerX" als Benutzername 2. Buchstaben falsch raten | 3\. "Falsch" |
| 10.12 | Webseite offen, Einträge in Highscore-Liste vorhanden | - | 1\. Eintrag in der Liste " 1 / Kerim / 14.02.23 / 20'000 / 4"  |
| 11.13 | Webseite offen, Einträge in Highscore-Liste vorhanden | - | 1\. Einträge sind nach Rang aufsteigend sortiert |
| 12.14 | Phrasen Liste enthält 10 Wörter | 1\. Spiel 2 Mal 5 Runden spielen | 2\. In den beiden Durchläufen kommt kein Wort 2 Mal vor. |
| 13.15 | Webseite offen | 1\. 2 Buchstaben Raten 2. "Aufgeben wählen | 3\. Aktueller Durchlauf in Highscore-Liste erkennbar |
| 14.16 | Datenbank öffnen | - | 1\. Wörter-Liste enthält über 40 Einträge |
| 15.17 | Webseite offen | 1\. "SpielerX" als Benutzername 2. Spiel 3 Runden spielen | 3\. "SpielerX" mit "3" Runden in der Highscore-Liste sichtbar |
| 16.18 | Spiel gestartet | 1\. "5" in Eingabefeld "Konsonant.." 2. "Raten" anklicken | 3\. "Bitte geben sie nur Buchstaben ein. |
| 17.19 | Source-Code offen | - | 1\. Datenbank Manipulationen befinden sich in einem Try & catch innerhalb connection.setAutoCommit(false); & connection.commit(); 2. Im catch befindet sich connection.rollback(); |
| 18.20 | Webseite offen | 1\. <script>alert("hallo")</script> in Feld Benutzername | 2\. Benutzername ist "<script>alert("hallo")</script>" (Es erscheint kein Alert) |
| A.23 | Webseite offen | 1\. "Darkmode" anklicken | 2\. Hintergrundfarbe wird Dunkel und Text Hell |
| B.24 | Webseite offen | 1\. "Schwierig wählen | 2\. Ratewort mit über 15 Ziffern erscheint |
| C.25 | Administrator angemeldet, Admin-Interface Seite offen | 1\. "Programmieren" in Eingabefeld "Wort/Phrase" eingeben 2. "Mittel" auswählen 3. "Hinzufügen" anklicken | 4\. Wort "Programmieren" erscheint oben in der Liste. |
| D.26 | Webseite offen | 1\. "Kontakt & Hilfe" anklicken | 2\. Mail-Client öffnet sich mit Entwurf an "<k.monstein.inf20@stud.bbbaden.ch>" |

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
