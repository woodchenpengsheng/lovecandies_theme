{{{ if numIdentity }}}
<div class="border border-0 card">
    <div class="bg-transparent ps-0 fw-bold fs-5 card-header border border-0" style="
    color: var(--bs-danger-border-subtle);">
        个人资料
    </div>
    {{{ if (./expire && !./unlockContact) }}}
        <div class="rounded-4 card-body" style="background-color: var(--bs-gray-200);">
            <p class="mb-1 card-text"><span>内容已经过期并且该帖子未曾被解锁，看看其他的吧</span></p>
        </div>
    {{{ else }}}
        <div class="rounded-4 card-body" style="background-color: var(--bs-gray-200);">
            <p class="mb-1 card-text"><span>位置：</span>{identity.identityLocation}</p>
            <p class="mb-1 card-text"><span>姓名：</span>{identity.identityName}</p>
            <p class="mb-1 card-text"><span>价格：</span>{identity.identityPrice}</p>
            <p class="mb-1 card-text"><span>服务内容：</span>{identity.identityServiceDescription}</p>
        </div>
        <div class="fw-light mt-1 rounded-4 border border-0 card-footer">
            <p class="card-text">{identity.identityDescription}</p>
        </div>
    {{{ end }}}
</div>
{{{ end }}}