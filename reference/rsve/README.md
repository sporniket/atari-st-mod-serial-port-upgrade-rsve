> RSVE_DOC.TXT converted to markdown format and transcoded into UTF-8

# RSVE, höhere Baudraten für die serielle Schnittstelle des ST (ebenfalls verwendbar für Modem1 der MegaSTE und TT Computer)


## Sinn und Zweck des RSVE

RSVE ermöglicht die Benutzung von höheren Datenraten als 19200Bd auf der
seriellen Schnittstelle Modem1. Möglich sind 38400, 57600 und 115200Bd.

RSVE ist in der Ansteuerung kompatibel zu RS_Speed von Stephan Skrodzki
@KA.

RSVE benötigt nur vier Kabel zum Anschluß im Computer. Deshalb ist außer
dem Quarzoszillator und dem GAL16v8 noch ein Schaltkreis für 1 DM
vorhanden. Eigentlich wollte ich diesen Schaltkreis einsparen und alles in
ein GAL39v18 (=GAL6001) packen, ließ es wegen der geringen Verbreitung und
des höheren Preises des GAL39v18 aber sein. Da nur zwei Kabel am MFP
angeschlossen werden müssen, ist die Arbeit besonders bei den mit
Quadpack-MFP ausgestatteten TTs und MegaSTEs wesentlich einfacher.

## Copyright

RSVE darf für den Eigenbedarf gebaut werden. Gegen den Aufbau für gute
Freunde habe ich ebenfalls nichts. Dabei darf der Bastler aber keinen
Gewinn damit machen. Eine kommerzielle Fertigung oder Verwertung ist nur
mit meiner schriftlichen Zustimmung erlaubt. Über eine kleine Spende in
Höhe von 5DM von jedem zufriedenen Nutzer würde ich mich freuen. Warum?
RSVE habe ich zuerst mal für mich selbst entwickelt (egoistisch, nicht?).
Das Erstellen einer mailboxversandfähigen Version der Dokumentation war mit
einem nicht unerheblichen Zeitaufwand verbunden.

Ich habe diese Bauanleitung sorgfältig überprüft. Ich hafte in keiner Weise
für eventuelle Fehler und/oder (daraus resultierende) Beschädigungen
irgendwelcher Objekte oder Subjekte.

In diesem Paket sind alle Informationen zu RSVE enthalten. Außer dem Layout
als Ultimade-PCB-Datei habe ich auch nicht mehr.
Schriftliche Anfragen werden nur beantwortet, wenn ein frankierter
Rückumschlag beiliegt.
Ich bin im Mausnetz unter
Harun Scheutzow @B
zu erreichen. Meine Postanschrift lautet:
Harun Scheutzow
Dresdener Straße 83
O-1020 Berlin


## Inhalt des Paketes

|RSVE_GAL.JED   |Jedec-Fusedatei für das GAL|
|RSVE_GAL.TXT   |Logikgleichungen in Textform mit Kommentaren|
|RSVE_DOC.TXT   |diese Dokumentation|
|BEST*.IMG      |Bestückungsplan 1:1|
|USUNG*.IMG     |Leiterzüge der Leiterseite, gesehen von der Bestückungsseite aus, Maßstab 1:1|
|US*.IMG        |Leiterseite im Maßstab 1:1 als Sicht auf die Kupferfläche|

Die Dateien mit der Endung IMG sind schwarz/weiß-GEM-Image Dateien. Das "*"
steht für die jeweilige Auflösung in dpi, also 300 für 300dpi (geeignet für
Laserdrucker und Tintenstrahler) und 360 für 360dpi (geeignet für 24Nadler).

Alle Lötaugen und Leiterzüge sind jetzt extra breit angelegt.


## Langsamkeit der ST-Computer mit TOS

Bei Geschwindigkeiten über 19200Bd gibt es ein generelles Problem mit dem
Betriebssystem des ST und den DFÜ-Programmen. Wenn ein Programm im Polling
den MFP bedient, kann problemlos eine Datenrate von 115200Bd ausgenutzt
werden, indem wirklich 11520cps (Character per Second) übertragen werden.
Werden jedoch die BIOS-I/O-Routinen benutzt, so kann ein 8MHz ST bei
ZMODEM-Senden maximal 2500cps und beim Empfangen 2000cps erreichen. Wenn
der RTS/CTS-Patch/Optimierer TURBOCTS installiert wurde, erhöhen sich diese
Werte auf 3000cps. Es muß bei 38400Bd also immer der RTS/CTS-Handshake
genutzt werden, da der ST beim Empfangen sonst Zeichen verlieren würde.
Immerhin erlauben die Interruptroutinen des ST noch eine Baudrate von
38400, indem sie rechtzeitig die Zeichen abholen, im Puffer ablegen und bei
vollem Puffer der Gegenstelle das Senden verbieten. Eine Übertragung mit
57600 und 115200 ist jedoch selbst für die Interruptroutinen zu schnell,
sie schaffen es nicht, rechtzeitig die eintreffenden Zeichen abzuholen oder
der Gegenstelle das Senden zu verbieten.

Wenn ein 16MHz-Speeder installiert ist (z.B. serienmäßig im MegaSTE), so
sind auch 38400Bd mit etwa 3000cps möglich (oder noch mehr mit TURBOCTS).


## Zum Bestückungsplan

### Benötigte Bauteile

* Quarzoszillator 1.8432MHz
* Zähler 74HC4040 (der normale CMOS 4040 ist zu langsam!)
* GAL 16v8, programmiert für RSVE
* Keramikkondensator 100nF, 2 Stück
* optional: Widerstand 1kOhm, Leuchtdiode

Der 74HC4040 ist wirklich auf der Leiterseite einzusetzen! Deshalb ist
seine Bezeichnung im Bestückungsplan gespiegelt geschrieben.

### Anschlüsse der Schaltung

|+5V   |an +5V im Computer|
|GND   |an GND im Computer|
|LED+  |Anode der Anzeige-LED|
|LED-  |Katode der Anzeige-LED|
|TID   |an Pin16 des MFP|
|TUA   |an Pin7 oder Pin10 des MFP|

Die Anzeige-LED leuchtet, sobald eine der hohen Baudraten erzeugt wird.

Der MFP hat normalerweise den Aufdruck MC68901. Alle hier angegebenen
Pin-Nummern beziehen sich auf den 48poligen MFP im DIL-Gehäuse. Wenn ein
52poliger MFP im Quadpack-Gehäuse vorhanden ist, wie z.B. im TT, so gilt
folgende Zuordnung der Pin-Nummern:

|48pol.  |52pol.|
|Pin7    |Pin8|
|Pin10   |Pin11|
|Pin16   |Pin18|

Am MFP sind auf der Computerplatine Pin7, Pin10 und Pin16 untereinander
verbunden. Die Verbindung zwischen Pin7 und Pin10 muß erhalten bleiben, die
Verbindung dieser beiden Pins zu Pin16 muß aber aufgetrennt werden. Wenn
die entsprechende Leiterbahn nicht auffindbar ist, kann Pin16 auch direkt
über der Computerplatine durchtrennt werden.


## Baudraten

Hier nochmal die ohne RSVE möglichen Baudraten:
* 19200, 9600, 4800, 2400, 2000, 1800, 1200,600, 300, 200, 150, 134, 110,
* 75 (das TOS stellt aber 120 ein!!!),
* 50 (das TOS stellt aber 80 ein!!!)

RSVE konvertiert folgende Baudraten:
* 150 (eingestellt) -> 115200 (real)
* 134 (eingestellt) ->  57600 (real)
* 110 (eingestellt) ->  38400 (real)


## Technische Kurzerklärung

TID ist der Timer D Ausgang des MFP, der normalerweise den Baudratentakt
lieferte. Dieser ist 16mal so groß wie die Baudrate.

Gal liefert für 38400Bd sowieso immer 614400Hz (müßte nicht sein, ist aber
nützlich, wird deshalb nicht wegoptimiert). Damit wird ein 12Bit-Zähler
74HC4040 betrieben (von dem nur die unteren acht Bit ausgewertet werden),
solange TID L ist.

|Baud  |Impulse  |Fangbereich  |Wirkung          |BD1   |BD2|
|---   |---      |---          |---              |---   |---|
|200   | 96      |             |alte Baudraten   | L    | L |
|150   |128      |112..135     |115200Bd ein     | H    | L |
|134   |143      |136..159     | 57600Bd ein     | H    | H |
|110   |174      |160..223     | 38400Bd ein     | L    | H |

Baudraten 75 und 50 nicht setzen, da das TOS diese falsch einstellt. Wenn
man sie direkt richtig einsetzt, werden aus 75Bd (256Impulse mod 256 = 0)
immer 75Bd und aus 50Bd (384Impulse mod 256 = 128) immer 115200Bd.

Alle Fangbereich-Grenzwerte sind durch 8 teilbar. Die unteren drei Bit des
Zählers werden deshalb nicht ausgewertet.

Zwei Trick-Register speichern den Zählerstand bei der TID L/H-Flanke. BD1
wird für 112..157 und BD2 für 136..223 aktiv (H).

Je nach Trickregisterinhalt wird TID, T1 (Quarztakt), T2 (Quarz/2) oder T3
(Quarz/3) an den Ausgang TUA gelegt.


## Schlußbemerkung

Ich wünsche einige frohe Bastelstunden. Meine Adresse ist unter "Copyright"
zu finden.

Eine kleinere Leiterplatte (nur 33mm*33mm), das programmierte GAL, andere
Einzelteile und den komplett aufgebauten RSVE gibt es auch bei mir. Wer
nicht soviel selbst basteln will, kann Arbeit sparen und stattdessen Geld
ausgeben. Preise teile ich auf Anfrage mit.

Berlin, 28.11.1992, 01.02.1993

Harun Scheutzow
