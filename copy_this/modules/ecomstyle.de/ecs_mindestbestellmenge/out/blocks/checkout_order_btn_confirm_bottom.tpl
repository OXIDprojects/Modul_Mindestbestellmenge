<form action="[{ $oViewConf->getSslSelfLink() }]" method="post" id="orderConfirmAgbBottom">
                            [{ $oViewConf->getHiddenSid() }]
                            [{ $oViewConf->getNavFormParams() }]
                            <input type="hidden" name="cl" value="order">
                            <input type="hidden" name="fnc" value="[{$oView->getExecuteFnc()}]">
                            <input type="hidden" name="challenge" value="[{$challenge}]">
                            <input type="hidden" name="sDeliveryAddressMD5" value="[{$oView->getDeliveryAddressMD5()}]">

                            <div class="agb">
                                [{if $oView->isActive('PsLogin') }]
                                    <input type="hidden" name="ord_agb" value="1">
                                [{else}]
                                    [{if $oView->isConfirmAGBActive()}]
                                            <input type="hidden" name="ord_agb" value="0">
                                    [{/if}]
                                [{/if}]
                            </div>
                        [{assign var='minbestm' value=$oViewConf->getMindestbestellmenge() }]
                        [{assign var='stueck' value=$oxcmp_basket->getItemsCount() }]
                        [{if $stueck >= $minbestm}]
                            <div class="lineBox clear">
                                <a href="[{ oxgetseourl ident=$oViewConf->getPaymentLink() }]" class="prevStep submitButton largeButton">[{ oxmultilang ident="PREVIOUS_STEP" }]</a>
                                <button type="submit" class="submitButton nextStep largeButton">[{ oxmultilang ident="SUBMIT_ORDER" }]</button>
                            </div>
                         [{else}]
                            <div class="status error corners">
                                 <p>[{ oxmultilang ident="ecs_mindestbestellmenge1" }] [{$minbestm}] [{ oxmultilang ident="ecs_mindestbestellmenge2" }]</p>
                            </div>

                            <div class="lineBox clear">
                                <a href="[{ oxgetseourl ident=$oViewConf->getPaymentLink() }]" class="prevStep submitButton largeButton">[{ oxmultilang ident="PREVIOUS_STEP" }]</a>
                                <button type="submit" disabled class="submitButton nextStep largeButton" style="cursor:default">[{ oxmultilang ident="SUBMIT_ORDER" }]</button>
                            </div>
                          
                         [{/if}]    
                            
                        </form>