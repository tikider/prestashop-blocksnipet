{*
* 2007-2011 PrestaShop 
*
* NOTICE OF LICENSE
*
* This source file is subject to the Academic Free License (AFL 3.0)
* that is bundled with this package in the file LICENSE.txt.
* It is also available through the world-wide-web at this URL:
* http://opensource.org/licenses/afl-3.0.php
* If you did not receive a copy of the license and are unable to
* obtain it through the world-wide-web, please send an email
* to license@prestashop.com so we can send you a copy immediately.
*
* DISCLAIMER
*
* Do not edit or add to this file if you wish to upgrade PrestaShop to newer
* versions in the future. If you wish to customize PrestaShop for your
* needs please refer to http://www.prestashop.com for more information.
*
*  @author PrestaShop SA <contact@prestashop.com>
*  @copyright  2007-2011 PrestaShop SA
*  @version  Release: $Revision: 6594 $
*  @license    http://opensource.org/licenses/afl-3.0.php  Academic Free License (AFL 3.0)
*  International Registered Trademark & Property of PrestaShop SA
*}

<!-- Block links module -->
<div id="snipets_block" style="margin=top:10px;">
	<h4>
	{if $url}
		<a href="{$url}">{$title}</a>
	{else}
		{$title}
	{/if}
	</h4>
            {if $arrange == 1}
                {foreach from=$blocklink_links item=blocklink_link}
               
                    <div style="width:100%;padding-bottom:10px;border-bottom:1px solid #aaa;">
                        <h5><a href="{$blocklink_link.url|htmlentities}"{if $blocklink_link.newWindow} onclick="window.open(this.href);return false;"{/if}>{$blocklink_link.$lang}</a></h5>
                        <p>
                        <img src="{$imagedir}{$blocklink_link.image}" alt="" title="" style="float:left;"/>
                        {$blocklink_link.$snip}</p>
                        <div class="flatclear">&nbsp;</div>
                    </div>
                    
                {/foreach}

            {else}
                <ul class="block_content" >
                {foreach from=$blocklink_links item=blocklink_link}
                    <li>
                        <a href="{$blocklink_link.url|htmlentities}"{if $blocklink_link.newWindow} onclick="window.open(this.href);return false;"{/if}>{$blocklink_link.$lang}</a>
                        <img src="{$imagedir}{$blocklink_link.image}" alt="" title="" />
                        <p>{$blocklink_link.$snip}</p>
                    </li>
                {/foreach}
                </ul>
            {/if}
            <div class="flatclear">&nbsp;</div>
	
</div>
<!-- /Block links module -->
