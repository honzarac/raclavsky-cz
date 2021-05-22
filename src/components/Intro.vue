<template>
  <div class="flex w-full items-center justify-center justify-items-center h-full md:w-10/12 mx-auto flex-wrap md:flex-nowrap">
    <div class="text-center flex-grow intro-text animate__animated animate__slideInDown animate__fast" style="flex-basis: 60%;">
      <div class="text-xl mb-2">Ahoj, jsem</div>
      <h1 class="text-yellow text-4xl font-bold mb-12">
        <span> </span>
        HONZA RACLAVSKÝ
        <span> </span>
      </h1>
      <div class="mb-12 px-12 md:w-4/6 mx-auto">
        toho času backend programátor ve <a href="https://futured.app/" target="_blank">@futuredapps</a>,
        příležitostný dabér, herec, kterému za jeho hraní neplatí, milovník dýmky a divadla.
      </div>
      <div>
        <a class="mx-3 hover:text-white" href="https://www.facebook.com/honza.raclavsky.3/" target="_blank"><span class="fa fa-lg fa-facebook"> </span></a>
        <a class="mx-3 hover:text-white" href="https://www.linkedin.com/in/jan-raclavsky/" target="_blank"><span class="fa fa-lg fa-linkedin"> </span></a>
        <a class="mx-3 hover:text-white" href="https://www.instagram.com/honzaraclavsky/" target="_blank"><span class="fa fa-lg fa-instagram"> </span></a>
        <a class="mx-3 hover:text-white" href="https://github.com/honzarac" target="_blank"><span class="fa fa-lg fa-github"> </span></a>
        <a class="mx-3 hover:text-white" href="https://twitter.com/honarac" target="_blank"><span class="fa fa-lg fa-twitter"> </span></a>
      </div>
    </div>
    <div class="text-center flex-shrink" style="flex-basis: 40%;">
      <img src="../assets/vox.jpg" class="w-80 md:w-min">
    </div>
  </div>
</template>

<script lang="ts">
import { ref, defineComponent } from 'vue'
export default defineComponent({
  name: 'Intro'
})
</script>

<style scoped>
  h1 {
    white-space: nowrap;
  }
  h1 span {
    background: theme('colors.yellow');
    width: 6%;
    height: 8px;
    display: inline-block;
    vertical-align: middle;
  }
  .intro-text {
    min-width: 320px;
  }
</style>
