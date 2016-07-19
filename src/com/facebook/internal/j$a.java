package com.facebook.internal;

import android.content.Context;

class j$a
  implements Runnable
{
  private Context a;
  private j.d b;
  private boolean c;
  
  j$a(Context paramContext, j.d paramd, boolean paramBoolean)
  {
    a = paramContext;
    b = paramd;
    c = paramBoolean;
  }
  
  public void run()
  {
    j.a(b, a, c);
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */