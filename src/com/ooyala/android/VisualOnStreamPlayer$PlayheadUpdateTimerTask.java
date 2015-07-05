package com.ooyala.android;

import android.os.Handler;
import com.visualon.OSMPBasePlayer.voOSBasePlayer;
import java.util.TimerTask;

public class VisualOnStreamPlayer$PlayheadUpdateTimerTask
  extends TimerTask
{
  protected VisualOnStreamPlayer$PlayheadUpdateTimerTask(VisualOnStreamPlayer paramVisualOnStreamPlayer) {}
  
  public void run()
  {
    if (this$0._player == null) {
      return;
    }
    if (VisualOnStreamPlayer.access$000(this$0) != this$0._player.GetPos()) {
      VisualOnStreamPlayer.access$100(this$0).sendEmptyMessage(0);
    }
    VisualOnStreamPlayer.access$002(this$0, this$0._player.GetPos());
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.VisualOnStreamPlayer.PlayheadUpdateTimerTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */