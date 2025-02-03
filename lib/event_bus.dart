/* 
The event bus is the only thing with direct access to the DB.
nodes can subscribe themselves to specific methods in the event bus. such as:

EventBus.subscribe(eventBusFn, callbackFn)

or you can register functions to the event bus. such as:

EventBus.call(eventBusFn, args)

The event bus has hardcoded functions that don't change. (Because if they did change a lot of code would be effected.)
The event bus could also have mutexes for multithreading and things if necessary.

the event bus code would look like:

class EventBus {

  static Map<Function, Function> subscriptions = {};

  static void subscribe(Function fn, Function callbackFn){
    subscriptions[fn] = callbackFn;
  }

  static void call(Function fn){
    fn();
    if (subscriptions.contains(fn)){
      subscriptions[fn]!();
    }
  }

  /// Now supports async functions
  static Future<void> call(Function fn, [List<dynamic>? args]) async {
    dynamic fnResult;

    if (args == null){
      fnResult = fn();
    } 
    else {
      fnResult = Function.apply(fn, args);
    }

    if (fnResult is Future){
      await fnResult;
    }


    // run any result from the subscriptions
    if (subscriptions.containsKey(fn)){
      var subResult = subscriptions[fn]!();
      if (subResult is Future){
        await subResult;
      }
    }

  }
}
*/