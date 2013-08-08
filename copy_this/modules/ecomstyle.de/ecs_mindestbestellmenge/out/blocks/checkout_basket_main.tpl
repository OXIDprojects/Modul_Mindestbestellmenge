[{assign var='minbestm' value=$oViewConf->getMindestbestellmenge() }]
[{assign var='stueck' value=$oxcmp_basket->getItemsCount() }]
    [{if $stueck >= $minbestm}]
    [{$smarty.block.parent}]
    [{else}]
     <div class="status error corners">
        <p>[{ oxmultilang ident="ecs_mindestbestellmenge1" }] [{$minbestm}] [{ oxmultilang ident="ecs_mindestbestellmenge2" }]</p>
     </div>
     [{$smarty.block.parent}]
     [{/if}]