package com.ooyala.android;

import android.os.Handler;
import java.util.TimerTask;

public class AbstractDefaultOoyalaPlayerControls$HideTimerTask
  extends TimerTask
{
  protected AbstractDefaultOoyalaPlayerControls$HideTimerTask(AbstractDefaultOoyalaPlayerControls paramAbstractDefaultOoyalaPlayerControls) {}
  
  public void run()
  {
    this$0._hideHandler.sendEmptyMessage(0);
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.AbstractDefaultOoyalaPlayerControls.HideTimerTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */