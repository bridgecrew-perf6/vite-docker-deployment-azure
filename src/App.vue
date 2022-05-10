<script setup lang="ts">
import { ref } from "vue"

const counter = ref(0)

function reset() {
  counter.value = 0
}
</script>

<template>
  <div
    class="h-screen bg-slate-900 text-white grid place-content-center relative"
  >
    <img src="./assets/logo.png" class="w-16 h-16 absolute top-4 left-8" />
    <div class="flex flex-col space-y-6">
      <span class="text-9xl">Vue3</span>
      <div class="w-full border-b"></div>
      <div class="flex items-center justify-center space-x-3 text-2xl">
        <span> {{ counter }} </span>
        <span>|</span>
        <button @click="counter++">add</button>
        <span>|</span>
        <button @click="reset()">reset</button>
      </div>
    </div>
  </div>
</template>
