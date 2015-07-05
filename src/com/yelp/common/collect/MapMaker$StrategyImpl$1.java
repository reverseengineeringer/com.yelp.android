package com.yelp.common.collect;

import java.lang.ref.WeakReference;
import java.util.TimerTask;
import java.util.concurrent.ConcurrentMap;

class MapMaker$StrategyImpl$1
  extends TimerTask
{
  MapMaker$StrategyImpl$1(MapMaker.StrategyImpl paramStrategyImpl, WeakReference paramWeakReference1, WeakReference paramWeakReference2) {}
  
  public void run()
  {
    Object localObject = val$keyReference.get();
    if (localObject != null) {
      this$0.map.remove(localObject, val$valueReference.get());
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.common.collect.MapMaker.StrategyImpl.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */