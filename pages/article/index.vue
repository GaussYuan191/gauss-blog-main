<template>
  <to-top></to-top>
</template>

<script>
import ToTop from '../../components/toTop.vue';
import FooterMixin from '../../utils/footer-mixin';
import TimeMixin from '../../utils/time-mixin';


export default {
  head() {
    return {
      title: 'Gauss | 文章'
    };
  },
  layout: 'layout',
  mixins: [FooterMixin, TimeMixin],
  components: {
    ToTop
  },
  data() {
    return {
      showFixedTag: false,
      sideHot: null,
      isLoadingData: false,
      hasMore: true,
      page: 1
    };
  }
};
</script>
