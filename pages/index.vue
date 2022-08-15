<template>
  <div class="home-page">
    <section id="aside">
      <div class="aside-content">
        <div class="marsk"></div>
        <div class="content">
          <a>
            <img class="averter" src="../assets/img/averter.jpg" alt="" />
          </a>
          <div class="user-info">
            <nuxt-link to="/article?page=0">{{ userName }}</nuxt-link>
            <div class="silogon">{{ silogon }}</div>
          </div>
          <div class="share-website">
            <a href="https://github.com/GaussYuan191">
              <i class="iconfont">&#xe621;</i>
            </a>
            <a href="javascript: void(0)">
              <i class="iconfont">&#xe610;</i>
            </a>
          </div>
        </div>
      </div>
    </section>
    <section id="home-view">
      <div class="list">
        <div class="about-nav">
          <nuxt-link to="/article">
            <span class="lt1">文章</span>
            <span class="lt2">Article</span>
          </nuxt-link>
          <nuxt-link to="/music">
            <span class="lt1">音乐</span>
            <span class="lt2">Music</span>
          </nuxt-link>
        </div>
      </div>
      <div class="about-nav">
        <nuxt-link to="/project">
          <span class="lt1">项目</span>
          <span class="lt2">Project</span>
        </nuxt-link>
        <nuxt-link to="/about">
          <span class="lt1">关于</span>
          <span class="lt2">About</span>
        </nuxt-link>
      </div>
    </section>
  </div>
</template>

<script>
export default {
  name: 'IndexPage',
  data() {
    return {
      userName: 'Gauss',
      silogon: '很多事情不是因为有希望才去坚持，而是坚持了才有希望'
    };
  }
};
</script>

<style scoped lang="less">
.home-page {
  width: 100%;
  height: 100%;
  display: flex;
  position: absolute;
}

#aside {
  width: 50%;
  height: 100%;
  position: relative;
  background: url('../assets/img/aside-bg.jpg') no-repeat center center;
  background-size: auto 100%;
  transition: width 0.3ms;
  display: flex;
  justify-content: center;
  align-items: center;
  .marsk {
    width: 100%;
    height: 100%;
    position: absolute;
  }
  .content {
    width: 400px;
    height: 400px;
    .averter {
      width: 100px;
      height: 100px;
      border-radius: 50px;
    }
    z-index: 2;
  }
}
#home-view {
  width: 50%;
  height: 100%;
}
</style>
