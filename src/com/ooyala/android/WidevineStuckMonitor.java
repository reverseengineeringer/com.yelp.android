package com.ooyala.android;

import android.util.Log;
import java.util.Observable;
import java.util.Observer;
import java.util.concurrent.atomic.AtomicBoolean;

public final class WidevineStuckMonitor
  implements Observer
{
  private static final int END_TIME_WINDOW_MILLISECONDS = 15000;
  private static final int MAX_FREEZE_MILLISECONDS = 2000;
  private static final String TAG = "WidevineStuckMonitor";
  private final Player drmPlayer;
  private WidevineStuckMonitor.VideoAtWallMsec lastRecord;
  private final WidevineStuckMonitor.Listener listener;
  private final int monitorAfterMsec;
  private final AtomicBoolean onFrozenSent;
  private final OoyalaPlayer ooyalaPlayer;
  
  public WidevineStuckMonitor(OoyalaPlayer paramOoyalaPlayer, Player paramPlayer, WidevineStuckMonitor.Listener paramListener)
  {
    ooyalaPlayer = paramOoyalaPlayer;
    drmPlayer = paramPlayer;
    listener = paramListener;
    onFrozenSent = new AtomicBoolean();
    paramOoyalaPlayer = calculateMonitorAfterMsec(paramOoyalaPlayer.getCurrentItem());
    if (paramOoyalaPlayer != null)
    {
      ooyalaPlayer.addObserver(this);
      monitorAfterMsec = paramOoyalaPlayer.intValue();
      Log.v("WidevineStuckMonitor", "Constructor(): enabled, monitorAfterMsec=" + monitorAfterMsec);
      return;
    }
    monitorAfterMsec = Integer.MAX_VALUE;
    Log.v("WidevineStuckMonitor", "Constructor(): disabled, monitorAfterMsec=" + monitorAfterMsec);
  }
  
  private Integer calculateMonitorAfterMsec(Video paramVideo)
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (paramVideo != null)
    {
      int i = paramVideo.getDuration();
      localObject1 = localObject2;
      if (i > 15000) {
        localObject1 = Integer.valueOf(Math.max(0, i - 15000));
      }
    }
    Log.v("WidevineStuckMonitor", "calculaeMonitorAfterMsec(): duration=" + paramVideo.getDuration() + ", oi=" + localObject1);
    return (Integer)localObject1;
  }
  
  private void checkFrozen()
  {
    if ((lastRecord != null) && (System.currentTimeMillis() - lastRecord.wallMsec >= 2000L))
    {
      Log.v("WidevineStuckMonitor", "doFreezeCheck(): looks frozen to me!");
      sendOnFrozen();
    }
  }
  
  private void checkInWindow(int paramInt)
  {
    if ((lastRecord == null) || (paramInt != lastRecord.videoMsec))
    {
      updateLastRecord(paramInt);
      return;
    }
    checkFrozen();
  }
  
  private void checkWhilePlaying()
  {
    int i = drmPlayer.currentTime();
    if (i >= monitorAfterMsec) {
      checkInWindow(i);
    }
  }
  
  private void sendOnFrozen()
  {
    if (onFrozenSent.compareAndSet(false, true))
    {
      Log.v("WidevineStuckMonitor", "sendOnFrozen(): sending");
      ooyalaPlayer.deleteObserver(this);
      listener.onFrozen();
    }
  }
  
  private void updateLastRecord(int paramInt)
  {
    lastRecord = new WidevineStuckMonitor.VideoAtWallMsec(paramInt);
  }
  
  public void destroy()
  {
    ooyalaPlayer.deleteObserver(this);
  }
  
  public void reset()
  {
    Log.v("WidevineStuckMonitor", "reset");
    ooyalaPlayer.addObserver(this);
    onFrozenSent.set(false);
  }
  
  public void update(Observable paramObservable, Object paramObject)
  {
    paramObservable = paramObject.toString();
    if ((drmPlayer.isPlaying()) && (paramObservable.equals("timeChanged"))) {
      checkWhilePlaying();
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.WidevineStuckMonitor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */