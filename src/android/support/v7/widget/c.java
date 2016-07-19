package android.support.v7.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.internal.widget.o;
import android.util.AttributeSet;
import android.widget.CompoundButton;
import com.yelp.android.j.a.k;

class c
{
  private final CompoundButton a;
  private final o b;
  private ColorStateList c = null;
  private PorterDuff.Mode d = null;
  private boolean e = false;
  private boolean f = false;
  private boolean g;
  
  c(CompoundButton paramCompoundButton, o paramo)
  {
    a = paramCompoundButton;
    b = paramo;
  }
  
  int a(int paramInt)
  {
    int i = paramInt;
    if (Build.VERSION.SDK_INT < 17)
    {
      Drawable localDrawable = android.support.v4.widget.c.a(a);
      i = paramInt;
      if (localDrawable != null) {
        i = paramInt + localDrawable.getIntrinsicWidth();
      }
    }
    return i;
  }
  
  ColorStateList a()
  {
    return c;
  }
  
  void a(ColorStateList paramColorStateList)
  {
    c = paramColorStateList;
    e = true;
    d();
  }
  
  void a(PorterDuff.Mode paramMode)
  {
    d = paramMode;
    f = true;
    d();
  }
  
  void a(AttributeSet paramAttributeSet, int paramInt)
  {
    paramAttributeSet = a.getContext().obtainStyledAttributes(paramAttributeSet, a.k.CompoundButton, paramInt, 0);
    try
    {
      if (paramAttributeSet.hasValue(a.k.CompoundButton_android_button))
      {
        paramInt = paramAttributeSet.getResourceId(a.k.CompoundButton_android_button, 0);
        if (paramInt != 0) {
          a.setButtonDrawable(b.a(paramInt));
        }
      }
      if (paramAttributeSet.hasValue(a.k.CompoundButton_buttonTint)) {
        android.support.v4.widget.c.a(a, paramAttributeSet.getColorStateList(a.k.CompoundButton_buttonTint));
      }
      if (paramAttributeSet.hasValue(a.k.CompoundButton_buttonTintMode)) {
        android.support.v4.widget.c.a(a, com.yelp.android.k.a.a(paramAttributeSet.getInt(a.k.CompoundButton_buttonTintMode, -1), null));
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
    return d;
  }
  
  void c()
  {
    if (g)
    {
      g = false;
      return;
    }
    g = true;
    d();
  }
  
  void d()
  {
    Drawable localDrawable = android.support.v4.widget.c.a(a);
    if ((localDrawable != null) && ((e) || (f)))
    {
      localDrawable = com.yelp.android.d.a.c(localDrawable).mutate();
      if (e) {
        com.yelp.android.d.a.a(localDrawable, c);
      }
      if (f) {
        com.yelp.android.d.a.a(localDrawable, d);
      }
      if (localDrawable.isStateful()) {
        localDrawable.setState(a.getDrawableState());
      }
      a.setButtonDrawable(localDrawable);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */