package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Message;
import com.yelp.android.ai.f;

class u
{
  private boolean a;
  private final Handler b = new Handler(new w(null));
  
  public void a(t<?> paramt)
  {
    
    if (a)
    {
      b.obtainMessage(1, paramt).sendToTarget();
      return;
    }
    a = true;
    paramt.d();
    a = false;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */