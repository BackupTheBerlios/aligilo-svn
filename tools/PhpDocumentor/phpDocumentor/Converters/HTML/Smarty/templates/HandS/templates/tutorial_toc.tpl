{if count($toc)}
<!-- sxangxoj de Paul Ebermann -->
<div id="enhavtabelo">
<h1 align="center">Enhavtabelo</h1>
<ul>{assign var="context" value="start"}
{section name=toc loop=$toc}
{if $toc[toc].tagname == 'refsect1'}
{if $context == 'refsect1'}
  </li>{/if}
{if $context == 'refsect2'}
      </li>
    </ul>
  </li>
{/if}
{if $context == 'refsect3'}
          </li>
        </ul>
      </li>
    </ul>
  </li>
{/if}
  <li class="toc-l1">{$toc[toc].link}{assign var="context" value="refsect1"}{/if}
{if $toc[toc].tagname == 'refsect2'}
{if $context == 'start'}
  <li class="toc-l1">...
    <ul>
{/if}
{if $context == 'refsect1'}

    <ul>
{/if}
{if $context == 'refsect2'}</li>
{/if}
{if $context == 'refsect3'}</li>
        </ul>
      </li>
{/if}
      <li class="toc-l2">{$toc[toc].link}{assign var="context" value="refsect2"}{/if}
{if $toc[toc].tagname == 'refsect3'}
{if $context == 'start'}
  <li class="toc-l1">...
    <ul>
      <li class="toc-l2">...
        <ul>
{/if}
{if $context == 'refsect1'}

    <ul>
      <li class="toc-l2">...
        <ul>
{/if}
{if $context == 'refsect2'}

        <ul>
{/if}
{if $context == 'refsect3'}</li>
{/if}
          <li class="toc-l3">{$toc[toc].link}{assign var="context" value="refsect3"}{/if}
{if $toc[toc].tagname == 'table'}
<br/> Tabelo: {$toc[toc].link}
{/if}
{if $toc[toc].tagname == 'example'}
<br/> Ekzemplo: {$toc[toc].link}
{/if}
{/section}
</ul>
</div>
{/if}