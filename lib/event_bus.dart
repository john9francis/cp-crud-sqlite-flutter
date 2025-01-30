/* 
The event bus is the only thing with direct access to the DB.
nodes can subscribe themselves to specific methods in the event bus. such as:

EventBus.subscribe(eventBusFn, callbackFn)

or you can register functions to the event bus. such as:

EventBus.call(eventBusFn, args)

The event bus has hardcoded functions that don't change. (Because if they did change a lot of code would be effected.)
The event bus could also have mutexes for multithreading and things if necessary.

the event bus code would look like:

Map<fn, callbackFn> subscriptions;

void call(fn, {args}){
  fn(args);
  subscriptions[fn]();
}

void subscribe(fn, callbackFn){
  subscriptions[fn] = callbackFn;
}
*/