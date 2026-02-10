
---

## Prerequisites 

Um dieses Projekt auszuführen, nachzuvollziehen oder weiterzuentwickeln, müssen folgende Voraussetzungen erfüllt sein.

### Software
- KNIME Analytics Platform (Version ≥ 5.8.0)
- Power BI Desktop

### Datensatz
- Zugriff auf das Originaldataset (UCI Repository)

Hinweis:  
Nach dem Import des KNIME-Workflows kann es notwendig sein, den Dateipfad im CSV Reader Node neu zu setzen.

### Grundlagen
- Grundlagen in Data Analytics & Feature Engineering
- Klassifikationsmodelle (Tree-based Models)
- Modellbewertung (Accuracy, ROC, Cohen’s Kappa)
- Verständnis für Klassenungleichgewicht

### Hardware (empfohlen)
- Mindestens 4 GB RAM
- Mindestens 2 GB freier Speicherplatz
- CPU ausreichend

---

## Datensatz & Zielvariable

- Beobachtungseinheit: User-Session
- Ursprünglicher Umfang: ca. 12.000 Sessions
- Zielvariable: `purschase_done` ∈ {Buy, NoBuy}

Hinweis:  
Die Schreibweise `purschase_done` wird aus Konsistenzgründen im Projekt beibehalten.

---

## Feature Engineering

Aus den Rohdaten werden robuste Session-Merkmale abgeleitet, unter anderem:
- total_page_count
- total_duration
- avg_time_per_page
- product_page_count
- product_page_duration
- product_share
- VisitorType und Weekend

Ziel ist eine vergleichbare Beschreibung von Sessions unabhängig von ihrer Länge.

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

- Modelltyp: XGBoost Tree Ensemble
- Geeignet für tabellarische Daten und nichtlineare Zusammenhänge

Zentrale Parameter:
- Boosting Rounds: 350
- Learning Rate: 0.05
- Max Depth: 5
- Subsample: 0.8
- Seed: 42

---

## Evaluation

Bewertet wird das Modell anhand von:
- Accuracy
- Error Rate
- Cohen’s Kappa
- ROC-Kurve

---

## Outputs

- Gesamtdatensatz.csv – finaler Feature-Datensatz
- XGBoost_Modell.csv – Predictions und Wahrscheinlichkeiten

Diese Outputs dienen als Grundlage für die Power-BI-Visualisierung.

---

## Power BI

Das Dashboard ermöglicht:
- Analyse der Conversion Rate nach Segmenten
- Interpretation relevanter Features
- Bewertung der Modellvorhersagen

---

## Reproduzierbarkeit & Weiterentwicklung

**Ausführung**
1. KNIME installieren
2. project.knar importieren
3. Workflow vollständig ausführen

---

## Lizenz
Die Nutzung der Daten unterliegt den Bedingungen des UCI Machine Learning Repository.
