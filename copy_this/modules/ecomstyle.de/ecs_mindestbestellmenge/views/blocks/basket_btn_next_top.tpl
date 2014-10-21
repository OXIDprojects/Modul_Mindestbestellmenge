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