[{assign var='minbestm' value=$oViewConf->getMindestbestellmenge() }]
[{assign var='stueck' value=$oxcmp_basket->getItemsCount() }]
    [{if $stueck >= $minbestm}]
                         [{$smarty.block.parent}]
                     
    [{else}]
                           <form action="[{ $oViewConf->getSslSelfLink() }]" method="post">
                            [{ $oViewConf->getHiddenSid() }]
                            <input type="hidden" name="cl" value="user">
                            <button type="submit" disabled class="submitButton largeButton nextStep" style="cursor:default">[{ oxmultilang ident="CONTINUE_TO_NEXT_STEP" }]</button>
                        </form>
    [{/if}]