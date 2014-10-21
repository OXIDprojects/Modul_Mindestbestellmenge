[{*
/*    Please retain this copyright header in all versions of the software
 *
 *    Copyright (C) 2014  Josef A. Puckl | eComStyle.de
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful,
 *    but WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *    GNU General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    along with this program.  If not, see {http://www.gnu.org/licenses/}.
 */
*}]
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