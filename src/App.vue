<script setup lang="ts">
import { ref, reactive } from 'vue'

const mobileNavOpen = ref(false)
const contactForm = reactive({
  name: '',
  email: '',
  message: '',
})

function submitContactForm() {
  const subject = `Kontakt Deutschland.App – ${contactForm.name || 'Anfrage'}`
  const body = [
    `Name: ${contactForm.name}`,
    `E-Mail: ${contactForm.email}`,
    '',
    'Nachricht:',
    contactForm.message,
  ].join('\n')
  const mailto = `mailto:deutschland.app@smart-village.solutions?subject=${encodeURIComponent(subject)}&body=${encodeURIComponent(body)}`
  window.location.href = mailto
}
</script>

<template>
  <div class="min-h-screen font-sans text-slate-900">
    <!-- Header -->
    <header class="sticky top-0 z-40 bg-white/80 backdrop-blur supports-[backdrop-filter]:bg-white/60 border-b border-slate-200/60">
      <div class="container flex items-center justify-between py-3">
        <a href="#top" class="inline-flex items-center gap-2">
          <span class="inline-block h-8 w-8 rounded-lg bg-brand/10 ring-1 ring-brand/20 grid place-items-center">
            <svg viewBox="0 0 24 24" class="h-5 w-5 text-brand" fill="currentColor" aria-hidden="true">
              <path d="M4 7h16v2H4zM4 11h16v2H4zM4 15h10v2H4z" />
            </svg>
          </span>
          <span class="text-base font-semibold tracking-tight">Deutschland.App</span>
        </a>
        <nav class="hidden md:flex items-center gap-6 text-sm">
          <a href="#vorteile" class="hover:text-brand">Vorteile</a>
          <a href="#partizipation" class="hover:text-brand">Partizipation</a>
          <a href="#effizienz" class="hover:text-brand">Effizienz</a>
          <a href="#vergleich" class="hover:text-brand">Vergleich</a>
          <a href="#baukasten" class="hover:text-brand">Baukasten</a>
          <a href="#zukunft" class="hover:text-brand">Zukunft</a>
          <a href="#bestpractice" class="hover:text-brand">Best Practice</a>
          <a href="#empfehlungen" class="hover:text-brand">Empfehlungen</a>
          <a href="#kontakt" class="ml-2 inline-flex items-center rounded-md bg-brand px-3 py-2 font-medium text-white shadow-soft hover:bg-brand-dark">Kontakt</a>
        </nav>
        <button class="md:hidden inline-flex h-10 w-10 items-center justify-center rounded-md ring-1 ring-slate-300" @click="mobileNavOpen = !mobileNavOpen" aria-label="Menü">
          <svg v-if="!mobileNavOpen" class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M4 7h16M4 12h16M4 17h16"/></svg>
          <svg v-else class="h-5 w-5" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round"><path d="M6 6l12 12M6 18L18 6"/></svg>
        </button>
      </div>
      <div v-if="mobileNavOpen" class="md:hidden border-t border-slate-200/60">
        <div class="container grid gap-2 py-3 text-sm">
          <a href="#vorteile" class="py-1" @click="mobileNavOpen=false">Vorteile</a>
          <a href="#partizipation" class="py-1" @click="mobileNavOpen=false">Partizipation</a>
          <a href="#effizienz" class="py-1" @click="mobileNavOpen=false">Effizienz</a>
          <a href="#vergleich" class="py-1" @click="mobileNavOpen=false">Vergleich</a>
          <a href="#baukasten" class="py-1" @click="mobileNavOpen=false">Baukasten</a>
          <a href="#zukunft" class="py-1" @click="mobileNavOpen=false">Zukunft</a>
          <a href="#bestpractice" class="py-1" @click="mobileNavOpen=false">Best Practice</a>
          <a href="#empfehlungen" class="py-1" @click="mobileNavOpen=false">Empfehlungen</a>
          <a href="#kontakt" class="py-1 font-medium text-brand" @click="mobileNavOpen=false">Kontakt</a>
        </div>
      </div>
    </header>

    <!-- Hero -->
    <section id="top" class="relative overflow-hidden bg-gradient-to-br from-slate-50 via-white to-slate-50">
      <div class="absolute inset-0 -z-10 opacity-40" aria-hidden="true">
        <svg class="h-full w-full" xmlns="http://www.w3.org/2000/svg">
          <defs>
            <radialGradient id="g" cx="50%" cy="50%" r="70%">
              <stop offset="0%" stop-color="#1F5ACF" stop-opacity="0.25" />
              <stop offset="60%" stop-color="#1F5ACF" stop-opacity="0.06" />
              <stop offset="100%" stop-color="#1F5ACF" stop-opacity="0" />
            </radialGradient>
          </defs>
          <rect width="100%" height="100%" fill="url(#g)" />
        </svg>
      </div>
      <div class="container grid gap-8 py-20 md:py-28 lg:py-36">
        <div class="max-w-3xl">
          <p class="mb-3 inline-flex items-center gap-2 rounded-full bg-brand/5 px-3 py-1 text-xs font-medium text-brand ring-1 ring-brand/20">
            Smart. Schnell. Sparsam.
            <span class="h-1 w-1 rounded-full bg-brand"></span>
            Bürger‑Apps für digitale Daseinsvorsorge
          </p>
          <h1 class="text-3xl font-bold leading-tight tracking-tight text-slate-900 sm:text-4xl md:text-5xl">
            Die föderale Deutschland.App – digital souverän, offen und nah an den Menschen
          </h1>
          <p class="mt-5 max-w-2xl text-base text-slate-600 md:text-lg">
            Eine offene, modulare Bürger‑App als Brücke zwischen Verwaltung, Zivilgesellschaft und Nachbarschaft – inspiriert von der Smart Village App und getragen von Interkommunalität.
          </p>
          <div class="mt-8 flex flex-wrap items-center gap-3">
            <a href="#vorteile" class="btn-primary">Mehr erfahren</a>
            <a href="https://smart-village.app" target="_blank" rel="noopener" class="btn-secondary">Best Practice entdecken</a>
            <a href="#kontakt" class="btn-ghost">Kontakt aufnehmen</a>
          </div>
        </div>
        <div class="relative mt-6">
          <picture>
            <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/1398005/pexels-photo-1398005.jpeg?auto=compress&cs=tinysrgb&w=1400&h=700&fit=crop" alt="Abendliche Skyline von Frankfurt am Main – Sinnbild für moderne, digitale Städte" class="w-full rounded-xl border border-slate-200 object-cover shadow-soft aspect-[16/9]" />
          </picture>
        </div>
      </div>
    </section>

    <!-- Vorteile / Rolle in Krisen & Alltag -->
    <section id="vorteile" class="section">
      <div class="container">
        <div class="mx-auto max-w-3xl text-center">
          <h2 class="section-title">Bürger‑App als Rückgrat in Krisen und im Alltag</h2>
          <p class="section-subtitle">Direkter Kanal, kontextsensitive Dienste und proaktive Kommunikation – weit mehr als eine Webseite oder Social Media.</p>
        </div>
        <div class="mt-8 overflow-hidden rounded-xl border border-slate-200">
          <picture>
            <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/6009077/pexels-photo-6009077.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop" alt="Bürger nutzt Smartphone – Push‑Benachrichtigungen und mobile Verwaltung" class="h-full w-full object-cover"/>
          </picture>
        </div>
        <div class="mt-10 grid gap-6 md:grid-cols-3">
          <div class="card">
            <div class="icon">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon">
                <path d="M0 0h24v24H0z" stroke="none"/>
                <path d="M10 5a2 2 0 0 1 4 0"/>
                <path d="M5 17h14l-1 -5a7 7 0 0 0 -12 0l-1 5"/>
                <path d="M13.73 21a2 2 0 0 1 -3.46 0"/>
                <path d="M21 8a2 2 0 0 0 -2 -2"/>
                <path d="M3 8a2 2 0 0 1 2 -2"/>
              </svg>
            </div>
            <h3 class="card-title">Krisenkommunikation in Echtzeit</h3>
            <p class="card-text">Fall Hagenow: per Push‑Nachricht informieren, Lageupdates teilen, Störungen kartenbasiert umfahren. Vertrauen entsteht durch Tempo und Transparenz.</p>
          </div>
          <div class="card">
            <div class="icon">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon">
                <path d="M11 6h9"/>
                <path d="M11 12h9"/>
                <path d="M11 18h9"/>
                <path d="M4 6l1 1 2 -2"/>
                <path d="M4 12l1 1 2 -2"/>
                <path d="M4 18l1 1 2 -2"/>
              </svg>
            </div>
            <h3 class="card-title">Alltagstools, die wirklich helfen</h3>
            <p class="card-text">Abfallkalender mit Erinnerung, Veranstaltungskalender, Mängelmelder, Mitfahrbörse, Ehrenamt & mehr – personalisierbar und kontextbezogen.</p>
          </div>
          <div class="card">
            <div class="icon">
              <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon">
                <path d="M12 3l8 4v5c0 5 -3.5 9 -8 10c-4.5 -1 -8 -5 -8 -10V7l8 -4"/>
                <path d="M9 12l2 2l4 -4"/>
              </svg>
            </div>
            <h3 class="card-title">Souveräne Reichweite</h3>
            <p class="card-text">Eigener, datenschutzkonformer Kanal statt Algorithmus‑Abhängigkeit. Keine Werbung Dritter, volle Kontrolle über Ansprache und Timing.</p>
          </div>
        </div>
        <div class="mt-8 grid gap-6 md:grid-cols-3">
          <div class="stat">
            <span class="stat-number">95%</span>
            <span class="stat-label">Smartphone‑Nutzung bei 14–39 Jahren (Statista, 2025)</span>
          </div>
          <div class="stat">
            <span class="stat-number">59%</span>
            <span class="stat-label">verwenden mobile Endgeräte für E‑Government (Initiative D21, 2024)</span>
          </div>
          <div class="stat">
            <span class="stat-number">44%</span>
            <span class="stat-label">würden „alles in einer App erledigen“ (16–34 Jahre)</span>
          </div>
        </div>
      </div>
    </section>

    <!-- Partizipation -->
    <section id="partizipation" class="section alt">
      <div class="container">
        <div class="grid items-start gap-10 lg:grid-cols-2">
          <div>
            <h2 class="section-title">Partizipation mit System: die Partizipationspyramide</h2>
            <p class="section-subtitle">Von Information bis Mitentscheidung – die App bildet alle Stufen ab und stärkt Engagement.</p>
            <ul class="mt-6 space-y-3 text-slate-700">
              <li><span class="bullet">1</span> Informieren & sich informieren: News, Ratsinfos, Push‑Hinweise, Chatbot‑Suche.</li>
              <li><span class="bullet">2</span> Meinung erfragen & Stellung nehmen: Umfragen, Stimmungsbarometer.</li>
              <li><span class="bullet">3</span> Lebensweltexpertise: Mängelmelder & Beiträge aus der Nachbarschaft.</li>
              <li><span class="bullet">4</span> Mitbestimmen: Bauleitplanung, Bürgerbudget, Abstimmungen.</li>
              <li><span class="bullet">5</span> Selbstverantwortung: eigenverantwortliche Organisation von Angeboten.</li>
              <li><span class="bullet">6</span> Entscheidungsmacht übertragen: Freiwilligen‑Netzwerke, Regeln gemeinsam setzen.</li>
              <li><span class="bullet">7</span> Eigenaktivitäten: digitales Schwarzes Brett, Vernetzung & Sichtbarkeit.</li>
            </ul>
            <div class="mt-6 flex flex-wrap gap-3">
              <a href="#kontakt" class="btn-primary">Pilot starten</a>
              <a href="#bestpractice" class="btn-ghost">Beispiel ansehen</a>
            </div>
          </div>
          <div class="grid gap-4 sm:grid-cols-2">
            <picture class="sm:col-span-2">
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/33675980/pexels-photo-33675980.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop" alt="Menschen im öffentlichen Raum – Partizipation im Alltag" class="w-full rounded-xl border border-slate-200 object-cover"/>
            </picture>
            <div class="stack-card"><span class="stack-step">1–3</span><h3>Vorstufen</h3><p>Transparente Information, Feedback & Beiträge aus der Lebenswelt.</p></div>
            <div class="stack-card"><span class="stack-step">4–7</span><h3>Partizipation</h3><p>Mitbestimmung bis Eigeninitiative – strukturiert in der App.</p></div>
            <div class="stack-card"><span class="stack-step">GovTech</span><h3>Open Government</h3><p>Offene Daten, einfache Suche, barrierearme Darstellung.</p></div>
            <div class="stack-card"><span class="stack-step">Community</span><h3>Zivilgesellschaft</h3><p>Vereine, Initiativen und Nachbarschaftsnetzwerke integrieren.</p></div>
          </div>
        </div>
      </div>
    </section>

    <!-- Effizienz -->
    <section id="effizienz" class="section">
      <div class="container">
        <div class="mx-auto max-w-3xl text-center">
          <h2 class="section-title">Effizienzgewinne und Entlastung der Verwaltung</h2>
          <p class="section-subtitle">Automatisierte Datenflüsse statt Doppelpflege. Services, die Zeit und Kosten sparen.</p>
        </div>
        <div class="mt-8 overflow-hidden rounded-xl border border-slate-200">
          <picture>
            <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/34069/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop" alt="Analytics‑Dashboard – automatisierte Datenflüsse und Effizienz in der Verwaltung" class="h-full w-full object-cover"/>
          </picture>
        </div>
        <div class="mt-10 grid gap-6 md:grid-cols-3">
          <div class="card"><div class="icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon"><path d="M4 7h16"/><path d="M10 11v6"/><path d="M14 11v6"/><path d="M5 7l1 12a2 2 0 0 0 2 2h8a2 2 0 0 0 2 -2l1 -12"/><path d="M9 7V4a1 1 0 0 1 1 -1h4a1 1 0 0 1 1 1v3"/></svg></div><h3 class="card-title">Digitale Abfallwirtschaft</h3><p class="card-text">Adressgenaue Benachrichtigungen, personalisierte Kalender, weniger Rückfragen.</p></div>
          <div class="card"><div class="icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon"><path d="M16 3h3a1 1 0 0 1 1 1v13a4 4 0 0 1 -4 4H6a4 4 0 0 1 -4 -4V7a4 4 0 0 1 4 -4h3"/><path d="M8 21V7a4 4 0 0 1 4 -4"/><path d="M12 8h8"/><path d="M12 12h8"/><path d="M12 16h8"/></svg></div><h3 class="card-title">Bekanntmachungen digital</h3><p class="card-text">Digitale Veröffentlichung, Stelen vor Ort, bessere Reichweite ohne Mehraufwand.</p></div>
          <div class="card"><div class="icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="ti-icon"><path d="M7 8h-2a3 3 0 0 0 0 6h2"/><path d="M17 8h2a3 3 0 0 1 0 6h-2"/><path d="M8 12h8"/></svg></div><h3 class="card-title">Schnittstellen nutzen</h3><p class="card-text">Ratsinfos, Veranstaltungen, Meldungen automatisiert importieren – Low‑Code & KI‑gestützt.</p></div>
        </div>
      </div>
    </section>

    <!-- Risiken -->
    <section id="risiken" class="section alt">
      <div class="container">
        <div class="grid gap-8 md:grid-cols-2">
          <div>
            <h2 class="section-title">Risiken & Herausforderungen</h2>
            <p class="section-subtitle">Pflegeaufwand, Akzeptanz, Datenschutz – lösbar mit Strategie und Kooperation.</p>
            <ul class="mt-6 space-y-3 text-slate-700">
              <li>Professionelle Planung, Betrieb und Erfolgskontrolle einplanen.</li>
              <li>Interkommunal Ressourcen bündeln, Kosten teilen, Know‑how sichern.</li>
              <li>DSGVO & Security by Design, Backend & Infrastruktur absichern.</li>
              <li>App nie exklusiv – immer ergänzend zu Web & analogen Kanälen.</li>
            </ul>
          </div>
          <div class="grid gap-4">
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/12769934/pexels-photo-12769934.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop" alt="Umleitungsschild – Risiken und Herausforderungen rechtzeitig erkennen" class="w-full rounded-xl border border-slate-200 object-cover"/>
            </picture>
            <div class="notice">
              <strong class="text-slate-900">Studienlage</strong>
              <p class="text-slate-700">BBSR (2025), CIMA (2022), WIK (2021) bestätigen Nutzen & Effizienz kommunaler Apps – bei strategischer Umsetzung.</p>
              <div class="mt-3 flex flex-wrap gap-3 text-sm">
                <a class="link" href="https://www.wik.org/" target="_blank" rel="noopener">WIK</a>
                <a class="link" href="https://www.cima.de/" target="_blank" rel="noopener">CIMA</a>
                <a class="link" href="https://www.bbsr.bund.de/" target="_blank" rel="noopener">BBSR</a>
                <a class="link" href="https://de.statista.com/" target="_blank" rel="noopener">Statista</a>
              </div>
            </div>
            <div class="notice">
              <strong class="text-slate-900">Use‑Case Hagenow</strong>
              <p class="text-slate-700">Proaktive Push‑Kommunikation und Kartenmodule halfen, eine außergewöhnliche Lage geordnet zu managen.</p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <!-- Vergleich: Baukasten vs zentrale Einheits‑App -->
    <section id="vergleich" class="section alt">
      <div class="container">
        <div class="grid items-start gap-10 lg:grid-cols-2">
          <div>
            <h2 class="section-title">Warum ein föderaler Baukasten besser ist als eine zentrale Einheits‑App</h2>
            <p class="section-subtitle">Offen, modular, standard‑konform und lokal anpassbar statt starr, teuer und überkomplex. Kommunen behalten Souveränität – bei geringeren Kosten und höherer Praxistauglichkeit.</p>
            <div class="mt-6 grid gap-4 md:grid-cols-2">
              <div class="compare-card pro">
                <h3 class="mb-1 font-semibold inline-flex items-center gap-2"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-5 w-5 text-emerald-600"><path d="M12 3l8 4v5c0 5 -3.5 9 -8 10c-4.5 -1 -8 -5 -8 -10V7l8 -4"/><path d="M9 12l2 2l4 -4"/></svg>Föderaler App‑Baukasten</h3>
                <ul class="pro-list">
                  <li><span class="dot"></span>Open Source & gemeinsame Weiterentwicklung</li>
                  <li><span class="dot"></span>Module nach Bedarf – Schritt für Schritt</li>
                  <li><span class="dot"></span>Standard‑Schnittstellen (z. B. OParl, DCAT‑AP.de, OAuth/OIDC)</li>
                  <li><span class="dot"></span>Lokal konfigurierbar, barrierearm, interoperabel</li>
                  <li><span class="dot"></span>Interkommunale Beschaffung und Betrieb</li>
                </ul>
                <div class="mt-3 flex flex-wrap gap-2 text-xs">
                  <span class="badge badge-good">Open Source</span>
                  <span class="badge badge-good">Modular</span>
                  <span class="badge badge-good">Standards</span>
                  <span class="badge badge-good">Anpassbar</span>
                </div>
              </div>
              <div class="compare-card con">
                <h3 class="mb-1 font-semibold inline-flex items-center gap-2"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="h-5 w-5 text-rose-600"><path d="M12 9v4"/><path d="M12 17v.01"/><circle cx="12" cy="12" r="9"/></svg>Zentrale Einheits‑App</h3>
                <ul class="con-list">
                  <li><span class="dot"></span>Hohe Komplexität oder geringe Praxistauglichkeit</li>
                  <li><span class="dot"></span>Vendor‑Lock‑in & geringe Weiterentwicklungsdynamik</li>
                  <li><span class="dot"></span>Teure Individualisierung, lange Release‑Zyklen</li>
                  <li><span class="dot"></span>Wenig Raum für lokale Besonderheiten</li>
                  <li><span class="dot"></span>Schwer skalierbare Governance</li>
                </ul>
                <div class="mt-3 flex flex-wrap gap-2 text-xs">
                  <span class="badge badge-bad">Monolith</span>
                  <span class="badge badge-bad">Lock‑in</span>
                  <span class="badge badge-bad">Teuer</span>
                </div>
              </div>
            </div>
            <div class="mt-6 flex flex-wrap gap-3">
              <a href="#kontakt" class="btn-primary">Austausch starten</a>
              <a href="#baukasten" class="btn-ghost">Zum Baukasten</a>
            </div>
          </div>
          <div>
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/3852577/pexels-photo-3852577.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800&fit=crop" alt="Puzzleteile – Sinnbild für modulare Lösungen und passgenaue Kombinationen" class="w-full rounded-xl border border-slate-200 object-cover shadow-soft aspect-[4/3]"/>
            </picture>
          </div>
        </div>
      </div>
    </section>

    <!-- Föderaler Baukasten -->
    <section id="baukasten" class="section">
      <div class="container">
        <div class="grid items-start gap-10 lg:grid-cols-2">
          <div>
            <h2 class="section-title">Offenes, föderales App‑Baukastenmodell</h2>
            <p class="section-subtitle">Open Source, Modularität und Interkommunalität – die Grundlage digitaler Souveränität.</p>
            <div class="mt-6 grid gap-4 sm:grid-cols-2">
              <div class="feature"><div class="feature-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M12 3a9 9 0 1 0 9 9"/><path d="M10 13a3 3 0 1 0 4 0a5 5 0 1 1 -4 0"/></svg></div><h3>Open Source</h3><p>Transparenz, Sicherheit, gemeinsame Weiterentwicklung, geringere Lock‑in‑Risiken.</p></div>
              <div class="feature"><div class="feature-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><rect x="4" y="4" width="7" height="7" rx="1"/><rect x="13" y="4" width="7" height="7" rx="1"/><rect x="4" y="13" width="7" height="7" rx="1"/><rect x="13" y="13" width="7" height="7" rx="1"/></svg></div><h3>Modularität</h3><p>Bausteine nach Bedarf kombinieren – von Mängelmelder bis ÖPNV‑Integration.</p></div>
              <div class="feature"><div class="feature-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M9 7a4 4 0 1 0 0 8a4 4 0 0 0 0 -8"/><path d="M17 11a4 4 0 1 0 0 8"/><path d="M14 7a4 4 0 1 0 0 8"/></svg></div><h3>Interkommunalität</h3><p>Ressourcen bündeln, gemeinsam finanzieren und betreiben, Wissen teilen.</p></div>
              <div class="feature"><div class="feature-icon"><svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"><path d="M4 20l6 -6"/><path d="M14 6l6 -6"/><path d="M14 14l6 6"/><path d="M4 4l6 6"/></svg></div><h3>Skalierbarkeit</h3><p>Lokale Vielfalt bewahren, überregionale Synergien nutzen – föderiert statt zentralistisch.</p></div>
            </div>
            <div class="mt-6 flex flex-wrap gap-3">
              <a href="#kontakt" class="btn-secondary">Gespräch vereinbaren</a>
              <a href="https://smart-village.app" target="_blank" rel="noopener" class="btn-ghost">Smart Village App</a>
            </div>
          </div>
          <div class="rounded-xl border border-slate-200 bg-white p-6 shadow-soft">
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/11035544/pexels-photo-11035544.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop" alt="Open‑Source‑Kollaboration – Basis des f��deralen Baukastens" class="mb-3 w-full rounded-md border border-slate-200 object-cover"/>
            </picture>
            <h3 class="mb-3 text-lg font-semibold">Architektur auf einen Blick</h3>
            <ul class="space-y-2 text-slate-700">
              <li><span class="tag">Core</span> App‑Shell (iOS/Android/Web), Identität, Benachrichtigungen</li>
              <li><span class="tag">Module</span> News, Events, Abfall, Meldungen, Beteiligung, ÖPNV</li>
              <li><span class="tag">Integrationen</span> Fachverfahren, Open‑Data, Karten, Bezahl‑Dienste</li>
              <li><span class="tag">Governance</span> Datenschutz, Barrierefreiheit, Betrieb & Support</li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Best Practice -->
    <section id="bestpractice" class="section alt">
      <div class="container">
        <div class="mx-auto max-w-3xl text-center">
          <h2 class="section-title">Best Practice: Smart Village App als Blaupause</h2>
          <p class="section-subtitle">Seit 2018 in Kommunen im Einsatz – modular, offen, praxiserprobt. Übertragbar auf Städte und Regionen.</p>
          <div class="mt-6 flex flex-wrap items-center justify-center gap-3">
            <a href="https://smart-village.app" target="_blank" rel="noopener" class="btn-primary">Website besuchen</a>
            <a href="#kontakt" class="btn-ghost">Transfer prüfen</a>
          </div>
        </div>
      </div>
    </section>

    <!-- Zukunft -->
    <section id="zukunft" class="section">
      <div class="container">
        <div class="grid items-stretch gap-6 md:grid-cols-3">
          <div class="z-card">
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/8849295/pexels-photo-8849295.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop" alt="Abstrakte KI‑Illustration – Intelligente Module in der App" class="mb-3 w-full rounded-md object-cover aspect-[16/9]"/>
            </picture>
            <h3>KI in der App</h3>
            <p>LLM‑Assistenten durchsuchen Ratsinfos, unterstützen Formulare und beantworten Routinefragen – integriert statt isoliert.</p>
          </div>
          <div class="z-card">
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/32642484/pexels-photo-32642484.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop" alt="Digitale Identität und Wallet – sichere Nachweise auf dem Smartphone" class="mb-3 w-full rounded-md object-cover aspect-[16/9]"/>
            </picture>
            <h3>Bund‑ID & EUDI‑Wallet</h3>
            <p>Sicherer Login via Bund‑ID, Nachweise dezentral in der Wallet – die App als vertrauenswürdiger, lokaler Zugang.</p>
          </div>
          <div class="z-card">
            <picture>
              <img loading="lazy" decoding="async" src="https://images.pexels.com/photos/1398005/pexels-photo-1398005.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop" alt="Deutsche Stadtlandschaft – Teil des interoperablen Deutschland‑Stacks" class="mb-3 w-full rounded-md object-cover aspect-[16/9]"/>
            </picture>
            <h3>Deutschland‑Stack</h3>
            <p>Teil eines interoperablen Ökosystems – die Bürger‑App als wichtiges Frontend‑Modul des Plattformkerns.</p>
          </div>
        </div>
      </div>
    </section>

    <!-- Empfehlungen -->
    <section id="empfehlungen" class="section alt">
      <div class="container">
        <div class="mx-auto max-w-3xl text-center">
          <h2 class="section-title">Handlungsempfehlungen für Kommunen</h2>
          <p class="section-subtitle">Pragmatisch starten, Wirkung messen, iterativ ausbauen.</p>
        </div>
        <ol class="mt-8 grid gap-4 md:grid-cols-2">
          <li class="ol-card"><span>1</span> Bürgernähe & Partizipation als Ziel verankern – nutzerzentriert entwickeln.</li>
          <li class="ol-card"><span>2</span> Synergien heben – interkommunal kooperieren, Open‑Source nutzen.</li>
          <li class="ol-card"><span>3</span> In Ökosysteme denken – Fachverfahren anbinden, Inhalte automatisieren.</li>
          <li class="ol-card"><span>4</span> Datensouveränität sichern – Security & Privacy by Design umsetzen.</li>
          <li class="ol-card"><span>5</span> Resiliente Kommunikation – Push‑Kanal für Alltag und Krisen etablieren.</li>
        </ol>
      </div>
    </section>

    <!-- Kontakt -->
    <section id="kontakt" class="section">
      <div class="container">
        <div class="grid items-start gap-8 md:grid-cols-2">
          <div>
            <h2 class="section-title">Kontakt aufnehmen</h2>
            <p class="section-subtitle">Haben Sie Fragen, Anregungen oder möchten Sie die Deutschland.App pilotieren? Wir freuen uns auf Ihre Nachricht.</p>
            <form class="mt-6" @submit.prevent="submitContactForm" aria-label="Kontaktformular">
              <div class="grid gap-3">
                <label class="sr-only" for="name">Name</label>
                <input id="name" type="text" v-model="contactForm.name" placeholder="Ihr Name" required class="input" />
                <label class="sr-only" for="email">E-Mail</label>
                <input id="email" type="email" v-model="contactForm.email" placeholder="Ihre E‑Mail‑Adresse" required class="input" />
                <label class="sr-only" for="message">Nachricht</label>
                <textarea id="message" v-model="contactForm.message" rows="5" placeholder="Ihre Nachricht" required class="input"></textarea>
                <button type="submit" class="btn-primary">Nachricht senden</button>
              </div>
            </form>
            <p class="mt-3 text-sm text-slate-600">Direkt per E‑Mail: <a class="link" href="mailto:deutschland.app@smart-village.solutions">deutschland.app@smart-village.solutions</a></p>
          </div>
          <div class="rounded-xl border border-slate-200 bg-white p-6 shadow-soft">
            <h3 class="mb-3 text-lg font-semibold">Zitierte Quellen</h3>
            <ul class="list-disc space-y-2 pl-5 text-slate-700">
              <li><a class="link" href="https://de.statista.com/" target="_blank" rel="noopener">Statista (2025)</a></li>
              <li><a class="link" href="https://initiatived21.de/publikationen/egovernment-monitor-2024/" target="_blank" rel="noopener">eGovernment MONITOR (2024)</a></li>
              <li><a class="link" href="https://www.cima.de/" target="_blank" rel="noopener">CIMA (2022)</a></li>
              <li><a class="link" href="https://www.bbsr.bund.de/" target="_blank" rel="noopener">BBSR (2025)</a></li>
              <li><a class="link" href="https://www.wik.org/" target="_blank" rel="noopener">WIK (2021)</a></li>
            </ul>
          </div>
        </div>
      </div>
    </section>

    <!-- Footer -->
    <footer class="border-t border-slate-200/80 bg-white py-8 text-sm">
      <div class="container flex flex-col items-center justify-between gap-4 md:flex-row">
        <p class="text-slate-600">© {{ new Date().getFullYear() }} Deutschland.App – Smart, schnell, sparsam.</p>
        <div class="flex items-center gap-4">
          <a href="#kontakt" class="link">Kontakt</a>
          <a href="https://smart-village.app" target="_blank" rel="noopener" class="link">Smart Village App</a>
        </div>
      </div>
    </footer>
  </div>
