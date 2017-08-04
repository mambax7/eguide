<table width="100%">
    <{foreach from=$event key=eid item=ev}>
        <tr>
            <td>
                <{if count($event)>1}><a href="collect.php?eid=<{$eid}>">@</a><{/if}>
                <a href="event.php?eid=<{$eid}>" class="evhead"><{$ev.title}></a>
                (<{$smarty.const._MD_POSTDATE}> <{$ev.postdate}>)
            </td>
            <td class="text-right">
                <div class="btn-group">
                    <a href="admin.php?eid=<{$eid}>" class="btn btn-default" role="button"><{$smarty.const._EDIT}></a>
                    <a href="export.php?eid=<{$eid}>" class="btn btn-default"
                       role="button"><{$smarty.const._MD_EXPORT_OUT}></a>
                    <{if $ev.exid}>
                        <a href="editdate.php?eid=<{$eid}>" class="btn btn-default"
                           role="button"><{$smarty.const._MD_EDIT_EXTENT}></a>
                    <{/if}>
                </div>
            </td>
        </tr>
    <{/foreach}>
</table>
<{if count($event)==1}>
    <{foreach from=$event key=eid item=ev}>
        <{if $ev.catname}>
            <div style="float:right;">
                <a href="index.php?cat=<{$ev.catid}>">
                    <{if $ev.catimg}>
                        <img src="<{$ev.catimg}>" alt="<{$ev.catname}>" class="catbox img-thumbnail" width="150">
                    <{else}>
                        <span class="catbox"><{$ev.catname}></span>
                    <{/if}>
                </a>
            </div>
        <{/if}>
        <div class="evinfo"><{$smarty.const._MD_POSTERC}> <a
                    href="<{$xoops_url}>/userinfo.php?uid=<{$ev.uid}>"><{$ev.uname}></a></div>
        <p class="evbody"><{$ev.disp_summary}></p>
    <{/foreach}>
<{/if}>
<br>
<form method="post" class="form-inline">
    <table class="outer table table-bordered table-striped" cellspacing="1" cellpading="2">
        <tr>
            <th></th><{foreach from=$timeline item=time}>
            <th><{$time}></th><{/foreach}></tr>
        <{foreach from=$cells key=day item=cell}>
            <tr class="<{cycle values="even, odd"}>">
                <td class="head"><{$dateline[$day]}></td>
                <{foreach from=$timeline key=time item=disp}>
                    <td align="center">
                        <{if $cell[$time]}>
                            <{foreach from=$cell[$time] item=ev}>
                                <div><{$smarty.const._MD_RESERV_PERSONS}>
                                    <input type="text" size="2"
                                           name="persons[<{$ev.eid}><{if $ev.exid}>-<{$ev.exid}><{/if}>]"
                                           value="<{if $ev.exid}><{$ev.expersons}><{else}><{$ev.persons}><{/if}>"
                                           class="form-control"><br>
                                    <a href="entry.php?eid=<{$ev.eid}><{if $ev.exid}>&sub=<{$ev.exid}><{/if}>"
                                       title="<{$ev.date}> <{$ev.title}>"><{$smarty.const._REGISTER}></a>
                                    <a href="receipt.php?eid=<{$ev.eid}><{if $ev.exid}>&sub=<{$ev.exid}><{/if}>"
                                       title="<{$ev.date}> <{$ev.title}>"><{$smarty.const._MD_DETAIL}></a>
                                    (<{$ev.reserved}>/<{$ev.persons}>)
                                </div>
                            <{/foreach}>
                        <{elseif $peid}>
                            <a href="editdate.php?eid=<{$peid}>&adds=<{$day}>+<{$time}>"
                               title="<{$day}> <{$time}> <{$event[$peid].title}>"><{$smarty.const._MD_ADD_EXTENT}></a>
                        <{/if}>
                    </td>
                <{/foreach}>
            </tr>
        <{/foreach}>
    </table>
    <p style="text-align:center;"><input type="submit" value="<{$smarty.const._MD_UPDATE}>" class="btn btn-primary"></p>
    </from>
