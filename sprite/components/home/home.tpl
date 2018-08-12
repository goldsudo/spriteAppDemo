<div>
    <keep-alive>
        <router-view style="margin-bottom: 60px;" v-if="$route.meta.keepAlive"></router-view>
    </keep-alive>
    <router-view style="margin-bottom: 60px;" v-if="!$route.meta.keepAlive"></router-view>
    <mt-tabbar v-model="homeSelectedTab" fixed>
        <mt-tab-item @click.native="changePage(page)" v-for="page in pageList" :id="page.name">
            <img slot="icon" :src="page.meta.indexIcon"> {{page.meta.indexName}}
        </mt-tab-item>
    </mt-tabbar>
</div>