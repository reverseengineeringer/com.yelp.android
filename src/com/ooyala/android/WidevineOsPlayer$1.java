package com.ooyala.android;

import android.util.Log;

class WidevineOsPlayer$1
  implements Runnable
{
  WidevineOsPlayer$1(WidevineOsPlayer paramWidevineOsPlayer) {}
  
  public void run()
  {
    Log.v("WidevineOsPlayer", "onFrozen(): running the runnable");
    if (this$0.getState() != OoyalaPlayer.State.ERROR)
    {
      this$0.setState(OoyalaPlayer.State.COMPLETED);
      WidevineOsPlayer.access$000(this$0).reset();
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.WidevineOsPlayer.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */