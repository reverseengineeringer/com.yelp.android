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
import java.util.UUID;

public class VideoPlaybackController$OnPlayListener
  implements EventListener
{
  protected VideoPlaybackController$OnPlayListener(VideoPlaybackController paramVideoPlaybackController) {}
  
  @Default
  public void processEvent(final Event paramEvent)
  {
    Log.v(VideoPlaybackController.TAG, "OnPlayListener: playEvent = " + paramEvent + ", currentTime = " + VideoPlaybackController.access$000(this$0));
    if ((VideoPlaybackController.access$000(this$0) != 0) || (properties.containsKey("skipCuePoints"))) {}
    ArrayList localArrayList;
    do
    {
      return;
      Log.i(VideoPlaybackController.TAG, "cuePoints = " + VideoPlaybackController.access$100(this$0));
      localArrayList = new ArrayList();
      localObject1 = VideoPlaybackController.access$100(this$0).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (CuePoint)((Iterator)localObject1).next();
        if ((((CuePoint)localObject2).getPositionType().equals(CuePoint.PositionType.BEFORE)) || ((((CuePoint)localObject2).getPositionType().equals(CuePoint.PositionType.POINT_IN_TIME)) && (((CuePoint)localObject2).getPosition() == 0))) {
          localArrayList.add(localObject2);
        }
      }
    } while (localArrayList.isEmpty());
    Log.i(VideoPlaybackController.TAG, "batch = " + localArrayList);
    paramEvent.preventDefault();
    paramEvent.stopPropagation();
    properties.put("skipCuePoints", Boolean.valueOf(true));
    final Object localObject1 = UUID.randomUUID();
    VideoPlaybackController.access$300(this$0).once("cuePoint", new EventListener()
    {
      @Default
      public void processEvent(Event paramAnonymousEvent)
      {
        if (localObject1.equals(properties.get("uuid"))) {
          VideoPlaybackController.access$200(this$0).emit(paramEvent.getType(), paramEventproperties);
        }
      }
    });
    Object localObject2 = new HashMap();
    ((Map)localObject2).put("cue_points", localArrayList);
    ((Map)localObject2).put("endTime", Integer.valueOf(0));
    ((Map)localObject2).put("startTime", Integer.valueOf(0));
    ((Map)localObject2).put("original", paramEvent);
    ((Map)localObject2).put("uuid", localObject1);
    VideoPlaybackController.access$400(this$0).emit("cuePoint", (Map)localObject2);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController.OnPlayListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */