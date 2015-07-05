package com.yelp.android.ui.activities.videotrim;

import android.annotation.TargetApi;
import android.os.AsyncTask.Status;
import com.yelp.android.serializable.LocalVideo;

@TargetApi(14)
public class m
{
  private final int a;
  private LocalVideo b;
  private int c;
  private o d;
  private p e;
  
  public m(int paramInt, p paramp)
  {
    a = paramInt;
    e = paramp;
  }
  
  public void a(int paramInt)
  {
    try
    {
      if ((e != null) && (c < b.getDuration()) && (paramInt > c) && ((d == null) || (d.getStatus() == AsyncTask.Status.FINISHED)))
      {
        d = new o(this, null);
        d.execute(new Integer[] { Integer.valueOf(paramInt) });
      }
      return;
    }
    finally {}
  }
  
  public void a(LocalVideo paramLocalVideo)
  {
    b = paramLocalVideo;
    c = 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.videotrim.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */