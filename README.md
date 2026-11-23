# JTL Theme Editor

Theme Editor für JTL-Shop 5 zum Bearbeiten von CSS-, Sass- und Less-Dateien eines Themes im Shop-Backend. Diese Version wurde von Themeart GmbH überarbeitet.

## Funktionen

- Eine vorhandene `custom.css` des gewählten Themes wird zuerst angezeigt. Sie kann direkt bearbeitet und gespeichert werden; eine Kompilierung ist dafür nicht nötig.
- Sass- und Less-Dateien lassen sich bearbeiten. Änderungen können als einzelne Datei oder als ganzes Theme kompiliert werden.
- Der Editor zeigt die geöffnete Datei und ungespeicherte Änderungen an und warnt vor dem Verwerfen solcher Änderungen.
- Die Oberfläche folgt dem hellen, dunklen oder automatischen Design des Shop-Backends.
- Editor-Anfragen laufen über die Backend-Route von JTL-Shop. Dadurch ist keine direkte PHP-Freigabe im Plugin-Verzeichnis für nginx erforderlich.

## Installation

Den Inhalt dieser Repository als Ordner `jtl_theme_editor` unter `plugins/` im Shop ablegen und das Plugin im Backend installieren oder aktualisieren. Vor dem Ersetzen einer bestehenden Installation sollten eigene Anpassungen und Theme-Dateien gesichert werden.

Die `info.xml` deklariert JTL-Shop 5.6.0 als Mindestversion. Die Änderungen wurden anhand des Quellcodes von JTL-Shop 5.8.4 geprüft; ein Test in einem laufenden Shop ist noch offen.

## Verwendung

Im Backend den **Theme Editor** öffnen und ein Theme wählen. Falls das Theme bereits eine `custom.css` besitzt, wird diese zuerst geöffnet. Für einfache CSS-Anpassungen die Datei bearbeiten und **Datei speichern** wählen.

Bei Sass- oder Less-Dateien speichert **Datei speichern** nur die Quelldatei. **Datei kompilieren** erzeugt CSS aus der geöffneten Datei; **Theme kompilieren** kompiliert das gewählte Theme. Der Webserver benötigt Schreibrechte für die betroffenen Theme-Dateien und erzeugten CSS-Dateien. Globale Rechte wie `777` sind dafür nicht erforderlich.

## Lizenz und Herkunft

MIT-Lizenz. [LICENSE](LICENSE) enthält den Hinweis von Themeart GmbH; [LICENSE.md](LICENSE.md) bewahrt den ursprünglichen Copyright- und Lizenzhinweis von JTL-Software-GmbH. Die Änderungen dieser Version stehen im [Changelog](CHANGELOG.md).
