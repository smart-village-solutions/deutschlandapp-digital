# Prompt: Rebuild "Deutschland.App" (Structure + Content only, no styles)

Ziel: Baue die einseitige Website "Deutschland.App" neu, ohne jegliche Style‑Information. Verwende ein beliebiges Design‑System. Übernimm Informationsarchitektur, Texte, Links, Semantik und Interaktionen.

## Global
- Sprache: de-DE
- Seitenname/Brand: Deutschland.App
- Head-Meta:
  - title: "Deutschland.App – Bürger‑App, Smart City App, digitale Daseinsvorsorge"
  - meta description: "Die föderale Deutschland.App: offene, modulare Bürger‑App auf Basis der Smart Village App. Krisenkommunikation, Partizipation, Effizienz in der Verwaltung – digital souverän, offen und nah an den Menschen."
  - canonical: https://deutschlandapp.digital/
  - robots: index, follow
  - Favicon: /favicon.png (optional Fallbacks: /favicon.svg, /favicon.ico)
  - JSON-LD (schema.org): Organization, WebSite, WebPage wie in /index.html hinterlegt
- Struktur: Single-Page mit Sprungmarken (Anchors)

## Header
- Link "Deutschland.App" (zur Sektion #top)
- Navigation (Anchors in dieser Reihenfolge):
  1. Vorteile (#vorteile)
  2. Vergleich (#vergleich)
  3. Partizipation (#partizipation)
  4. Effizienz (#effizienz)
  5. Baukasten (#baukasten)
  6. Zukunft (#zukunft)
  7. Best Practice (#bestpractice)
  8. Empfehlungen (#empfehlungen)
  9. Kontakt (#kontakt)

## Sektion: Hero (#top)
- H1: "Die föderale Deutschland.App – digital souverän, offen und nah an den Menschen"
- Einleitungstext: "Eine offene, modulare Bürger‑App als Brücke zwischen Verwaltung, Zivilgesellschaft und Nachbarschaft – inspiriert von der Smart Village App und getragen von Interkommunalität."
- Primäre Aktionen:
  - Link "Mehr erfahren" → #vorteile
  - Externer Link "Best Practice entdecken" → https://smart-village.app (neuem Tab)
  - Link "Kontakt aufnehmen" → #kontakt
- Bild: thematisches Stadt-/Deutschland‑Motiv (Alt: "Abendliche Skyline von Frankfurt am Main – Sinnbild für moderne, digitale Städte")

## Sektion: Vorteile (#vorteile)
- H2: "Bürger‑App als Rückgrat in Krisen und im Alltag"
- Unterzeile: "Direkter Kanal, kontextsensitive Dienste und proaktive Kommunikation – weit mehr als eine Webseite oder Social Media."
- Bild: Alt "Bürger nutzt Smartphone – Push‑Benachrichtigungen und mobile Verwaltung"
- Drei Vorteile (je ein Titel + Text):
  1) "Krisenkommunikation in Echtzeit" – Fall Hagenow, Push‑Infos, Lageupdates, kartenbasierte Umfahrung, Vertrauen durch Tempo/Transparenz.
  2) "Alltagstools, die wirklich helfen" – Abfallkalender (Erinnerung), Veranstaltungen, Mängelmelder, Mitfahrbörse, Ehrenamt; personalisiert/kontextbezogen.
  3) "Souveräne Reichweite" – eigener datenschutzkonformer Kanal ohne Werbe‑Abhängigkeit.
- Kennzahlen:
  - 95% Smartphone‑Nutzung 14–39 (Statista, 2025)
  - 59% nutzen Mobile für E‑Government (Initiative D21, 2024)
  - 44% würden "alles in einer App erledigen" (16–34)

## Sektion: Vergleich (#vergleich)
- H2: "Warum ein föderaler Baukasten besser ist als eine zentrale Einheits‑App"
- Unterzeile: "Offen, modular, standard‑konform und lokal anpassbar statt starr, teuer und überkomplex. Kommunen behalten Souveränität – bei geringeren Kosten und höherer Praxistauglichkeit."
- Spaltenvergleich:
  - Pro: "Föderaler App‑Baukasten"
    - Punkte: Open Source & gemeinsame Weiterentwicklung; Module nach Bedarf; Standard‑Schnittstellen (z. B. OParl, DCAT‑AP.de, OAuth/OIDC); lokal konfigurierbar, barrierearm, interoperabel; interkommunale Beschaffung & Betrieb.
  - Contra: "Zentrale Einheits‑App"
    - Punkte: Hohe Komplexität/geringe Praxistauglichkeit; Vendor‑Lock‑in; teure Individualisierung/lange Releases; wenig Raum für lokale Besonderheiten; schwer skalierbare Governance.
- Aktionen: "Austausch starten" → #kontakt; "Zum Baukasten" → #baukasten
- Bild: Alt "Puzzleteile – Sinnbild für modulare Lösungen und passgenaue Kombinationen"

## Sektion: Partizipation (#partizipation)
- H2: "Partizipation mit System: die Partizipationspyramide"
- Unterzeile: "Von Information bis Mitentscheidung – die App bildet alle Stufen ab und stärkt Engagement."
- Liste (Stufen 1–7):
  1) Informieren & sich informieren (News, Ratsinfos, Push, Chatbot‑Suche)
  2) Meinung erfragen & Stellung nehmen (Umfragen, Stimmungsbarometer)
  3) Lebensweltexpertise (Mängelmelder & Beiträge)
  4) Mitbestimmen (Bauleitplanung, Bürgerbudget, Abstimmungen)
  5) Selbstverantwortung (Organisation von Angeboten)
  6) Entscheidungsmacht übertragen (Freiwilligen‑Netzwerke, Regeln)
  7) Eigenaktivitäten (Schwarzes Brett, Vernetzung)
