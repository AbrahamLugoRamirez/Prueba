<template>
  <div class="grid">
    <vs-row id="login" align="center" justify="center" style="height: 80vh">
      <!-- Login Form -->
      <vs-row id="loginForm" justify="center" align="center">
        <c-input placeholder="password"></c-input>
        <div class="mt-6 mx-5 text-center">
          <c-input placeholder="password"></c-input>
          <div
            class="text-white cursor-pointer"
            onclick="window.open('/recovery-password', '_self')"
          >forgot password?</div>
        </div>
        <vs-button border class="focus:outline-none focus:shadow-outline">Log in</vs-button>
      </vs-row>

      <!-- SignUp Form -->
      <vs-row id="signupForm" class="w-1/3">
        <div class="mdi mdi-twitter text-white text-6xl"></div>
        <div class="text-white text-4xl">See what's happening in the world right now</div>
        <div class="text-white text-xl">Join Twitter today.</div>
        <vs-col align="center">
          <vs-button class="focus:outline-none focus:shadow-outline w-full" onclick="window.open('/signup', '_self')">Sign up</vs-button>
          <vs-button border class="focus:outline-none focus:shadow-outline w-full">Log in</vs-button>
        </vs-col>
      </vs-row>
    </vs-row>
  </div>
</template>

<script>
export default {};
</script>
<style>
</style>