package com.yelp.android.ui.activities.photoviewer;

import com.ooyala.android.OoyalaPlayer;
import com.ooyala.android.OoyalaPlayer.State;
import java.util.Observable;
import java.util.Observer;

class u
  implements Observer
{
  u(OoyalaVideoFragment paramOoyalaVideoFragment) {}
  
  public void update(Observable paramObservable, Object paramObject)
  {
    if (paramObject == "stateChanged")
    {
      paramObservable = ((OoyalaPlayer)paramObservable).getState();
      if (paramObservable == OoyalaPlayer.State.PLAYING) {
        a.m();
      }
    }
    do
    {
      do
      {
        return;
        if (paramObservable == OoyalaPlayer.State.PAUSED)
        {
          a.u();
          return;
        }
      } while (paramObservable != OoyalaPlayer.State.READY);
      a.t();
      return;
      if (paramObject == "playCompleted")
      {
        a.l();
        return;
      }
    } while (paramObject != "error");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.photoviewer.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */