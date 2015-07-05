package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.yelp.android.bf.c;
import com.yelp.android.bf.m;

public final class SpannableWidget$SpannableWidgetUtil
  implements SpannableWidget
{
  private int a;
  private boolean g;
  private final boolean h;
  private j i;
  
  public SpannableWidget$SpannableWidgetUtil(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, m.SpannableWidget, paramInt, paramInt);
    h = paramContext.getBoolean(7, false);
    a = paramContext.getInt(6, 1);
    paramContext.recycle();
    g = false;
  }
  
  private int[] b()
  {
    int[] arrayOfInt1 = new int[b.length + c.length + d.length];
    if ((a & 0x4) == 4) {
      System.arraycopy(b, 0, arrayOfInt1, 0, b.length);
    }
    for (int k = b.length + 0;; k = 0)
    {
      int j = k;
      if ((a & 0x2) == 2)
      {
        System.arraycopy(c, 0, arrayOfInt1, k, c.length);
        j = k + c.length;
      }
      k = j;
      if ((a & 0x1) == 1)
      {
        System.arraycopy(d, 0, arrayOfInt1, j, d.length);
        k = j + d.length;
      }
      if (k != arrayOfInt1.length)
      {
        int[] arrayOfInt2 = new int[k];
        System.arraycopy(arrayOfInt1, 0, arrayOfInt2, 0, k);
        return arrayOfInt2;
      }
      return arrayOfInt1;
    }
  }
  
  private <Instance extends View,  extends Checkable> void d(Instance paramInstance)
  {
    if (i != null) {
      i.onCheckedChanged(paramInstance);
    }
  }
  
  public <Instance extends View,  extends Checkable> void a(Instance paramInstance, boolean paramBoolean)
  {
    if (paramBoolean != g) {}
    for (int j = 1;; j = 0)
    {
      g = paramBoolean;
      if (j != 0)
      {
        paramInstance.refreshDrawableState();
        d(paramInstance);
      }
      return;
    }
  }
  
  public boolean a()
  {
    return g;
  }
  
  public int[] a(View paramView)
  {
    int[] arrayOfInt1 = b();
    int k = arrayOfInt1.length;
    int j = k;
    if (h)
    {
      j = k;
      if (g) {
        j = k + 1;
      }
    }
    k = j;
    if (paramView.isClickable()) {
      k = j + 1;
    }
    int[] arrayOfInt2 = new int[k];
    System.arraycopy(arrayOfInt1, 0, arrayOfInt2, 0, arrayOfInt1.length);
    j = arrayOfInt1.length;
    if ((h) && (g))
    {
      k = j + 1;
      arrayOfInt2[j] = 16842912;
      j = k;
    }
    for (;;)
    {
      if (paramView.isClickable()) {
        arrayOfInt2[j] = c.state_clickable;
      }
      return arrayOfInt2;
    }
  }
  
  public <Instance extends View,  extends Checkable> void b(Instance paramInstance)
  {
    if (h) {
      c(paramInstance);
    }
  }
  
  public <Instance extends View,  extends Checkable> void c(Instance paramInstance)
  {
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInstance, bool);
      return;
    }
  }
  
  public void setChecked(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Call setChecked(view, checked) instead");
  }
  
  public void setLeft(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = a | 0x2;; j = a & 0xFFFFFFFD)
    {
      a = j;
      return;
    }
  }
  
  public void setMiddle(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = a | 0x1;; j = a & 0xFFFFFFFE)
    {
      a = j;
      return;
    }
  }
  
  public void setOnCheckedChangeListener(j paramj)
  {
    i = paramj;
  }
  
  public void setRight(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int j = a | 0x4;; j = a & 0xFFFFFFFB)
    {
      a = j;
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.widgets.SpannableWidget.SpannableWidgetUtil
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */