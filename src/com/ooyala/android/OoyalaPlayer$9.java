package com.ooyala.android;

import android.os.Handler;

class OoyalaPlayer$9
  implements PaginatedItemListener
{
  OoyalaPlayer$9(OoyalaPlayer paramOoyalaPlayer) {}
  
  public void onItemsFetched(int paramInt1, int paramInt2, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$1100(this$0).post(new Runnable()
    {
      public void run()
      {
        this$0.changeCurrentItem(OoyalaPlayer.access$900(this$0).nextVideo());
        this$0.pause();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */