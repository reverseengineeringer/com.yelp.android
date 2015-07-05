package com.brightcove.player.event;

import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class EventLogger$1
  implements EventListener
{
  EventLogger$1(EventLogger paramEventLogger) {}
  
  public void processEvent(Event paramEvent)
  {
    if (EventLogger.access$000(this$0).contains(paramEvent.getType())) {}
    do
    {
      return;
      StringBuffer localStringBuffer = new StringBuffer(paramEvent.getType());
      Object localObject = properties.get("emitter");
      if (localObject != null)
      {
        localStringBuffer.append(" (");
        localStringBuffer.append(localObject);
        localStringBuffer.append(')');
      }
      if (EventLogger.access$100(this$0))
      {
        localStringBuffer.append(" { ");
        localObject = properties.entrySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          localStringBuffer.append((String)localEntry.getKey());
          localStringBuffer.append(": ");
          localStringBuffer.append(localEntry.getValue());
          localStringBuffer.append(' ');
        }
        localStringBuffer.append('}');
      }
      Log.d(EventLogger.access$200(this$0), localStringBuffer.toString());
    } while ((!"error".equals(paramEvent.getType())) || (!properties.containsKey("error")));
    Log.e("EventLogger", "Unhandled error event", (Throwable)properties.get("error"));
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.event.EventLogger.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */