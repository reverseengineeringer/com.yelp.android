package com.yelp.android.al;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.TransitionDrawable;

public class b<T extends Drawable>
  implements c<T>
{
  private final c<T> a;
  private final int b;
  
  public b(c<T> paramc, int paramInt)
  {
    a = paramc;
    b = paramInt;
  }
  
  public boolean a(T paramT, c.a parama)
  {
    Drawable localDrawable = parama.b();
    if (localDrawable != null)
    {
      paramT = new TransitionDrawable(new Drawable[] { localDrawable, paramT });
      paramT.setCrossFadeEnabled(true);
      paramT.startTransition(b);
      parama.c(paramT);
      return true;
    }
    a.a(paramT, parama);
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.al.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */