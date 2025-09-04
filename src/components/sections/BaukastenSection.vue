<script setup lang="ts"></script>
<template>
  <section id="baukasten" class="section">
    <div class="container">
      <div class="grid items-start gap-10 lg:grid-cols-2">
        <div>
          <h2 class="section-title">Offenes, föderales App‑Baukastenmodell</h2>
          <p class="section-subtitle">
            Open Source, Modularität und Interkommunalität – die Grundlage digitaler Souveränität.
          </p>
          <div class="mt-6 grid gap-4 sm:grid-cols-2">
            <div class="feature">
              <div class="feature-icon">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path d="M12 3a9 9 0 1 0 9 9" />
                  <path d="M10 13a3 3 0 1 0 4 0a5 5 0 1 1 -4 0" />
                </svg>
              </div>
              <h3>Open Source</h3>
              <p>
                Transparenz, Sicherheit, gemeinsame Weiterentwicklung, geringere Lock‑in‑Risiken.
              </p>
            </div>
            <div class="feature">
              <div class="feature-icon">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <rect x="4" y="4" width="7" height="7" rx="1" />
                  <rect x="13" y="4" width="7" height="7" rx="1" />
                  <rect x="4" y="13" width="7" height="7" rx="1" />
                  <rect x="13" y="13" width="7" height="7" rx="1" />
                </svg>
              </div>
              <h3>Modularität</h3>
              <p>Bausteine nach Bedarf kombinieren – von Mängelmelder bis ÖPNV‑Integration.</p>
            </div>
            <div class="feature">
              <div class="feature-icon">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path d="M9 7a4 4 0 1 0 0 8a4 4 0 0 0 0 -8" />
                  <path d="M17 11a4 4 0 1 0 0 8" />
                  <path d="M14 7a4 4 0 1 0 0 8" />
                </svg>
              </div>
              <h3>Interkommunalität</h3>
              <p>Ressourcen bündeln, gemeinsam finanzieren und betreiben, Wissen teilen.</p>
            </div>
            <div class="feature">
              <div class="feature-icon">
                <svg
                  xmlns="http://www.w3.org/2000/svg"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  stroke-width="2"
                  stroke-linecap="round"
                  stroke-linejoin="round"
                >
                  <path d="M4 20l6 -6" />
                  <path d="M14 6l6 -6" />
                  <path d="M14 14l6 6" />
                  <path d="M4 4l6 6" />
                </svg>
              </div>
              <h3>Skalierbarkeit</h3>
              <p>
                Lokale Vielfalt bewahren, überregionale Synergien nutzen – föderiert statt
                zentralistisch.
              </p>
            </div>
          </div>
          <div class="mt-6 flex flex-wrap gap-3">
            <a href="#kontakt" class="btn-secondary">Gespräch vereinbaren</a>
            <a href="https://smart-village.app" target="_blank" rel="noopener" class="btn-ghost"
              >Smart Village App</a
            >
          </div>
        </div>
        <div class="rounded-xl border border-slate-200 bg-white p-6 shadow-soft">
          <picture>
            <img
              loading="lazy"
              decoding="async"
              src="https://images.pexels.com/photos/11035544/pexels-photo-11035544.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
              alt="Open‑Source‑Kollaboration – Basis des föderalen Baukastens"
              class="mb-3 w-full rounded-md border border-slate-200 object-cover"
            />
          </picture>
          <h3 class="mb-3 text-lg font-semibold">Architektur auf einen Blick</h3>
          <ul class="space-y-2 text-slate-700">
            <li>
              <span class="tag">Core</span> App‑Shell (iOS/Android/Web), Identität,
              Benachrichtigungen
            </li>
            <li>
              <span class="tag">Module</span> News, Events, Abfall, Meldungen, Beteiligung, ÖPNV
            </li>
            <li>
              <span class="tag">Integrationen</span> Fachverfahren, Open‑Data, Karten,
              Bezahl‑Dienste
            </li>
            <li>
              <span class="tag">Governance</span> Datenschutz, Barrierefreiheit, Betrieb & Support
            </li>
          </ul>
        </div>
      </div>
    </div>
  </section>
</template>