- Aktionen: "Pilot starten" → #kontakt; "Beispiel ansehen" → #bestpractice
- Bild: Alt "Menschen im öffentlichen Raum – Partizipation im Alltag"

## Sektion: Effizienz (#effizienz)
- H2: "Effizienzgewinne und Entlastung der Verwaltung"
- Unterzeile: "Automatisierte Datenflüsse statt Doppelpflege. Services, die Zeit und Kosten sparen."
- Bild: Alt "Analytics‑Dashboard – automatisierte Datenflüsse und Effizienz in der Verwaltung"
- Drei Kacheln:
  - "Digitale Abfallwirtschaft" – adressgenaue Benachrichtigungen, personalisierte Kalender.
  - "Bekanntmachungen digital" – digitale Veröffentlichung, Stelen vor Ort, bessere Reichweite.
  - "Schnittstellen nutzen" – Ratsinfos/Events/Meldungen automatisiert importieren; Low‑Code & KI‑gestützt.

## Sektion: Risiken (#risiken)
- H2: "Risiken & Herausforderungen"
- Unterzeile: "Pflegeaufwand, Akzeptanz, Datenschutz – lösbar mit Strategie und Kooperation."
- Liste: Planung/Betrieb/Erfolgskontrolle; interkommunal Ressourcen bündeln; DSGVO & Security by Design; App ergänzend zu Web/analog.
- Hinweisblöcke:
  - "Studienlage": BBSR (2025), CIMA (2022), WIK (2021), Statista – Nutzen & Effizienz.
  - "Use‑Case Hagenow": proaktive Push‑Kommunikation, Kartenmodule.
- Bild: Alt "Umleitungsschild – Risiken und Herausforderungen rechtzeitig erkennen"

## Sektion: Baukasten (#baukasten)
- H2: "Offenes, föderales App‑Baukastenmodell"
- Unterzeile: "Open Source, Modularität und Interkommunalität – die Grundlage digitaler Souveränität."
- 4 Features: Open Source; Modularität; Interkommunalität; Skalierbarkeit (je Titel + kurzer Text)
- Aktionen: "Gespräch vereinbaren" → #kontakt; externer Link "Smart Village App" → https://smart-village.app
- Bild: Alt "Open‑Source‑Kollaboration – Basis des föderalen Baukastens"
- Architekturliste: Core, Module, Integrationen, Governance (je Kurzbeschreibung)

