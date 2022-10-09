<template>
  <div class="aboutBox">
    <div class="userInfo">
      <div class="info">
        <p>
          <i class="iconfont icon">&#xe670;</i>
          <span>我是Gauss, 一个前端开发程序员</span>
        </p>
        <p>
          <i class="iconfont icon">&#xe65b;</i>
          <span>计算机科学与技术专业</span>
        </p>
        <p>
          <i class="iconfont icon">&#xe63b;</i>
          <span>喜欢coding、电影、原神、宅</span>
        </p>
        <p>
          <i class="iconfont icon">&#xe6c3;</i>
          <span>胡歌、周杰伦、沈腾</span>
        </p>
        <p>
          <i class="iconfont icon">&#xe64a;</i>
          <span>
            <a href="https://github.com/naihe138" target="_blank"
              ><i class="iconfont like">&#xe621;</i></a
            >
            <a href="https://segmentfault.com/u/naice" target="_blank"
              ><i class="iconfont like">&#xe610;</i></a
            >
            <a href="https://juejin.im/user/5768b5f8a341310064ef444e" target="_blank"
              ><i class="iconfont like">&#xe606;</i></a
            >
            <a href="https://juejin.im/user/5768b5f8a341310064ef444e" target="_blank"></a>
            <a
              href="http://mail.qq.com/cgi-bin/qm_share?t=qm_mailme&email=CTo_OTs4PDs6OUl4eCdqZmQ"
              target="_blank"
              ><i class="iconfont like">&#xe60a;</i></a
            >
            <a href="https://user.qzone.qq.com/370215230/infocenter" target="_blank"
              ><i class="iconfont like">&#xe7dc;</i></a
            >
            <a href="https://weibo.com/5091678932/profile?topnav=1&wvr=6" target="_blank"
              ><i class="iconfont like">&#xe63d;</i></a
            >
            <a href="https://www.facebook.com/he.wenlin.501" target="_blank"
              ><i class="iconfont like">&#xe6e2;</i></a
            >
            <a href="https://twitter.com/naice_heheda" target="_blank"
              ><i class="iconfont like">&#xec9c;</i></a
            >
          </span>
        </p>
        <p>
          <i class="iconfont icon">&#xe725;</i>
          <span>很多事情不是因为有希望才去坚持，而是坚持了才有希望。</span>
        </p>
      </div>
      <div class="user">
        <div class="bg" v-if="isDay">
          <div class="cloud">
            <img class="bg1" src="../assets/img/cloude-1.jpg" alt="" />
          </div>
          <div class="cloud">
            <img class="bg2" src="../assets/img/cloud-2.jpg" alt="" />
          </div>
          <div class="start">
            <img src="../assets/img/star-1.png" alt="" />
            <img src="../assets/img/star-2.png" alt="" />
          </div>
        </div>
        <div class="bg night" v-else>
          <canvas
            width="250"
            height="110"
            style="width: 250px; height: 110px"
            ref="bCanvas"
          ></canvas>
        </div>
        <div class="name">
          <h2 class="title">Naice</h2>
          <p class="disc">JS stack developer</p>
          <p class="friend">Friend me</p>
        </div>
        <img class="averter" src="../assets/img/averter.jpg" alt="头像" />
        <!-- <img class="weixin" src="../assets/img/weixin.png" alt="" /> -->
      </div>
    </div>
    <div class="project">
      <nuxt-link to="/project">
        <p>Get More Project</p>
        <p>了解更多关于我的开源项目的进展</p>
      </nuxt-link>
    </div>
  </div>
</template>

<script>
import FooterMixin from '../utils/footer-mixin';
export default {
  head: {
    title: 'Gauss | 关于',
    meta: [{ hid: 'description', name: 'description', content: 'Home page description' }]
  },
  layout: 'layout',
  data() {
    const isDay = new Date().getHours() < 17;
    return {
      isDay
    };
  },
  mixins: [FooterMixin],
  methods: {},
  mounted() {}
};
</script>

<style scoped>
.aboutBox {
  width: 900px;
  margin: 0 auto;
  color: #555555;
  overflow: hidden;
}
.userInfo {
  clear: both;
  overflow: hidden;
  height: 382px;
  display: flex;
  justify-content: space-between;
}
.info {
  width: 630px;
  border: 1px solid #f1f1f1;
  box-sizing: border-box;
  padding: 20px;
  height: 380px;
}
.info p {
  line-height: 54px;
  color: #555555;
  transition: color 0.3s;
}
.info p:hover {
  color: #7f7f7f;
}
.info .icon {
  padding-right: 15px;
  color: #cccccc;
}
.user {
  width: 250px;
  height: 380px;
  position: relative;
  cursor: pointer;
}
.user:hover .weixin {
  opacity: 1;
}
.user:hover .averter {
  transform: rotate(180deg);
}
.user .bg {
  width: 100%;
  height: 110px;
  overflow: hidden;
  position: relative;
}

