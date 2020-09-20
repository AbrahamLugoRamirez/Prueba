<template>
  <div class="text-white p-5 grid" style="height: 80vh">
    <vs-row justify="space-around" align="center" direction="column">
      <vs-row
        justify="center"
        align="center"
        class="xl:w-1/3 lg:w-1/3 md:w-1/2 sm:w-screen xs:w-screen h-64"
      >
        <div class="text-4xl">Sign Up</div>

        <c-input type="text" name="name" id="name" class="w-full" placeholder="Name"></c-input>
        <c-input type="text" name="email" id="email" class="w-full" placeholder="email"></c-input>
        <c-input
          type="password"
          name="password"
          id="password"
          class="w-full"
          placeholder="Password"
        ></c-input>
        <vs-button border class="focus:outline-none focus:shadow-outline">signup</vs-button>
      </vs-row>
    </vs-row>
  </div>
</template>

<script>
export default {};
</script>

<style>
</style>