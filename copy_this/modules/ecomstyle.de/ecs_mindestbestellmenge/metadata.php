<?php
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
$sMetadataVersion = '1.1';
$aModule = array(
    'id'            => 'ecs-mindestbestellmenge',
    'title'         => '<strong style="color:#04B431;">e</strong><strong>ComStyle.de</strong>:  <i>Mindestbestellmenge</i>',
    'description'   => '<i>Einstellen einer Mindestbestellmenge an Artikeln in den Moduleinstellungen</i>
                    <br><iframe frameborder="no" width="600px" height="400px" src="https://ssl-account.com/incl.oxidtheme.de/gratis.html"></iframe>',

    'thumbnail'     => 'ecomstyle.png',
    'version'       => '1.1',
    'author'        => '<strong style="font-size: 17px;color:#04B431;">e</strong><strong style="font-size: 16px;">ComStyle.de</strong>',
    'email'         => 'info@ecomstyle.de',
    'url'           => 'http://ecomstyle.de',
    'extend'        => array(
	    'oxviewconfig' => 'ecomstyle.de/ecs_mindestbestellmenge/extend/oxviewconfig_mindestbestellmenge',
    ),
    'blocks' => array(
        array('template' => 'page/checkout/order.tpl', 'block'=>'checkout_order_btn_confirm_bottom', 'file'=>'/views/blocks/checkout_order_btn_confirm_bottom.tpl'),
        array('template' => 'page/checkout/basket.tpl', 'block'=>'checkout_basket_main', 'file'=>'/views/blocks/checkout_basket_main.tpl'),
        array('template' => 'page/checkout/basket.tpl', 'block'=>'basket_btn_next_top', 'file'=>'/views/blocks/basket_btn_next_top.tpl'),
        array('template' => 'page/checkout/basket.tpl', 'block'=>'basket_btn_next_bottom', 'file'=>'/views/blocks/basket_btn_next_bottom.tpl'),
    ),
    'settings' => array(
        array('group' => 'ecs_main', 'name' => 'ecs_mindestbestellmenge', 'type' => 'str',  'value' => '1'),
    ),
);
?>