package com.yelp.android.ag;

import android.graphics.Bitmap;
import android.os.Handler;
import com.yelp.android.al.c;
import com.yelp.android.am.g;

class f$a
  extends g<Bitmap>
{
  private final Handler a;
  private final int b;
  private final long c;
  private Bitmap d;
  
  public f$a(Handler paramHandler, int paramInt, long paramLong)
  {
    a = paramHandler;
    b = paramInt;
    c = paramLong;
  }
  
  public void a(Bitmap paramBitmap, c<? super Bitmap> paramc)
  {
    d = paramBitmap;
    paramBitmap = a.obtainMessage(1, this);
    a.sendMessageAtTime(paramBitmap, c);
  }
  
  public Bitmap a_()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ag.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */