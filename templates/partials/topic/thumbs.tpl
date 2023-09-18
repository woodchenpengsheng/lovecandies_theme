<div class="card">
	<div class="card-header">
		个人相册
	</div>
	{{{ each thumbs }}}
	<div class="card-body">
		<img src="{./url}" class="card-img-top" alt="...">
	</div>
	{{{ end }}}
</div>

<!-- <a class="d-inline-block h-100" href="{./url}">
	<img class="rounded-1 h-100 bg-light" style="max-width: 5.33rem; object-fit: contain;" src="{./url}" />
</a> -->