Vue.component('uim-timeline-item',{computed:{classes:function(){return [];},styles:function(){return [];}},props:{item:{type:Object,return{}}},template:`<li class="bg-white ml-3 p-4 rounded shadow timeline-item" :class="this.classes" :key="item.id" :style="this.styles" v-for="item in timeline"><div class="timeline-arrow"></div><h2 class="h5 mb-0">{{item.title}}</h2><span class="small text-gray"><i class="fa-clock far mr-1"></i>{{item.dateOf}}</span><p class="font-weight-light mt-2 text-small">{{item.description}}</p></li>`});