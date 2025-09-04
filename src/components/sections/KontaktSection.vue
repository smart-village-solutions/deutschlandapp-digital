<script setup lang="ts">
import { reactive } from 'vue'

const contactForm = reactive({ name: '', email: '', message: '' })

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
</template>