## Sektion: Best Practice (#bestpractice)
- H2: "Best Practice: Smart Village App als Blaupause"
- Unterzeile: "Seit 2018 im Einsatz – modular, offen, praxiserprobt. Übertragbar."
- Aktionen: externer Link "Website besuchen" → https://smart-village.app; "Transfer prüfen" → #kontakt

## Sektion: Zukunft (#zukunft)
- 3 Karten mit Titeln + Texten:
  - "KI in der App" – LLM‑Assistenten durchsuchen Ratsinfos, unterstützen Formulare, beantworten Routinefragen.
  - "Bund‑ID & EUDI‑Wallet" – sicherer Login; Nachweise in Wallet; App als lokaler Zugang.
  - "Deutschland‑Stack" – Bürger‑App als Frontend‑Modul des Plattformkerns.
- Zu jeder Karte ein Bild mit Alt‑Text (siehe Original).

## Sektion: Empfehlungen (#empfehlungen)
- H2: "Handlungsempfehlungen für Kommunen"
- Unterzeile: "Pragmatisch starten, Wirkung messen, iterativ ausbauen."
- Geordnete Liste (1–5): Bürgernähe; Synergien/Open‑Source; Ökosysteme/Schnittstellen; Datensouveränität; Resiliente Kommunikation (Push)

## Sektion: Kontakt (#kontakt)
- H2: "Kontakt aufnehmen"
- Unterzeile: "Fragen, Anregungen, Pilot? Nachricht senden."
- Kontaktformular (Name, E‑Mail, Nachricht). Verhalten: bei Absenden Mailto öffnen:
  - Empfänger: deutschland.app@smart-village.solutions
  - Betreff: "Kontakt Deutschland.App – {Name|Anfrage}"
  - Body: Name, E‑Mail, Nachricht (jeweils in separaten Zeilen)
- Direktlink E‑Mail: mailto:deutschland.app@smart-village.solutions
- Seitenleiste: "Zitierte Quellen" (Links zu Statista, eGovernment MONITOR 2024, CIMA 2022, BBSR 2025, WIK 2021)

## Footer
- Links: "Kontakt" → #kontakt; extern "Smart Village App" → https://smart-village.app
- Impressum (vollständig):
  - Smart Village Solutions SVS GmbH; Klein Glien 25; 14806 Bad Belzig; Deutschland
  - Tel.: 033841-63969-0; E‑Mail: info@smart-village.solutions
  - Registergericht: Amtsgericht Potsdam; Registernummer: HRB 34248
  - Geschäftsführer/in: Philipp Wilimzig & Erik Hildenbrand
  - USt‑ID: DE265570015
  - Verantwortliche/r i.S.d. § 18 Abs. 2 MStV: Philipp Wilimzig
- Bildquellen (Pexels‑Nachweise; Alt‑Texte wie oben): IDs 1398005, 6009077, 3852577, 33675980, 34069, 12769934, 11035544, 8849295, 32642484, 1398005
- Verweise: /sitemap.xml, /robots.txt, /llms.txt

## Nicht-funktionale Anforderungen
- Keine Styles/Framework‑Klassen übernehmen; nutze semantisches HTML (header, nav, main, section, h1–h3, ul/ol, footer, form/label/input/textarea/button, picture/img mit alt).
- Saubere Landmark‑Struktur, sinnvolle Überschriftenhierarchie, zugängliche Form‑Labels.
- Interne Navigation via Ankerlinks; externe Links mit target=_blank und rel=noopener.

## Ausgaben
- Eine Single‑Page mit obiger Struktur und Inhalten.
- Head enthält Meta‑Tags, Favicon‑Links und JSON‑LD.
- Statische Dateien (robots.txt, sitemap.xml, llms.txt) können verlinkt werden.
