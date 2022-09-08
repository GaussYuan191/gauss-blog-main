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
            <nuxt-link to="/article?page=0" class="user-name">{{ userName }}</nuxt-link>
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
:root {
  --fontColor: #5e5e5e; /*文字颜色*/
  --titleColor: #3e3e3e; /*标题颜色*/
  --lineColor: #3fb76c; /*线条绿色*/
}
.home-page {
  width: 100%;
  height: 100%;
  position: absolute;
  display: flex;
  min-width: 400px;
  overflow: hidden;
  #aside {
    width: 50%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    background: url('../assets/img/aside-bg.jpg') no-repeat center center;
    .marsk {
      position: absolute;
      width: 100%;
      height: 100%;
      background: rgba(255, 255, 255, 0.5);
      z-index: -1;
    }
    .content {
      max-width: 400px;
      height: 400px;
      display: flex;
      align-items: center;
      flex-direction: column;
      .averter {
        width: 100px;
        height: 100px;
        border-radius: 50px;
      }
      .user-info {
        padding: 16px 0 30px;
        text-align: center;
        .user-name {
          font-size: 22px;
          text-decoration: none;
        }
        .silogon {
          padding: 10px 0;
          font-size: 12px;
        }
      }
      .share-website {
        display: flex;
        a {
          width: 34px;
          height: 34px;
          margin: 0 10px;
          background-color: #5e5e5e;
          cursor: pointer;
          border-radius: 2px;
          text-align: center;
          line-height: 34px;
          text-decoration: none;
          color: #fff;
        }
      }
    }
  }
  #home-view {
    width: 50%;
    height: 100%;
    display: flex;
    justify-content: center;
    align-items: center;
    .list {
      display: flex;
      width: 260px;
      height: 300px;
      flex-wrap: wrap;
      flex-direction: column;
      .about-nav {
        width: 260px;
        height: 100px;
        margin-bottom: 30px;
        display: flex;
        justify-content: space-between;

        a:hover {
          transition: background 0.3s;
          background: #3fb76c;
          color: #fff;
          border-color: #3fb76c;
          .lt1 {
            display: none;
          }
          .lt2 {
            display: inline-block;
          }
        }
        a {
          width: 100px;
          height: 100px;
          border: 1px solid #ccc;
          border-radius: 50%;
          text-align: center;
          line-height: 100px;
          font-size: 18px;
          color: #333;
          text-decoration: none;
          transition: background 0.3s;
          .lt1 {
            display: inline-block;
          }
          .lt2 {
            display: none;
          }
        }
      }
    }
  }
}
</style>
