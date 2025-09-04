<script setup lang="ts"></script>
<template>
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
</template>
