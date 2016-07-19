package com.google.android.gms.internal;

import android.view.View;
import java.lang.ref.WeakReference;

public class o$d
  implements w
{
  private final WeakReference<View> a;
  private final WeakReference<gr> b;
  
  public o$d(View paramView, gr paramgr)
  {
    a = new WeakReference(paramView);
    b = new WeakReference(paramgr);
  }
  
  public View a()
  {
    return (View)a.get();
  }
  
  public boolean b()
  {
    return (a.get() == null) || (b.get() == null);
  }
  
  public w c()
  {
    return new o.c((View)a.get(), (gr)b.get());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.o.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */