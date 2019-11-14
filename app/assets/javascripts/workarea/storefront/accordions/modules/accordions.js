/**
 * @namespace WORKAREA.accordions
 */
WORKAREA.registerModule('accordions', (function () {
    'use strict';

    var initAccordions = function (index, element) {
            var $element = $(element),
                data = $element.data('accordion'),
                options;

                if (_.isEmpty(data)) {

                    options = WORKAREA.config.defaultAccordionOptions;

                } else if (!_.isEmpty(data.presetConfig)) {

                    options = _.merge({}, WORKAREA.config[data.presetConfig], data);

                } else {

                    options = _.merge({}, WORKAREA.config.defaultAccordionOptions, data);
                }

            if (_.isNull(options.initIfLessThan)) {
                $element.accordion(options.uiAccordionOptions);
            } else if (WORKAREA.breakPoints.currentlyLessThan(options.initIfLessThan)) {
                $element.accordion(options.uiAccordionOptions);
            }
        },

        /**
         * @method
         * @name init
         * @memberof WORKAREA.accordions
         */
        init = function ($scope) {
            $('[data-accordion]', $scope).each(initAccordions);
        };

    return {
        init: init
    };
}()));
