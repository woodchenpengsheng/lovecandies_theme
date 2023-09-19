{{{ if thumbs.length }}}
<div class="border border-0 card">
	<div class="bg-transparent ps-0 fw-bold fs-5 card-header border border-0" style="
    color: var(--bs-yellow);">
		个人相册
	</div>
	{{{ each thumbs }}}
	<div class="px-0 pt-0 card-body">
		<img src="{./url}" class="card-img-top" alt="...">
	</div>
	{{{ end }}}
</div>
{{{ end }}}

<!-- <a class="d-inline-block h-100" href="{./url}">
	<img class="rounded-1 h-100 bg-light" style="max-width: 5.33rem; object-fit: contain;" src="{./url}" />
</a> -->