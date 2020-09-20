<template>
  <vs-button @click="show()">
      <slot/>
  </vs-button>
</template>

<script>
export default {
    methods: {
        show() {
            console.log("hola mundo desde button")
        }
    }
}
</script>

<style>

</style>