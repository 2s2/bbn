{capture name=path}
    <a href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html':'UTF-8'}" title="{l s='Go back to the Checkout' mod='bankwire'}">{l s='Checkout' mod='bankwire'}</a><span class="navigation-pipe">{$navigationPipe}</span>{l s='Bank-wire payment' mod='bankwire'}
{/capture}

<h1 class="page-heading">
    {l s='Order summary' mod='bankwire'}
</h1>

{assign var='current_step' value='payment'}
{include file="$tpl_dir./order-steps.tpl"}

{if $nbProducts <= 0}
	<p class="alert alert-warning">
        {l s='Your shopping cart is empty.' mod='bankwire'}
    </p>
{else}
    <form action="{$link->getModuleLink('bankwire', 'validation', [], true)|escape:'html':'UTF-8'}" method="post">
        <div class="box cheque-box">
            <h3 class="page-subheading">
                {l s='Bank-wire payment' mod='bankwire'}
            </h3>
            <p class="cheque-indent">
                <strong class="dark">
                    {l s='You have chosen to pay by bank wire.' mod='bankwire'} {l s='Here is a short summary of your order:' mod='bankwire'}
                </strong>
            </p>
            <p>
                - {l s='The total amount of your order is' mod='bankwire'}
                <span id="amount" class="price">{displayPrice price=$total}</span>
                {if $use_taxes == 1}
                    {l s='(tax incl.)' mod='bankwire'}
                {/if}
            </p>
            <p>
                - {l s='Please confirm your order by clicking "I confirm my order".' mod='bankwire'}
            </p>
        </div><!-- .cheque-box -->

        <p class="cart_navigation clearfix" id="cart_navigation">
        	<a class="btn btn-default icon-left" href="{$link->getPageLink('order', true, NULL, "step=3")|escape:'html':'UTF-8'}" title="{l s='Other payment methods' mod='bankwire'}">
                {l s='Other payment methods' mod='bankwire'}
            </a>
            <button class="btn btn-default btn-md icon-right" type="submit">
                <span>
                	{l s='I confirm my order' mod='bankwire'}
                </span>
            </button>
        </p>
    </form>
{/if}
