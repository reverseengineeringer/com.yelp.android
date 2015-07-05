package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.Default;
import com.brightcove.player.event.Event;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.EventListener;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class VideoPlaybackController$OnVideoCompletedListener
  implements EventListener
{
  protected VideoPlaybackController$OnVideoCompletedListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(Event paramEvent)
  {
    Log.v(VideoPlaybackController.TAG, "OnVideoCompletedListener: " + paramEvent);
    VideoPlaybackController.access$002(this$0, 0);
    if (properties.containsKey("skipCuePoints")) {}
    ArrayList localArrayList;
    do
    {
      return;
      localArrayList = new ArrayList();
      localObject = VideoPlaybackController.access$100(this$0).iterator();
      while (((Iterator)localObject).hasNext())
      {
        CuePoint localCuePoint = (CuePoint)((Iterator)localObject).next();
        if (localCuePoint.getPositionType().equals(CuePoint.PositionType.AFTER)) {
          localArrayList.add(localCuePoint);
        }
      }
    } while (localArrayList.isEmpty());
    paramEvent.preventDefault();
    paramEvent.stopPropagation();
    properties.put("skipCuePoints", Boolean.valueOf(true));
    Object localObject = new HashMap();
    ((Map)localObject).put("cue_points", localArrayList);
    ((Map)localObject).put("endTime", Integer.valueOf(0));
    ((Map)localObject).put("startTime", Integer.valueOf(0));
    ((Map)localObject).put("original", paramEvent);
    VideoPlaybackController.access$1500(this$0).emit("cuePoint", (Map)localObject);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnVideoCompletedListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */