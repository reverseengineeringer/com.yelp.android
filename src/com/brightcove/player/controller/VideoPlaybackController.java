package com.brightcove.player.controller;

import android.util.Log;
import com.brightcove.player.event.AbstractComponent;
import com.brightcove.player.event.Component;
import com.brightcove.player.event.Emits;
import com.brightcove.player.event.EventEmitter;
import com.brightcove.player.event.ListensFor;
import com.brightcove.player.model.CuePoint;
import com.brightcove.player.model.CuePoint.PositionType;
import com.brightcove.player.model.Source;
import com.brightcove.player.model.Video;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

@Emits(events={"completed", "cuePoint", "didSelectSource", "didSetVideo", "play", "selectSource", "setSource", "setVideoStill"})
@ListensFor(events={"completed", "cuePoint", "didSeekTo", "didSetSource", "play", "progress", "readyToPlay", "removeCuePoint", "setCuePoint", "setCuePoints", "setVideo", "willChangeVideo"})
public class VideoPlaybackController
  extends AbstractComponent
  implements Component
{
  public static final String TAG = VideoPlaybackController.class.getSimpleName();
  private List<CuePoint> cuePoints;
  private int currentTime;
  private boolean hasSeenPlayerReadyEvent;
  VideoPlaybackController.OnDidSeekToListener onDidSeekToListener;
  VideoPlaybackController.OnDidSetSourceListener onDidSetSourceListener;
  VideoPlaybackController.OnPlayListener onPlayListener;
  VideoPlaybackController.OnPlayerReadyListener onPlayerReadyListener;
  VideoPlaybackController.OnProgressUpdateListener onProgressUpdateListener;
  VideoPlaybackController.OnRemoveCuePointListener onRemoveCuePointListener;
  VideoPlaybackController.OnSetCuePointListener onSetCuePointListener;
  VideoPlaybackController.OnSetCuePointsListener onSetCuePointsListener;
  VideoPlaybackController.OnSetVideoListener onSetVideoListener;
  VideoPlaybackController.OnSourceSelectedListener onSourceSelectedListener;
  VideoPlaybackController.OnVideoCompletedListener onVideoCompletedListener;
  VideoPlaybackController.OnWillChangeVideoListener onWillChangeVideoListener;
  private List<Source> pendingSourcesToLoad;
  private Map<Source, Video> sourceToVideoMapping;
  
  public VideoPlaybackController(EventEmitter paramEventEmitter)
  {
    super(paramEventEmitter, VideoPlaybackController.class);
    initialize();
  }
  
  private void emitCuePoints(int paramInt1, int paramInt2)
  {
    Log.v(TAG, "emitCuePoints: beginning = " + paramInt1 + ", end = " + paramInt2);
    ArrayList localArrayList = new ArrayList();
    Object localObject = cuePoints.iterator();
    while (((Iterator)localObject).hasNext())
    {
      CuePoint localCuePoint = (CuePoint)((Iterator)localObject).next();
      if (localCuePoint.getPositionType().equals(CuePoint.PositionType.POINT_IN_TIME))
      {
        int i = localCuePoint.getPosition();
        if ((paramInt1 < i) && (i <= paramInt2)) {
          localArrayList.add(localCuePoint);
        }
      }
    }
    if (!localArrayList.isEmpty())
    {
      Log.v(TAG, "emitCuePoints: batch = " + localArrayList);
      Collections.sort(localArrayList);
      localObject = new HashMap();
      ((Map)localObject).put("startTime", Integer.valueOf(paramInt1));
      ((Map)localObject).put("endTime", Integer.valueOf(paramInt2));
      ((Map)localObject).put("cue_points", localArrayList);
      eventEmitter.emit("cuePoint", (Map)localObject);
    }
  }
  
  public boolean hasPendingSourcesToLoad()
  {
    return pendingSourcesToLoad.size() > 0;
  }
  
  public void initialize()
  {
    Log.i(TAG, "Initializing VideoPlaybackController");
    hasSeenPlayerReadyEvent = false;
    pendingSourcesToLoad = new ArrayList();
    sourceToVideoMapping = new HashMap();
    cuePoints = new ArrayList();
    initializeListeners();
  }
  
  protected void initializeListeners()
  {
    onSetVideoListener = new VideoPlaybackController.OnSetVideoListener(this);
    onPlayerReadyListener = new VideoPlaybackController.OnPlayerReadyListener(this);
    onDidSetSourceListener = new VideoPlaybackController.OnDidSetSourceListener(this);
    onPlayListener = new VideoPlaybackController.OnPlayListener(this);
    onProgressUpdateListener = new VideoPlaybackController.OnProgressUpdateListener(this, null);
    onVideoCompletedListener = new VideoPlaybackController.OnVideoCompletedListener(this);
    onRemoveCuePointListener = new VideoPlaybackController.OnRemoveCuePointListener(this);
    onSetCuePointListener = new VideoPlaybackController.OnSetCuePointListener(this);
    onSetCuePointsListener = new VideoPlaybackController.OnSetCuePointsListener(this);
    onDidSeekToListener = new VideoPlaybackController.OnDidSeekToListener(this);
    onWillChangeVideoListener = new VideoPlaybackController.OnWillChangeVideoListener(this);
    addListener("readyToPlay", onPlayerReadyListener);
    addListener("setVideo", onSetVideoListener);
    addListener("didSetSource", onDidSetSourceListener);
    addListener("play", onPlayListener);
    addListener("progress", onProgressUpdateListener);
    addListener("completed", onVideoCompletedListener);
    addListener("removeCuePoint", onRemoveCuePointListener);
    addListener("setCuePoint", onSetCuePointListener);
    addListener("setCuePoints", onSetCuePointsListener);
    addListener("didSeekTo", onDidSeekToListener);
    addListener("willChangeVideo", onWillChangeVideoListener);
  }
}

/* Location:
 * Qualified Name:     com.brightcove.player.controller.VideoPlaybackController
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */