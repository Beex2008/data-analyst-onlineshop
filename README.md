# Data Analyst – Online Shoppers Purchasing Intention

Projekt zur Analyse von Nutzerverhalten und Kaufabschluss-Vorhersage auf Basis des **Online Shoppers Purchasing Intention**-Datensatzes (UCI Machine Learning Repository). Enthalten sind ein KNIME-Workflow (Feature Engineering, XGBoost-Modell), eine Power-BI-Visualisierung sowie die zugehörige Berichtsdokumentation.

---

## GitHub Pages (Präsentation)

Die **Projektpräsentation** kann als Website gehostet werden:

1. Repo auf GitHub pushen.
2. **Settings → Pages** öffnen.
3. Unter **Source**: „Deploy from a branch“ wählen.
4. **Branch**: `main` (oder dein Standard-Branch), **Folder**: **/docs**.
5. Speichern – nach kurzer Zeit ist die Präsentation unter  
   `https://<username>.github.io/<repo-name>/` erreichbar.

Die Inhalte für die Seite liegen im Ordner `docs/` (Standalone-Kopie der Presentation inkl. aller Bilder).

---

## Dataset

| | |
|---|---|
| **Quelle** | UCI Machine Learning Repository |
| **Titel** | Online Shoppers Purchasing Intention Dataset |
| **Autoren** | Sakar, C.; Kastro, Yomi (2018) |
| **DOI** | [10.24432/C5F88Q](https://doi.org/10.24432/C5F88Q) |

### Download

- **Direktlink (ZIP):**  
  [Online Shoppers Purchasing Intention Dataset (ZIP)](http://archive.ics.uci.edu/static/public/468/online+shoppers+purchasing+intention+dataset.zip)

- **UCI-Datensatzseite:**  
  [archive.ics.uci.edu/dataset/468](https://archive.ics.uci.edu/dataset/468)

Die Nutzung der Daten unterliegt den Bedingungen des UCI Machine Learning Repository.

---

## Voraussetzungen

### Software

- **KNIME Analytics Platform** (Version ≥ 5.8.0)
- **Power BI Desktop**

### Datensatz

- Zugriff auf das Originaldataset (siehe Links oben).  
  Nach dem Import des KNIME-Workflows ggf. den Dateipfad im CSV-Reader-Node auf die lokale Datei `online_shoppers_intention.csv` setzen.

### Kenntnisse

- Data Analytics & Feature Engineering
- Klassifikationsmodelle (baum-basiert)
- Modellbewertung (Accuracy, ROC, Cohen’s Kappa)
- Umgang mit Klassenungleichgewicht

### Hardware (empfohlen)

- Mind. 4 GB RAM  
- Mind. 2 GB freier Speicherplatz  
- Ausreichende CPU

---

## Datensatz & Zielvariable

| | |
|---|---|
| **Beobachtungseinheit** | User-Session |
| **Umfang** | ca. 12.330 Sessions |
| **Zielvariable** | `purschase_done` ∈ {Buy, NoBuy} |

*Hinweis:* Die Schreibweise `purschase_done` wird aus Projektkonsistenz beibehalten.

---

## Feature Engineering

Aus den Rohdaten werden u. a. folgende Session-Merkmale abgeleitet:

- `total_page_count`, `total_duration`, `avg_time_per_page`
- `product_page_count`, `product_page_duration`, `product_share`
- `VisitorType`, `Weekend`

Ziel: vergleichbare Beschreibung von Sessions unabhängig von der Session-Länge.

---

## KNIME-Workflow

Der Workflow ist modular aufgebaut:

1. Datenimport und Bereinigung  
2. Explorative Datenanalyse  
3. Feature Engineering  
4. Train/Test-Split  
5. Modelltraining (XGBoost)  
6. Prediction und Evaluation  
7. Export der Ergebnisse  

---

## Modellierung

- **Modelltyp:** XGBoost (Tree Ensemble), geeignet für tabellarische Daten und nichtlineare Zusammenhänge  

**Zentrale Parameter:**

- Boosting Rounds: 350  
- Learning Rate: 0.05  
- Max Depth: 5  
- Subsample: 0.8  
- Seed: 42  

---

## Evaluation

- Accuracy  
- Error Rate  
- Cohen’s Kappa  
- ROC-Kurve  

---

## Outputs

- **Gesamtdatensatz.csv** – finaler Feature-Datensatz  
- **XGBoost_Modell.csv** – Predictions und Wahrscheinlichkeiten  
- **Power BI** – ergibt ein **Dashboard** zur Visualisierung (basierend auf den obigen CSV-Exporten)

---

## Power BI

Der Output von Power BI ist ein **Dashboard**. Es unterstützt:

- Analyse der Conversion Rate nach Segmenten  
- Interpretation relevanter Features  
- Bewertung der Modellvorhersagen  

---

## Reproduzierbarkeit

1. KNIME installieren  
2. `project.knar` importieren  
3. Dataset herunterladen (Link oben) und ggf. Pfad im Workflow anpassen  
4. Workflow vollständig ausführen  

---

## Präsentation (Reveal.js)

Im Ordner **`presentation/`** liegt eine Reveal.js-Präsentation mit dem kompletten Projekt-Workflow:

- **Datei:** `presentation/index.html`
- **Struktur (6 Teile):**
  1. **Präsentation des Projekts** – Ist-Analyse, User Stories, Hypothesen
  2. **Projektmanagement** – Organisation, Kanban, Gantt, Aufwände
  3. **KNIME** – Workflow aus `knime/project.knar` (Gesamt-SVG + Schritte 1–4 interaktiv)
  4. **Power BI** – Dashboard `power-bi/visualisation.pbix`, KPIs, Visualisierungen
  5. **Ergebnisse** – Evaluation, ROC, ML Canvas, Outputs
  6. **Maßnahmen** – Handlungsempfehlungen (Produktinteraktion, Content, Zielbild)
- **Design:** Eigenes Styling (DM Sans, JetBrains Mono, Akzentfarbe), Part-Divider-Folien für jeden der 6 Teile, Fragments für schrittweise Einblendung.

**Starten:** `index.html` in einem Browser öffnen (z. B. per Doppelklick oder über einen lokalen Webserver). Reveal.js wird per CDN geladen, Internetverbindung empfohlen.

---

## Lizenz & Datenquelle

Die Nutzung der Daten unterliegt den Bedingungen des [UCI Machine Learning Repository](https://archive.ics.uci.edu/).  