</template>

<style scoped>
.section{padding-top:5rem;padding-bottom:5rem}
@media(min-width:768px){.section{padding-top:6rem;padding-bottom:6rem}}
.section.alt{background:linear-gradient(to bottom,#f8fafc,white)}
.section-title{font-family:var(--font-heading, inherit);font-size:1.875rem;line-height:1.2;font-weight:700}
@media(min-width:640px){.section-title{font-size:2.25rem}}
.section-subtitle{margin-top:.5rem;color:#475569}
.btn-primary{display:inline-flex;align-items:center;gap:.5rem;background:#0F3B8C;color:#fff;padding:.625rem 1rem;border-radius:.5rem;box-shadow:0 10px 25px -10px rgba(15,59,140,.25)}
.btn-primary:hover{background:#0B2C6F}
.btn-secondary{display:inline-flex;align-items:center;gap:.5rem;background:#FFCC00;color:#0B0C0C;padding:.625rem 1rem;border-radius:.5rem}
.btn-secondary:hover{filter:brightness(.95)}
.btn-ghost{display:inline-flex;align-items:center;gap:.5rem;padding:.625rem 1rem;border-radius:.5rem;box-shadow:inset 0 0 0 1px rgba(15,59,140,.25);color:#0F3B8C}
.btn-ghost:hover{background:rgba(15,59,140,.06)}
.card{background:white;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.card-title{font-weight:600;margin-bottom:.25rem}
.card-text{color:#475569}
.icon{height:2.5rem;width:2.5rem;border-radius:.5rem;display:grid;place-items:center;color:#0F3B8C;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);margin-bottom:.5rem}
.stat{background:white;border:1px dashed rgba(100,116,139,.4);border-radius:.75rem;padding:1rem 1.25rem}
.stat-number{font-size:1.875rem;font-weight:700;color:#0F3B8C}
.stat-label{display:block;color:#475569}
.stack-card{background:white;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.stack-step{display:inline-block;font-size:.75rem;font-weight:600;color:#0F3B8C;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);border-radius:.375rem;padding:.125rem .5rem;margin-bottom:.25rem}
.notice{border:1px solid rgba(100,116,139,.25);border-radius:.75rem;background:linear-gradient(180deg, #fff, #f8fafc);padding:1rem}
.link{color:#0F3B8C}
.link:hover{text-decoration:underline}
.feature{background:white;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.feature-dot{display:inline-block;width:.5rem;height:.5rem;border-radius:9999px;margin-right:.5rem}
.feature-icon{display:inline-grid;place-items:center;width:2.25rem;height:2.25rem;border-radius:.5rem;color:#0F3B8C;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);margin-bottom:.5rem}
.ti-icon{width:1.5rem;height:1.5rem}
.z-card{background:white;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.ol-card{display:flex;gap:.75rem;align-items:flex-start;background:white;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.ol-card>span{display:inline-grid;place-items:center;min-width:2rem;height:2rem;border-radius:.5rem;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);color:#0F3B8C;font-weight:600}
.input{width:100%;padding:.625rem .875rem;border-radius:.5rem;border:1px solid rgba(100,116,139,.35);background:#fff;color:#0f172a}
.input:focus{outline:2px solid transparent;box-shadow:0 0 0 3px rgba(15,59,140,.25);border-color:#0F3B8C}
.bullet{display:inline-grid;place-items:center;width:1.5rem;height:1.5rem;border-radius:.375rem;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);color:#0F3B8C;font-weight:600;margin-right:.5rem}
.tag{display:inline-block;font-size:.75rem;font-weight:600;color:#0F3B8C;background:rgba(15,59,140,.06);border:1px solid rgba(15,59,140,.15);border-radius:.375rem;padding:.125rem .5rem;margin-right:.5rem}
.compare-card{background:#fff;border:1px solid rgba(100,116,139,.25);border-radius:.75rem;padding:1rem}
.compare-card.pro{box-shadow:0 10px 25px -15px rgba(34,197,94,.3)}
.compare-card.con{box-shadow:0 10px 25px -15px rgba(239,68,68,.25)}
.pro-list li,.con-list li{display:flex;gap:.5rem;align-items:flex-start;color:#475569}
.pro-list .dot{width:.5rem;height:.5rem;border-radius:9999px;background:rgba(34,197,94,.9);margin-top:.5rem}
.con-list .dot{width:.5rem;height:.5rem;border-radius:9999px;background:rgba(239,68,68,.9);margin-top:.5rem}
.badge{display:inline-flex;align-items:center;border-radius:.375rem;padding:.125rem .5rem;border:1px solid}
.badge-good{background:rgba(34,197,94,.08);border-color:rgba(34,197,94,.3);color:#166534}
.badge-bad{background:rgba(239,68,68,.08);border-color:rgba(239,68,68,.3);color:#7f1d1d}
</style>
