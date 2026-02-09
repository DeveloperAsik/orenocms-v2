const createInstance = function (classObj, options) {
    var event;
    let eventString = "LazyLoad::Initialized";
    let instance = new classObj(options);
    try {
        event = new CustomEvent(eventString, {detail: {instance}});
    } catch (err) {
        event = document.createEvent("CustomEvent");
        event.initCustomEvent(eventString, false, false, {instance});
    }
    window.dispatchEvent(event);
};
export default function (classObj, options) {
    if (!options) {
        return;
    }
    if (!options.length) {
        createInstance(classObj, options);
    } else {
        for (let i = 0, optionsItem; (optionsItem = options[i]); i += 1) {
            createInstance(classObj, optionsItem);
        }
    }
}
