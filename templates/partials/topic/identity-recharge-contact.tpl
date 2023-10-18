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
            <li>因为封号严重，各位哥哥联系过程中尽量减少敏感词哦，简单问一下什么时候有空，<span class="fs-5"
                    style="color: var(--bs-danger);">提前预约时间</span>，最后要位置即可。</li>
            <li><span style="color:red">女生可能会晚一点加</span>，特别是高峰期的时候！请提前预约，提前加，谢谢！你也可以<span
                    style="color:red">多买几个联系方式，如果联系方式全部失效，可以评论滴，这边验证通过会退你的，几十块一个联系方式也不贵哇！</span></li>
        </ol>
    </div>
    <div class="mt-1 rounded-4 border border-0 card-body" style="background-color: lavenderblush;">
        <p class="card-text mb-1">聊天参考：</p>
        <ul>
            <li>哥哥说：你好，我到xxx大概40分钟，晚上21:00后有空，请问你可以给我安排个时间么？</li>
            <li>小姐姐可能的答复：你好，我这边22:00有空，可以嘛</li>
            <li>哥哥说：你的位置在哪里？我看下多远</li>
            <li>小姐姐可能的答复：你好，在xxxxxx</li>
            <li>哥哥说：好的没问题，22:00准时到</li>
            <li>小姐姐可能的答复：好的，等下见</li>
        </ul>
    </div>
    <div class="mt-1 rounded-4 border border-0 card-footer" style="background-color: cornsilk;">
        <p class="card-text"><span
                style="color: var(--bs-danger);">异常处理</span>：<br>如果联系方式全部失效(不排除这种极端情况)，或者其他异常，请点击下方<span class="fs-3"
                style="color: var(--bs-danger);">第一个</span>帖子的右下角的<i
                class="fs-3 fa fa-fw fa-ellipsis-v text-primary"></i>号(解锁后专属)
            ->【举报这个帖子】，然后描述你的问题，我们每天晚上会进行检查，然后处理你的问题并且进行补偿，最后通过站内聊天软件进行通知！</p>
    </div>
    {{{ end }}}
    {{{ if !unlockContact }}}
    {{{ if expire }}}
    <div class="rounded-4 card-body" style="background-color: var(--bs-info-bg-subtle)">
        <h6 class="card-title">你来晚喽，内容已经过期，请查看其他的帖子吧！</h5>
    </div>
    {{{ else }}}
    <div class="rounded-4 card-body mb-2" style="background-color: var(--bs-info-bg-subtle)">
        <h5 class="card-title">方式一：声望解锁</h5>
        <h6 class="card-title">需要消耗 <span component="topic/consume-reputation">{unlock::consume::reputation}</span> 声望解锁
        </h6>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i>
            如果不回复的时间>=12个小时或者不在本地或者休假了(尽量白天联系,半夜晚上都忙)，页面介绍状态标记是绿色的【会回复状态】话，除了退解锁的声望另外多退50%声望。</h6>
        <ol class="mb-0">
            <li class="card-subtitle mb-2 text-body-secondary"><i class="fa-solid fa-bomb"></i>
                今天下午3点加她微信，过了8分钟没反应，打她电话也没人回，到第二天差不多中午了还是没反应，然后你打她电话还是没人接，这个时候可以主动反馈给我们</li>
            <li class="card-subtitle text-body-secondary"><i class="fa-solid fa-bomb"></i>
                拿到了她的联系方式，上面有手机号码和QQ。一联系发现电话停机，并且电话号码加不了微信，然后QQ也加不了，这个时候可以立马反馈给我们</li>
        </ol>

        <p class="card-text mb-2">
            <i class="fa-regular fa-face-smile-wink"></i> 您当前的声望为：<span style="color: deeppink"
                class="fs-2">{reqUserInfo.reputation}<span>
        </p>
        <p class="card-text mb-2">
            <a component="recharge/reputation" href="#" class="card-link"><i class="fa-regular fa-lemon"></i>
                点这里进行声望充值</a>
        </p>
        <p class="card-text mb-2">
            <a component="topic/unlock-contact" href="#" class="link-underline-primary card-link"><i
                    class="fa-regular fa-lemon"></i> 点这里解锁联系方式</a>
        </p>
    </div>
    <div class="rounded-4 card-body mb-2" style="background-color: var(--bs-info-bg-subtle)">
        <h5 class="card-title">方式二：VIP解锁</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i>
            使用此种方式解锁后，可以在服务周期内多次解锁，但是不再提供女生回复慢退声望的服务。</h6>
        <p class="card-text mb-2">
            {{{ if (candies:vip:recharge && candies:vip:expire) }}}
                <p class="card-text fs-5" style="color: deeppink">您的vip有效期到：<span style="font-size:1rem">{isoTimeToLocaleString(candies:vip:expire)}</span></p>
            {{{ else }}}
                <a component="recharge/vip" href="#" class="card-link"><i class="fa-regular fa-lemon"></i>
                    点这里开通vip</a>
            {{{ end }}}
        </p>
        <p class="card-text mb-2">
            <a component="topic/vip-unlock" href="#" class="link-underline-primary card-link"><i
                    class="fa-regular fa-lemon"></i> 点这里vip解锁(无消耗)</a>
        </p>
    </div>
    <div class="rounded-4 card-body" style="background-color: var(--bs-info-bg-subtle)">
        <h5 class="card-title">注意点</h5>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i>
            点击支付后，参照步骤，支付购买那一页面会有多个购买选项，挑选任意一个你们支持的付款方式即可。付款的时候，如果提示有xxx的话，退出来重新选就可以，交易成功后，5分钟内到账（一般是秒到账），开发这边能看订单的，出异常可以反馈，不会让你白花钱的，放心！
        </h6>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> 请大家放心购买！诚不欺人！诚信赢天下！</h6>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i>
            这边提供联系方式，后面没有二次付费了，你们线下自己约见即可！要押金的一律不要信。</h6>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i>
            我也理解大家想要了解更多，想要保障，好一点的，服务内容和价格和图片(可能存在美颜，但是人照不符直接反馈)就是上面你们看到的，和女生沟通尽量少闲聊哦，普遍很反感的，某信查封很严，熟悉平台的流程后，和女生聊天中可以不再涉及关键词，直接要位置和时间就行。
        </h6>
        <h6 class="card-subtitle mb-2 text-body-secondary"><i class="fa-regular fa-hand"></i> <strong style="color:red"
                class="fs-5">各位朋友尽量提前预约，特别是高峰期，有联系方式后，可能出现回复慢的情况(1-2小时才回复)</strong>，我们真的也很无奈，因为这个问题解不了的。小本生意，各位朋友也不敢怠慢，但我们又催不动的，我们能做到的是近期(拿到联系方式的时候)保证有效性和在本地，服务内容一般都是没问题的，但是时效性看运气，有的是秒回，有的为了提高服务质量，顾不过来。
        </h6>
    </div>
    {{{ end }}}

    {{{ end }}}
</div>
{{{ end }}}


<!-- <a href="{config.relative_path}/recharge" class="card-link"><i class="fa-regular fa-lemon"></i> 点这里进行声望充值</a> -->