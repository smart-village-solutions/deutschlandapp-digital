<script setup lang="ts">
import { ref } from 'vue'
import HeroSection from '@/components/sections/HeroSection.vue'
import VorteileSection from '@/components/sections/VorteileSection.vue'
import PartizipationSection from '@/components/sections/PartizipationSection.vue'
import EffizienzSection from '@/components/sections/EffizienzSection.vue'
import RisikenSection from '@/components/sections/RisikenSection.vue'
import VergleichSection from '@/components/sections/VergleichSection.vue'
import BaukastenSection from '@/components/sections/BaukastenSection.vue'
import BestPracticeSection from '@/components/sections/BestPracticeSection.vue'
import ZukunftSection from '@/components/sections/ZukunftSection.vue'
import EmpfehlungenSection from '@/components/sections/EmpfehlungenSection.vue'
import KontaktSection from '@/components/sections/KontaktSection.vue'

const mobileNavOpen = ref(false)
</script>

<template>
  <div class="min-h-screen font-sans text-slate-900">
    <!-- Header -->
    <header
      class="sticky top-0 z-40 bg-white/80 backdrop-blur supports-[backdrop-filter]:bg-white/60 border-b border-slate-200/60"
    >
      <div class="container flex items-center justify-between py-3">
        <a href="#top" class="inline-flex items-center gap-2">
          <span
            class="inline-block h-8 w-8 rounded-lg bg-brand/10 ring-1 ring-brand/20 grid place-items-center"
          >
            <svg
              viewBox="0 0 24 24"
              class="h-5 w-5 text-brand"
              fill="currentColor"
              aria-hidden="true"
            >
              <path d="M4 7h16v2H4zM4 11h16v2H4zM4 15h10v2H4z" />
            </svg>
          </span>
          <span class="text-base font-semibold tracking-tight">Deutschland.App</span>
        </a>
        <nav class="hidden md:flex items-center gap-6 text-sm">
          <a href="#vorteile" class="hover:text-brand">Vorteile</a>
          <a href="#vergleich" class="hover:text-brand">Vergleich</a>
          <a href="#partizipation" class="hover:text-brand">Partizipation</a>
          <a href="#effizienz" class="hover:text-brand">Effizienz</a>
          <a href="#baukasten" class="hover:text-brand">Baukasten</a>
          <a href="#zukunft" class="hover:text-brand">Zukunft</a>
          <a href="#bestpractice" class="hover:text-brand">Best Practice</a>
          <a href="#empfehlungen" class="hover:text-brand">Empfehlungen</a>
          <a
            href="#kontakt"
            class="ml-2 inline-flex items-center rounded-md bg-brand px-3 py-2 font-medium text-white shadow-soft hover:bg-brand-dark"
            >Kontakt</a
          >
        </nav>
        <button
          class="md:hidden inline-flex h-10 w-10 items-center justify-center rounded-md ring-1 ring-slate-300"
          @click="mobileNavOpen = !mobileNavOpen"
          aria-label="Menü"
        >
          <svg
            v-if="!mobileNavOpen"
            class="h-5 w-5"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
          >
            <path d="M4 7h16M4 12h16M4 17h16" />
          </svg>
          <svg
            v-else
            class="h-5 w-5"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            stroke-width="2"
            stroke-linecap="round"
          >
            <path d="M6 6l12 12M6 18L18 6" />
          </svg>
        </button>
      </div>
      <div v-if="mobileNavOpen" class="md:hidden border-t border-slate-200/60">
        <div class="container grid gap-2 py-3 text-sm">
          <a href="#vorteile" class="py-1" @click="mobileNavOpen = false">Vorteile</a>
          <a href="#partizipation" class="py-1" @click="mobileNavOpen = false">Partizipation</a>
          <a href="#effizienz" class="py-1" @click="mobileNavOpen = false">Effizienz</a>
          <a href="#vergleich" class="py-1" @click="mobileNavOpen = false">Vergleich</a>
          <a href="#baukasten" class="py-1" @click="mobileNavOpen = false">Baukasten</a>
          <a href="#zukunft" class="py-1" @click="mobileNavOpen = false">Zukunft</a>
          <a href="#bestpractice" class="py-1" @click="mobileNavOpen = false">Best Practice</a>
          <a href="#empfehlungen" class="py-1" @click="mobileNavOpen = false">Empfehlungen</a>
          <a href="#kontakt" class="py-1 font-medium text-brand" @click="mobileNavOpen = false"
            >Kontakt</a
          >
        </div>
      </div>
    </header>

    <!-- Sections -->
    <HeroSection />
    <VorteileSection />
    <VergleichSection />
    <PartizipationSection />
    <EffizienzSection />
    <RisikenSection />

    <BaukastenSection />
    <BestPracticeSection />
    <ZukunftSection />
    <EmpfehlungenSection />
    <KontaktSection />

    <!-- Footer -->
    <footer class="border-t border-slate-200/80 bg-white py-10 text-sm">
      <div class="container flex flex-col items-center justify-between gap-4 md:flex-row">
        <p class="text-slate-600">
          © {{ new Date().getFullYear() }} Deutschland.App – Smart, schnell, sparsam.
        </p>
        <div class="flex items-center gap-4">
          <a href="#kontakt" class="link">Kontakt</a>
          <a href="/llms/rebuild-prompt.md" download class="link">Prompt herunterladen</a>
          <a href="https://smart-village.app" target="_blank" rel="noopener" class="link"
            >Smart Village App</a
          >
        </div>
      </div>

      <div class="container mt-8 grid gap-8 md:grid-cols-2">
        <section id="impressum" aria-labelledby="impressum-title">
          <h2 id="impressum-title" class="text-base font-semibold text-slate-900">Impressum</h2>
          <address class="mt-2 not-italic text-slate-700">
            <div>Smart Village Solutions SVS GmbH</div>
            <div>Klein Glien 25</div>
            <div>14806 Bad Belzig</div>
            <div>Deutschland</div>
          </address>
          <p class="mt-2">Tel.: <a class="link" href="tel:+4933841639690">033841-63969-0</a></p>
          <p>
            E-Mail:
            <a class="link" href="mailto:info@smart-village.solutions"
              >info@smart-village.solutions</a
            >
          </p>
          <p class="mt-2">Registergericht: Amtsgericht Potsdam</p>
          <p>Registernummer: HRB 34248</p>
          <p>Geschäftsführer/in: Philipp Wilimzig &amp; Erik Hildenbrand</p>
          <p>Umsatzsteuer-Identifikationsnummer: DE265570015</p>
          <p class="mt-2">Verantwortliche/r i.S.d. § 18 Abs. 2 MStV: Philipp Wilimzig</p>
        </section>

        <section aria-labelledby="bildquellen-title">
          <h2 id="bildquellen-title" class="text-base font-semibold text-slate-900">Bildquellen</h2>
          <ul class="mt-2 space-y-1 text-slate-700">
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/1398005/pexels-photo-1398005.jpeg?auto=compress&cs=tinysrgb&w=1400&h=700&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 1398005</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/6009077/pexels-photo-6009077.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 6009077</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/3852577/pexels-photo-3852577.jpeg?auto=compress&cs=tinysrgb&w=1200&h=800&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 3852577</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/33675980/pexels-photo-33675980.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 33675980</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/34069/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 34069</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/12769934/pexels-photo-12769934.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 12769934</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/11035544/pexels-photo-11035544.jpeg?auto=compress&cs=tinysrgb&w=1200&h=600&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 11035544</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/8849295/pexels-photo-8849295.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 8849295</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/32642484/pexels-photo-32642484.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 32642484</a
              >
            </li>
            <li>
              <a
                class="link break-all"
                href="https://images.pexels.com/photos/1398005/pexels-photo-1398005.jpeg?auto=compress&cs=tinysrgb&w=900&h=506&fit=crop"
                target="_blank"
                rel="noopener"
                >Pexels – Foto 1398005</a
              >
            </li>
          </ul>
          <p class="mt-2 text-slate-500">
            Bilder von Pexels (https://www.pexels.com/de-de/), genutzt gemäß deren Lizenz.
          </p>
        </section>
      </div>
    </footer>
  </div>
</template>
