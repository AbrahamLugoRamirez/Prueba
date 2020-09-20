<template>
  <input type="text" class="shadow rounded py-2 px-3 m-1 border-b border-white text-xs text-white" />
</template>

<script>
export default {
  name: "Input",
};
</script>

<style scoped>
input {
  background-color: rgba(255, 255, 255, 0.1);
  -webkit-transition-property: border-width;
     -moz-transition-property: border-width;
       -o-transition-property: border-width;
          transition-property: border-width;
  -webkit-transition-duration: .2s;
     -moz-transition-duration: .2s;
       -o-transition-duration: .2s;
          transition-duration: .2s;
}

input:focus {
    border-width: 1px;
}
</style>