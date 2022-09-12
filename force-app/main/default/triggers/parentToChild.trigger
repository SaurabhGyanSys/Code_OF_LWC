/*trigger parentToChild on Account (after update) {
    
    parentToChildHandler.parentToChildMethod(Trigger.new);
}*/

trigger parentToChild on Account (after update) {
    parentToChildHandler.modified(trigger.new,trigger.newMap);
}