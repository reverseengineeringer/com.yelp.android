package com.brightcove.player.management;

import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventListener;
import java.util.List;
import java.util.Map;

public class BrightcovePluginManager$OnRegisterPluginListener
  implements EventListener
{
  protected BrightcovePluginManager$OnRegisterPluginListener(BrightcovePluginManager paramBrightcovePluginManager) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    if (properties.containsKey("pluginName"))
    {
      paramEvent = (String)properties.get("pluginName");
      Log.v(BrightcovePluginManager.access$000(), "OnRegisterPluginListener: plugin: " + paramEvent);
      if (!BrightcovePluginManager.access$100(this$0).contains(paramEvent)) {
        BrightcovePluginManager.access$100(this$0).add(paramEvent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.management.BrightcovePluginManager.OnRegisterPluginListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */