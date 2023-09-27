{{{if numIdentity}}}
<div component="topic/contact" class="border border-0 card">
    <div class="bg-transparent ps-0 fw-bold fs-5 card-header border border-0" style="
    color: var(--bs-info);">
        联系方式
    </div>
    {{{ if unlockContact }}}
        <div class="rounded-4 card-body" style="background-color: var(--bs-info-bg-subtle)">
            <p class="mb-1 card-text">{identity.identityContactWay}</p>
        </div>
        <div class="mt-1 rounded-4 border border-0 card-body" style="background-color: aliceblue;">
            <p class="card-text mb-1">注意事项：</p>
            <ol>
                <li>因为封号严重，各位哥哥联系过程中尽量减少敏感词哦，简单问一下什么时候有空，<span class="fs-5" style="color: var(--bs-danger);">提前预约时间</span>，最后要位置即可。</li>
                <li>添加上后可以告诉对方<span style="color: red">从木头爱吃糖论坛</span>获得信息，方便平台推广，后续资源更新也能更快，更好的服务大家。</li>
            </ol>
        </div>
        <div class="mt-1 rounded-4 border border-0 card-body" style="background-color: lavenderblush;">
            <p class="card-text mb-1">聊天参考：</p>
            <ul>
                <li>哥哥说：你好，我从<span style="color:red">木头爱吃糖论坛</span>得到你的服务信息，到xxx大概40分钟，晚上21:00后有空，请问你可以给我安排个时间么？</li>
                <li>小姐姐可能的答复：你好，我这边22:00有空，可以嘛</li>
                <li>哥哥说：你的位置在哪里？我看下多远</li>
                <li>小姐姐可能的答复：你好，在xxxxxx</li>
                <li>哥哥说：好的没问题，22:00准时到</li>
                <li>小姐姐可能的答复：好的，等下见</li>
            </ul>
        </div>
        <div class="mt-1 rounded-4 border border-0 card-footer" style="background-color: cornsilk;">
            <p class="card-text"><span style="color: var(--bs-danger);">异常处理</span>：<br>如果联系方式全部失效(不排除这种极端情况)，或者其他异常，请点击下方<span class="fs-3" style="color: var(--bs-danger);">第一个</span>帖子的右下角的<i class="fs-3 fa fa-fw fa-ellipsis-v text-primary"></i>号(解锁后专属) ->【举报这个帖子】，然后描述你的问题，我们每天晚上会进行检查，然后处理你的问题并且进行补偿，最后通过站内聊天软件进行通知！</p>
        </div>
    {{{ end }}}
    {{{ if !unlockContact }}}
        <div class="rounded-4 card-body" style="background-color: var(--bs-info-bg-subtle)">
            <h5 class="card-title">需要消耗 <span component="topic/consume-reputation">{unlock::consume::reputation}</span> 声望解锁</h5>
            <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> 点击支付后，参照步骤，万一遇到问题，在评论区直接留言，这边会通过站内聊天软件进行联系和处理并且评论区会回复。开发人员前期也会关注订单情况，站内主动联系的，不会让你白花钱的！</h6>
            <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> 请大家放心购买！诚不欺人！诚信赢天下！</h6>
            <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> 这边提供联系方式，后面没有二次付费了，你们线下自己约见即可！要押金的一律不要信。</h6>
            <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> 服务内容和价格就是上面你们看到的，某信查封很严，熟悉平台的流程后，和女生聊天中可以不再涉及关键词，直接去就行。</h6>
            <p class="card-text mb-2">
                <i class="fa-regular fa-face-smile-wink"></i> 您当前的声望为：<span style="color: deeppink" class="fs-2">{reqUserInfo.reputation}<span>
            </p>
            <p class="card-text mb-2">
                <a component="recharge/reputation" href="#" class="card-link"><i class="fa-regular fa-lemon"></i> 点这里进行声望充值</a>
            </p>
            <p class="card-text mb-2">
                <a component="topic/unlock-contact" href="#" class="link-underline-primary card-link"><i class="fa-regular fa-lemon"></i> 点这里解锁联系方式</a>
            </p>
        </div>
    {{{ end }}}
</div>
{{{ end }}}


<!-- <a href="{config.relative_path}/recharge" class="card-link"><i class="fa-regular fa-lemon"></i> 点这里进行声望充值</a> -->