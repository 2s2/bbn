<!-- Block permanent links module HEADER -->
<div class="row-top">
  <div class="btn-menu current1 material-design-menu55"></div>
  <div class="row toogle_content1">
<ul id="header_links">
  <li id="header_link_about"><a href="{$link->getCMSLink('4')}" class="header_links_about">{l s='About' mod='blockpermanentlinks'}</a></li>
  <li id="header_link_delivery"><a href="{$link->getCMSLink('1')}" class="header_links_delivery">{l s='Delivery' mod='blockpermanentlinks'}</a></li>
  <li id="header_link_payment"><a href="{$link->getCMSLink('5')}" class="header_links_payment">{l s='Payment' mod='blockpermanentlinks'}</a></li>
  <li id="header_link_warranty"><a href="{$link->getCMSLink('2')}" class="header_link_warranty">{l s='Warranty' mod='blockpermanentlinks'}</a></li>
  <li id="header_link_contact">
    <a {if $page_name =='contact'}class="active"{/if} href="{$link->getPageLink('contact', true)|escape:'html'}" title="{l s='contact' mod='blockpermanentlinks'}">{l s='contact' mod='blockpermanentlinks'}</a>
  </li>
    <li id="header_link_blog">
  	<a {if $page_name =='blog'}class="active"{/if} href="{$link->getPageLink('smartblog')|escape:'html'}" title="{l s='blog' mod='blockpermanentlinks'}">{l s='blog' mod='blockpermanentlinks'}</a>
    </li>
    
     <li id="header_link_wishlist">
  	<a {if $page_name =='blog'}class="active"{/if} href="{$link->getModuleLink('blockwishlist', 'mywishlist', array(), true)|escape:'html':'UTF-8'}" title="{l s='my wishlist' mod='blockpermanentlinks'}">{l s='my wishlist' mod='blockpermanentlinks'}</a>
    </li>
  
    
</ul></div></div>