.user .bg .cloud {
  width: 100%;
  height: 100%;
  overflow: hidden;
  position: absolute;
  left: 0;
  top: 0;
}
.user .bg .cloud:nth-of-type(2) {
  opacity: 0.66;
}
.bg1 {
  width: auto;
  height: 200%;
  -webkit-animation: aboutbg-be-1 88s linear infinite;
  animation: aboutbg-be-1 88s linear infinite;
}
.bg2 {
  width: auto;
  height: 200%;
  -webkit-animation: aboutbg-be-2 66s linear infinite;
  animation: aboutbg-be-2 66s linear infinite;
}
.start {
  width: 80px;
  position: absolute;
  right: 0;
  top: 0;
  animation: aboutbg-star 6s linear infinite;
}
.start img {
  position: absolute;
  width: 60px;
  left: 0;
  top: 0;
}
@keyframes aboutbg-be-1 {
  0% {
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
  }

  25% {
    -webkit-transform: translate3d(-50%, -50%, 0);
    transform: translate3d(-50%, -50%, 0);
  }

  50% {
    -webkit-transform: translate3d(-50%, 0, 0);
    transform: translate3d(-50%, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(0, -50%, 0);
    transform: translate3d(0, -50%, 0);
  }

  to {
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
  }
}

@keyframes aboutbg-be-2 {
  0% {
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
  }

  25% {
    -webkit-transform: translate3d(0, -50%, 0);
    transform: translate3d(0, -50%, 0);
  }

  50% {
    -webkit-transform: translate3d(-10%, 0, 0);
    transform: translate3d(-10%, 0, 0);
  }

  75% {
    -webkit-transform: translate3d(-10%, -50%, 0);
    transform: translate3d(-10%, -50%, 0);
  }

  to {
    -webkit-transform: translateZ(0);
    transform: translateZ(0);
  }
}

@keyframes aboutbg-star {
  0% {
    opacity: 1;
  }

  25% {
    opacity: 0.5;
  }

  50% {
    opacity: 0.8;
  }

  75% {
    opacity: 0.2;
  }

  to {
    opacity: 1;
  }
}

.user .averter {
  position: absolute;
  width: 80px;
  height: 80px;
  border-radius: 50px;
  z-index: 1;
  left: 85px;
  top: 70px;
  border: 4px solid rgba(255, 255, 255, 0.5);
  transition: 0.3s;
}
.user .name {
  text-align: center;
  border-left: 1px solid #f1f1f1;
  border-bottom: 1px solid #f1f1f1;
  border-right: 1px solid #f1f1f1;
  overflow: hidden;
  position: relative;
  box-sizing: border-box;
  height: 270px;
}
.user .title {
  font-weight: normal;
  margin-top: 80px;
}
.user .disc {
  margin-top: 10px;
}
.user .friend {
  display: inline-block;
  padding: 5px 20px;
  border: 1px dashed #3fb76c;
  margin-top: 20px;
}
.weixin {
  width: 248px;
  position: absolute;
  left: 1px;
  top: 110px;
  opacity: 0;
  transition: opacity 0.3s;
  z-index: 1;
}
.like {
  color: #555555;
  display: inline-block;
  padding-right: 15px;
}
.map {
  width: 900px;
  border: 1px solid #f1f1f1;
  height: 200px;
  margin-top: 20px;
  padding: 10px;
}
#allmap {
  width: 100%;
  height: 100%;
}
.project {
  width: 900px;
  height: 200px;
  border: 1px solid #f1f1f1;
  box-sizing: border-box;
  margin-top: 20px;
  padding: 10px;
}
.project a {
  display: block;
  width: 100%;
  height: 100%;
  transition: background 0.5s;
  overflow: hidden;
  cursor: pointer;
}
.project a:hover {
  background: #efefef;
  text-decoration: none;
}
.project p {
  text-align: center;
}
.project p:first-child {
  font-size: 36px;
  margin-top: 60px;
}
.project p:last-child {
  margin-top: 10px;
}
.night {
  background: url(../assets/img/night.png) no-repeat center center;
  background-size: 100% 100%;
}
</style>
