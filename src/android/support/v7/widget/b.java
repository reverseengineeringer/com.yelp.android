package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.internal.widget.n;
import android.support.v7.internal.widget.o;
import android.util.AttributeSet;
import android.view.View;
import com.yelp.android.j.a.k;
import com.yelp.android.k.a;

class b
{
  private final View a;
  private final o b;
  private n c;
  private n d;
  
  b(View paramView, o paramo)
  {
    a = paramView;
    b = paramo;
  }
  
  ColorStateList a()
  {
    if (d != null) {
      return d.a;
    }
    return null;
  }
  
  void a(int paramInt)
  {
    if (b != null) {}
    for (ColorStateList localColorStateList = b.c(paramInt);; localColorStateList = null)
    {
      b(localColorStateList);
      return;
    }
  }
  
  void a(ColorStateList paramColorStateList)
  {
    if (d == null) {
      d = new n();
    }
    d.a = paramColorStateList;
    d.d = true;
    c();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    if (d == null) {
      d = new n();
    }
    d.b = paramMode;
    d.c = true;
    c();
  }
  
  void a(Drawable paramDrawable)
  {
    b(null);
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.getContext().obtainStyledAttributes(paramAttributeSet, a.k.ViewBackgroundHelper, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(a.k.ViewBackgroundHelper_android_background))
      {
        ColorStateList localColorStateList = b.c(paramAttributeSet.getResourceId(a.k.ViewBackgroundHelper_android_background, -1));
        if (localColorStateList != null) {
          b(localColorStateList);
        }
      }
      if (paramAttributeSet.hasValue(a.k.ViewBackgroundHelper_backgroundTint)) {
        ai.a(a, paramAttributeSet.getColorStateList(a.k.ViewBackgroundHelper_backgroundTint));
      }
      if (paramAttributeSet.hasValue(a.k.ViewBackgroundHelper_backgroundTintMode)) {
        ai.a(a, a.a(paramAttributeSet.getInt(a.k.ViewBackgroundHelper_backgroundTintMode, -1), null));
      }
      return;
    }
    finally
    {
      paramAttributeSet.recycle();
    }
  }
  
  PorterDuff.Mode b()
  {
    if (d != null) {
      return d.b;
    }
    return null;
  }
  
  void b(ColorStateList paramColorStateList)
  {
    if (paramColorStateList != null)
    {
      if (c == null) {
        c = new n();
      }
      c.a = paramColorStateList;
      c.d = true;
    }
    for (;;)
    {
      c();
      return;
      c = null;
    }
  }
  
  void c()
  {
    if (a.getBackground() != null)
    {
      if (d == null) {
        break label29;
      }
      o.a(a, d);
    }
    label29:
    while (c == null) {
      return;
    }
    o.a(a, c);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */