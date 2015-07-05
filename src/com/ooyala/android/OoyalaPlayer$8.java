package com.ooyala.android;

import android.os.Handler;

class OoyalaPlayer$8
  implements PaginatedItemListener
{
  OoyalaPlayer$8(OoyalaPlayer paramOoyalaPlayer) {}
  
  public void onItemsFetched(int paramInt1, int paramInt2, OoyalaException paramOoyalaException)
  {
    OoyalaPlayer.access$1100(this$0).post(new OoyalaPlayer.8.1(this));
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.OoyalaPlayer.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */