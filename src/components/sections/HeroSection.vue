<script setup lang="ts"></script>

<template>
  <section
    id="top"
    class="relative overflow-hidden bg-gradient-to-br from-slate-50 via-white to-slate-50"
  >
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
        <p
          class="mb-3 inline-flex items-center gap-2 rounded-full bg-brand/5 px-3 py-1 text-xs font-medium text-brand ring-1 ring-brand/20"
        >
          Smart. Schnell. Sparsam.
          <span class="h-1 w-1 rounded-full bg-brand"></span>
          Bürger‑Apps für digitale Daseinsvorsorge
        </p>
        <h1
          class="text-3xl font-bold leading-tight tracking-tight text-slate-900 sm:text-4xl md:text-5xl"
        >
          Die föderale Deutschland.App – digital souverän, offen und nah an den Menschen
        </h1>
        <p class="mt-5 max-w-2xl text-base text-slate-600 md:text-lg">
          Eine offene, modulare Bürger‑App als Brücke zwischen Verwaltung, Zivilgesellschaft und
          Nachbarschaft – inspiriert von der Smart Village App und getragen von Interkommunalität.
        </p>
        <div class="mt-8 flex flex-wrap items-center gap-3">
          <a href="#vorteile" class="btn-primary">Mehr erfahren</a>
          <a href="https://smart-village.app" target="_blank" rel="noopener" class="btn-secondary"
            >Best Practice entdecken</a
          >
          <a href="#kontakt" class="btn-ghost">Kontakt aufnehmen</a>
        </div>
      </div>
      <div class="relative mt-6">
        <picture>
          <img
            loading="lazy"
            decoding="async"
            src="https://images.pexels.com/photos/1398005/pexels-photo-1398005.jpeg?auto=compress&cs=tinysrgb&w=1400&h=700&fit=crop"
            alt="Abendliche Skyline von Frankfurt am Main – Sinnbild für moderne, digitale Städte"
            class="w-full rounded-xl border border-slate-200 object-cover shadow-soft aspect-[16/9]"
          />
        </picture>
      </div>
    </div>
  </section>
</template>
