<?php
/**
 * @link      http://www.ecomstyle.de
 * @package   main
 * @copyright (C) ecomstyle.de 2013
 * @version 1.0
 */

	$aModule = array(
		'id'          => 'ecs-mindestbestellmenge',
        'title'        => '<strong style="color:#04B431;">e</strong><strong>ComStyle.de</strong>:  <i>Mindestbestellmenge</i>',
		'description' => '<i>Einstellen einer Mindestbestellmenge an Artikeln in den Moduleinstellungen</i>
                <br><iframe frameborder="no" width="600px" height="400px" src="http://tinyurl.com/m23ozfo"></iframe>',
   
		'thumbnail'   => 'ecomstyle.png',
		'version'     => '1.0',
		'author'      => '<strong style="font-size: 17px;color:#04B431;">e</strong><strong style="font-size: 16px;">ComStyle.de</strong>',
		'email'       => 'info@ecomstyle.de',
		'url'         => 'http://ecomstyle.de',
		'extend'      => array(
			'oxviewconfig' => 'ecomstyle.de/ecs_mindestbestellmenge/extend/oxviewconfig_mindestbestellmenge',
		),
   'templates' => array(

    ),
    'files' => array(
    ),
    'blocks' => array(
            array('template' => 'page/checkout/order.tpl', 'block'=>'checkout_order_btn_confirm_bottom', 'file'=>'checkout_order_btn_confirm_bottom.tpl'),
            array('template' => 'page/checkout/basket.tpl', 'block'=>'checkout_basket_main', 'file'=>'checkout_basket_main.tpl'),
            array('template' => 'page/checkout/basket.tpl', 'block'=>'basket_btn_next_top', 'file'=>'basket_btn_next_top.tpl'),
            array('template' => 'page/checkout/basket.tpl', 'block'=>'basket_btn_next_bottom', 'file'=>'basket_btn_next_bottom.tpl'),
     ),
    'settings' => array(
        array('group' => 'ecs_main', 'name' => 'ecs_mindestbestellmenge', 'type' => 'str',  'value' => '1'),    
    ),
);
?>