package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.graphics.drawable.StateListDrawable;
import android.support.v4.widget.y;
import android.support.v7.internal.view.menu.h;
import android.support.v7.internal.view.menu.m.a;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.widget.TextView;
import com.yelp.android.a.a.b;
import com.yelp.android.a.a.d;
import com.yelp.android.d.a;

public class NavigationMenuItemView
  extends TextView
  implements m.a
{
  private static final int[] a = { 16842912 };
  private int b;
  private h c;
  private ColorStateList d;
  
  public NavigationMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    b = paramContext.getResources().getDimensionPixelSize(a.d.design_navigation_icon_size);
  }
  
  private StateListDrawable b()
  {
    TypedValue localTypedValue = new TypedValue();
    if (getContext().getTheme().resolveAttribute(a.b.colorControlHighlight, localTypedValue, true))
    {
      StateListDrawable localStateListDrawable = new StateListDrawable();
      localStateListDrawable.addState(a, new ColorDrawable(data));
      localStateListDrawable.addState(EMPTY_STATE_SET, new ColorDrawable(0));
      return localStateListDrawable;
    }
    return null;
  }
  
  public void a(h paramh, int paramInt)
  {
    c = paramh;
    if (paramh.isVisible()) {}
    for (paramInt = 0;; paramInt = 8)
    {
      setVisibility(paramInt);
      if (getBackground() == null) {
        setBackgroundDrawable(b());
      }
      setCheckable(paramh.isCheckable());
      setChecked(paramh.isChecked());
      setEnabled(paramh.isEnabled());
      setTitle(paramh.getTitle());
      setIcon(paramh.getIcon());
      return;
    }
  }
  
  public boolean a()
  {
    return false;
  }
  
  public h getItemData()
  {
    return c;
  }
  
  protected int[] onCreateDrawableState(int paramInt)
  {
    int[] arrayOfInt = super.onCreateDrawableState(paramInt + 1);
    if ((c != null) && (c.isCheckable()) && (c.isChecked())) {
      mergeDrawableStates(arrayOfInt, a);
    }
    return arrayOfInt;
  }
  
  public void setCheckable(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setChecked(boolean paramBoolean)
  {
    refreshDrawableState();
  }
  
  public void setIcon(Drawable paramDrawable)
  {
    Drawable localDrawable = paramDrawable;
    if (paramDrawable != null)
    {
      localDrawable = a.c(paramDrawable.getConstantState().newDrawable()).mutate();
      localDrawable.setBounds(0, 0, b, b);
      a.a(localDrawable, d);
    }
    y.a(this, localDrawable, null, null, null);
  }
  
  void setIconTintList(ColorStateList paramColorStateList)
  {
    d = paramColorStateList;
    if (c != null) {
      setIcon(c.getIcon());
    }
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     android.support.design.internal.NavigationMenuItemView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */