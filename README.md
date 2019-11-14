Workarea Accordions
================================================================================

Accordions plugin for the Workarea Commerce platform.

Using Workarea Accordions
--------------------------------------------------------------------------------

Apply a `data-accordion` attribute to any element that contains appropriate accordion markup (See [https://jqueryui.com/accordion/](https://jqueryui.com/accordion/) for jQuery UI Accordion documentation). If no value is passed to the data attribute, then the default jQuery UI Accordion options will be used to init the accordion.

__New in version 2.0, the data attribute can only be passed an object for it's configuration.__

The configuration object accepts the following properties:

| Property | Data Type | Required? | Default| Notes |
|----------|-----------|-----------|--------|-------|
| `initIfLessThan` | string | no | `null` | Only init the accordion if breakpoint is less than the value passed. |
| `presetConfig` | string | no | n/a | Name of a preset configuration object |
| `uiAccordionOptions` | object | no | jQuery Accordion Defaults | jQuery Accordion Options |

### Examples
`.element{ data: { accordion: '' } }`

`.element{ data: { accordion: { presetConfig: 'alternativeAccordionOptions' }.to_json } }`

`.element{ data: { accordion: { initIfLessThan: 'medium', uiAccordionOptions: { animate: false } }.to_json } }`

Workarea Platform Documentation
--------------------------------------------------------------------------------

See [https://developer.workarea.com](https://developer.workarea.com) for Workarea platform documentation.

Copyright & Licensing
--------------------------------------------------------------------------------
Workarea Commerce Platform is released under the [Business Software License](https://github.com/workarea-commerce/workarea/blob/master/LICENSE)
