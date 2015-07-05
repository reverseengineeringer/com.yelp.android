package com.brightcove.player.event;

import com.brightcove.player.util.ErrorUtil;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public abstract class AbstractComponent
  implements Component
{
  protected EventEmitter eventEmitter;
  protected Map<String, Integer> listenerTokens;
  
  public AbstractComponent(EventEmitter paramEventEmitter, Class<? extends Component> paramClass)
  {
    if (paramEventEmitter == null) {
      throw new IllegalArgumentException(ErrorUtil.getMessage("eventEmitterRequired"));
    }
    eventEmitter = RegisteringEventEmitter.build(paramEventEmitter, paramClass);
    listenerTokens = new HashMap();
  }
  
  protected void addListener(String paramString, EventListener paramEventListener)
  {
    listenerTokens.put(paramString, Integer.valueOf(eventEmitter.on(paramString, paramEventListener)));
  }
  
  public EventEmitter getEventEmitter()
  {
    return eventEmitter;
  }
  
  protected void removeListeners()
  {
    Iterator localIterator = listenerTokens.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      eventEmitter.off(str, ((Integer)listenerTokens.get(str)).intValue());
    }
    listenerTokens.clear();
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.AbstractComponent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */