<{if $block.options}>
    <form action="<{$block.action}>" id="<{$block.dirname}>_catsel" style="text-align: center;" class="form-inline">
        <select name="cat" onChange="submit();" class="form-control">
            <option value="">-----</option>
            <{foreach from=$block.options item=option}>
                <option value="<{$option.catid}>"<{if $option.catid==$smarty.get.cat}> selected="selected"<{/if}>><{$option.name}></option>
            <{/foreach}>
        </select>
    </form>
<{/if}>
