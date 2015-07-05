package com.yelp.android.ui.util;

import android.view.View;
import android.widget.BaseAdapter;
import com.yelp.android.ui.activities.profile.s;

public final class bw<Clearable extends BaseAdapter,  extends j>
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
  
  private bw(CharSequence paramCharSequence, Clearable paramClearable)
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
  
  public static <Clearable extends BaseAdapter,  extends j> bw<Clearable> a(Clearable paramClearable)
  {
    return new bw("", paramClearable);
  }
  
  public static <Clearable extends BaseAdapter,  extends j> bw<Clearable> a(CharSequence paramCharSequence, Clearable paramClearable)
  {
    return new bw(paramCharSequence, paramClearable);
  }
  
  private int[] b()
  {
    if (c == null)
    {
      int[] arrayOfInt = new int[4];
      c = arrayOfInt;
      return arrayOfInt;
    }
    return c;
  }
  
  public bv<Clearable> a()
  {
    Object localObject = a;
    if (g != 0) {
      if ((localObject instanceof au)) {
        localObject = new s((au)localObject, g, h, i);
      }
    }
    for (;;)
    {
      return new bv((BaseAdapter)localObject, b, c, d, e, f);
      throw new IllegalStateException(String.format("Section cannot be configured to be Spannable if the base adapter is not a %s", new Object[] { au.class }));
    }
  }
  
  public bw<Clearable> a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public bw<Clearable> a(int paramInt1, int paramInt2, int paramInt3)
  {
    g = paramInt1;
    h = paramInt2;
    i = paramInt3;
    return this;
  }
  
  public bw<Clearable> a(View paramView)
  {
    f = paramView;
    return this;
  }
  
  public bw<Clearable> b(int paramInt)
  {
    return a(paramInt, 0, 0);
  }
  
  public bw<Clearable> b(View paramView)
  {
    e = paramView;
    return this;
  }
  
  public bw<Clearable> c(int paramInt)
  {
    b()[0] = paramInt;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */