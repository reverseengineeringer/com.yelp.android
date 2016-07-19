package com.yelp.android.ui.widgets;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Checkable;
import com.yelp.android.co.a.b;
import com.yelp.android.co.a.l;

public final class SpannableWidget$SpannableWidgetUtil
  implements SpannableWidget
{
  private int a;
  private boolean b;
  private final boolean c;
  private c i;
  
  public SpannableWidget$SpannableWidgetUtil(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    paramContext = paramContext.obtainStyledAttributes(paramAttributeSet, a.l.SpannableWidget, paramInt, paramInt);
    c = paramContext.getBoolean(a.l.SpannableWidget_checkable, false);
    a = paramContext.getInt(a.l.SpannableWidget_position, 1);
    paramContext.recycle();
    b = false;
  }
  
  private int[] b()
  {
    int[] arrayOfInt1 = new int[d.length + e.length + f.length];
    if ((a & 0x4) == 4) {
      System.arraycopy(d, 0, arrayOfInt1, 0, d.length);
    }
    for (int k = d.length + 0;; k = 0)
    {
      int j = k;
      if ((a & 0x2) == 2)
      {
        System.arraycopy(e, 0, arrayOfInt1, k, e.length);
        j = k + e.length;
      }
      k = j;
      if ((a & 0x1) == 1)
      {
        System.arraycopy(f, 0, arrayOfInt1, j, f.length);
        k = j + f.length;
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
    if (paramBoolean != b) {}
    for (int j = 1;; j = 0)
    {
      b = paramBoolean;
      if (j != 0)
      {
        paramInstance.refreshDrawableState();
        d(paramInstance);
      }
      return;
    }
  }
  
  public void a(c paramc)
  {
    i = paramc;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public int[] a(View paramView)
  {
    int[] arrayOfInt1 = b();
    int k = arrayOfInt1.length;
    int j = k;
    if (c)
    {
      j = k;
      if (b) {
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
    if ((c) && (b))
    {
      k = j + 1;
      arrayOfInt2[j] = 16842912;
      j = k;
    }
    for (;;)
    {
      if (paramView.isClickable()) {
        arrayOfInt2[j] = a.b.state_clickable;
      }
      return arrayOfInt2;
    }
  }
  
  public <Instance extends View,  extends Checkable> void b(Instance paramInstance)
  {
    if (c) {
      c(paramInstance);
    }
  }
  
  public <Instance extends View,  extends Checkable> void c(Instance paramInstance)
  {
    if (!b) {}
    for (boolean bool = true;; bool = false)
    {
      a(paramInstance, bool);
      return;
    }
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