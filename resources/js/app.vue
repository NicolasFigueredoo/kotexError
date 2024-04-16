<template>

<Navbar_boot></Navbar_boot>
<router-view></router-view>
<Footer_boot></Footer_boot>
</template>

<script>


import Navbar_boot from './components/Navbar.vue';
import Footer_boot from './components/Footer.vue';

export default {
  name: 'App',
  components: {
    Navbar_boot,
    Footer_boot
 }
}
</script>

