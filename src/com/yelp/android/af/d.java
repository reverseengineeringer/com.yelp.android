package com.yelp.android.af;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

public class d<T extends Drawable>
  implements e<T>
{
  private final e<T> a;
  private final int b;
  
  public d(e<T> parame, int paramInt)
  {
    a = parame;
    b = paramInt;
  }
  
  public boolean a(T paramT, f paramf)
  {
    Drawable localDrawable = paramf.b();
    if (localDrawable != null)
    {
      paramT = new TransitionDrawable(new Drawable[] { localDrawable, paramT });
      paramT.setCrossFadeEnabled(true);
      paramT.startTransition(b);
      paramf.b(paramT);
      return true;
    }
    a.a(paramT, paramf);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.af.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */