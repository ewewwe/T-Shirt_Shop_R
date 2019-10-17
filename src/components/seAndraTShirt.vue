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
      order:'',

      ChoseTShirt(TShirt) {
        this.TShirts.view = TShirt;
      },
      Order(Order){
        this.order = Order;
      }

    };
  }
}
</script>