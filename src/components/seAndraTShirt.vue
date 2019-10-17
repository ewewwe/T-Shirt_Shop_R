<template>
  <div class="Rabatt">
  </div>
</template>


<script>
export default {
  data() {
    return {
      TShirts: {
        view: ''
      },

      ChoseTShirt(TShirt) {
        this.TShirts.view = TShirt;
      }

    };
  }
}
</script>