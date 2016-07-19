package com.yelp.android.ui.util;

import android.view.View;
import android.widget.BaseAdapter;
import com.yelp.android.co.a.f;
import com.yelp.android.ui.activities.profile.e;

public final class aj$c<Clearable extends BaseAdapter,  extends g>
{
  private final Clearable a;
  private CharSequence b;
  private int[] c;
  private int d;
  private View e;
  private View f;
  private int g;
  private int h;
  private int i;
  
  private aj$c(CharSequence paramCharSequence, Clearable paramClearable)
  {
    if (paramClearable == null) {
      throw new NullPointerException("Cannot pass a null adapter to the SectionedBuilder constructor.");
    }
    if (paramCharSequence == null) {
      throw new NullPointerException("Cannot pass a null title to the SectionBuilder constructor.");
    }
    b = paramCharSequence;
    a = paramClearable;
    d = 16843272;
  }
  
  public static <Clearable extends BaseAdapter,  extends g> c<Clearable> a(Clearable paramClearable)
  {
    return new c("", paramClearable);
  }
  
  public static <Clearable extends BaseAdapter,  extends g> c<Clearable> a(CharSequence paramCharSequence, Clearable paramClearable)
  {
    return new c(paramCharSequence, paramClearable);
  }
  
  private int[] c()
  {
    if (c == null)
    {
      int[] arrayOfInt = new int[4];
      c = arrayOfInt;
      return arrayOfInt;
    }
    return c;
  }
  
  public c<Clearable> a()
  {
    return b(a.f.content);
  }
  
  public c<Clearable> a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public c<Clearable> a(int paramInt1, int paramInt2, int paramInt3)
  {
    g = paramInt1;
    h = paramInt2;
    i = paramInt3;
    return this;
  }
  
  public c<Clearable> a(View paramView)
  {
    f = paramView;
    return this;
  }
  
  public c<Clearable> a(CharSequence paramCharSequence)
  {
    b = paramCharSequence;
    return this;
  }
  
  public aj.b<Clearable> b()
  {
    Object localObject = a;
    if (g != 0) {
      if ((localObject instanceof w)) {
        localObject = new e((w)localObject, g, h, i);
      }
    }
    for (;;)
    {
      return new aj.b((BaseAdapter)localObject, b, c, d, e, f);
      throw new IllegalStateException(String.format("Section cannot be configured to be Spannable if the base adapter is not a %s", new Object[] { w.class }));
    }
  }
  
  public c<Clearable> b(int paramInt)
  {
    return a(paramInt, 0, 0);
  }
  
  public c<Clearable> b(View paramView)
  {
    e = paramView;
    return this;
  }
  
  public c<Clearable> c(int paramInt)
  {
    c()[0] = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aj.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */