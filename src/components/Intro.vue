<template>
  <div class="flex w-full items-center justify-center justify-items-center h-full md:w-10/12 mx-auto flex-wrap md:flex-nowrap">
    <div class="text-center flex-grow intro-text animate__animated animate__fadeInDown animate__fast" style="flex-basis: 60%;">
      <div class="text-xl mb-2">Ahoj, jsem</div>
      <h1 class="text-yellow text-4xl font-bold mb-12">
        <span> </span>
        HONZA RACLAVSKÝ
        <span> </span>
      </h1>
      <div class="mb-12 px-12 md:w-4/6 mx-auto">
        toho času fullstack vývojář, fanoušek K8S, příležitostný dabér, nezávislý herec, milovník dýmky a divadla.
      </div>
      <div>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="mailto:janraclav@gmail.com" target="_blank" title="E-mail">
          <span class="fa fa-lg fa-at"> </span>
        </a>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="https://www.facebook.com/honza.raclavsky.3/" target="_blank" title="Facebook">
          <span class="fa fa-lg fa-facebook"> </span>
        </a>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="https://www.linkedin.com/in/jan-raclavsky/" target="_blank" title="LinkedIn">
          <span class="fa fa-lg fa-linkedin"> </span>
        </a>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="https://www.instagram.com/honzaraclavsky/" target="_blank" title="Instagram">
          <span class="fa fa-lg fa-instagram"> </span>
        </a>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="https://github.com/honzarac" target="_blank" title="GitHub">
          <span class="fa fa-lg fa-github"> </span>
        </a>
        <a class="mx-3 transform hover:text-white hover:scale-125 duration-500 inline-block" href="https://twitter.com/honarac" target="_blank" title="Twitter">
          <span class="fa fa-lg fa-twitter"> </span>
        </a>
      </div>
    </div>
    <div class="text-center flex-shrink animate__animated animate__fadeIn" style="flex-basis: 40%;">
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
  .opentowork {
    border-top-width: 1px;
    border-bottom-width: 1px;
    border-color: #333;
    margin: 20px 0px;
    padding: 20px;
  }
</style>
