package com.facebook.internal;

import android.content.Context;

class j$b
  implements Runnable
{
  private Context a;
  private j.d b;
  
  j$b(Context paramContext, j.d paramd)
  {
    a = paramContext;
    b = paramd;
  }
  
  public void run()
  {
    j.a(b, a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.j.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */