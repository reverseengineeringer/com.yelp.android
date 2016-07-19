package android.support.design.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.design.internal.ScrimInsetsFrameLayout;
import android.support.design.internal.a;
import android.support.design.internal.b;
import android.support.v4.content.d;
import android.support.v4.view.ai;
import android.support.v7.internal.view.menu.f;
import android.support.v7.internal.view.menu.f.a;
import android.support.v7.internal.view.menu.h;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.BaseSavedState;
import android.view.View.MeasureSpec;
import com.yelp.android.a.a.b;
import com.yelp.android.a.a.h;
import com.yelp.android.a.a.i;
import com.yelp.android.p.e;

public class NavigationView
  extends ScrimInsetsFrameLayout
{
  private static final int[] a = { 16842912 };
  private static final int[] b = { -16842910 };
  private final a c;
  private final b d = new b();
  private a e;
  private int f;
  private MenuInflater g;
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public NavigationView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    c = new a(paramContext);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, a.i.NavigationView, paramInt, a.h.Widget_Design_NavigationView);
    setBackgroundDrawable(localTypedArray.getDrawable(a.i.NavigationView_android_background));
    if (localTypedArray.hasValue(a.i.NavigationView_elevation)) {
      ai.h(this, localTypedArray.getDimensionPixelSize(a.i.NavigationView_elevation, 0));
    }
    ai.a(this, localTypedArray.getBoolean(a.i.NavigationView_android_fitsSystemWindows, false));
    f = localTypedArray.getDimensionPixelSize(a.i.NavigationView_android_maxWidth, 0);
    ColorStateList localColorStateList;
    if (localTypedArray.hasValue(a.i.NavigationView_itemIconTint))
    {
      localColorStateList = localTypedArray.getColorStateList(a.i.NavigationView_itemIconTint);
      if (!localTypedArray.hasValue(a.i.NavigationView_itemTextAppearance)) {
        break label372;
      }
      paramInt = localTypedArray.getResourceId(a.i.NavigationView_itemTextAppearance, 0);
    }
    for (int i = 1;; i = 0)
    {
      paramAttributeSet = null;
      if (localTypedArray.hasValue(a.i.NavigationView_itemTextColor)) {
        paramAttributeSet = localTypedArray.getColorStateList(a.i.NavigationView_itemTextColor);
      }
      Object localObject = paramAttributeSet;
      if (i == 0)
      {
        localObject = paramAttributeSet;
        if (paramAttributeSet == null) {
          localObject = c(16842806);
        }
      }
      paramAttributeSet = localTypedArray.getDrawable(a.i.NavigationView_itemBackground);
      c.a(new f.a()
      {
        public void a(f paramAnonymousf) {}
        
        public boolean a(f paramAnonymousf, MenuItem paramAnonymousMenuItem)
        {
          return (NavigationView.a(NavigationView.this) != null) && (NavigationView.a(NavigationView.this).a(paramAnonymousMenuItem));
        }
      });
      d.a(1);
      d.a(paramContext, c);
      d.a(localColorStateList);
      if (i != 0) {
        d.c(paramInt);
      }
      d.b((ColorStateList)localObject);
      d.a(paramAttributeSet);
      c.a(d);
      addView((View)d.a(this));
      if (localTypedArray.hasValue(a.i.NavigationView_menu)) {
        a(localTypedArray.getResourceId(a.i.NavigationView_menu, 0));
      }
      if (localTypedArray.hasValue(a.i.NavigationView_headerLayout)) {
        b(localTypedArray.getResourceId(a.i.NavigationView_headerLayout, 0));
      }
      localTypedArray.recycle();
      return;
      localColorStateList = c(16842808);
      break;
      label372:
      paramInt = 0;
    }
  }
  
  private ColorStateList c(int paramInt)
  {
    Object localObject = new TypedValue();
    if (!getContext().getTheme().resolveAttribute(paramInt, (TypedValue)localObject, true)) {}
    ColorStateList localColorStateList;
    do
    {
      return null;
      localColorStateList = getResources().getColorStateList(resourceId);
    } while (!getContext().getTheme().resolveAttribute(a.b.colorPrimary, (TypedValue)localObject, true));
    paramInt = data;
    int i = localColorStateList.getDefaultColor();
    localObject = b;
    int[] arrayOfInt1 = a;
    int[] arrayOfInt2 = EMPTY_STATE_SET;
    int j = localColorStateList.getColorForState(b, i);
    return new ColorStateList(new int[][] { localObject, arrayOfInt1, arrayOfInt2 }, new int[] { j, paramInt, i });
  }
  
  private MenuInflater getMenuInflater()
  {
    if (g == null) {
      g = new e(getContext());
    }
    return g;
  }
  
  public void a(int paramInt)
  {
    d.b(true);
    getMenuInflater().inflate(paramInt, c);
    d.b(false);
    d.a(false);
  }
  
  public View b(int paramInt)
  {
    return d.b(paramInt);
  }
  
  public Drawable getItemBackground()
  {
    return d.f();
  }
  
  public ColorStateList getItemIconTintList()
  {
    return d.d();
  }
  
  public ColorStateList getItemTextColor()
  {
    return d.e();
  }
  
  public Menu getMenu()
  {
    return c;
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = paramInt1;
    switch (View.MeasureSpec.getMode(paramInt1))
    {
    default: 
      i = paramInt1;
    }
    for (;;)
    {
      super.onMeasure(i, paramInt2);
      return;
      i = View.MeasureSpec.makeMeasureSpec(Math.min(View.MeasureSpec.getSize(paramInt1), f), 1073741824);
      continue;
      i = View.MeasureSpec.makeMeasureSpec(f, 1073741824);
    }
  }
  
  protected void onRestoreInstanceState(Parcelable paramParcelable)
  {
    paramParcelable = (SavedState)paramParcelable;
    super.onRestoreInstanceState(paramParcelable.getSuperState());
    c.b(a);
  }
  
  protected Parcelable onSaveInstanceState()
  {
    SavedState localSavedState = new SavedState(super.onSaveInstanceState());
    a = new Bundle();
    c.a(a);
    return localSavedState;
  }
  
  public void setCheckedItem(int paramInt)
  {
    MenuItem localMenuItem = c.findItem(paramInt);
    if (localMenuItem != null) {
      d.a((h)localMenuItem);
    }
  }
  
  public void setItemBackground(Drawable paramDrawable)
  {
    d.a(paramDrawable);
  }
  
  public void setItemBackgroundResource(int paramInt)
  {
    setItemBackground(d.a(getContext(), paramInt));
  }
  
  public void setItemIconTintList(ColorStateList paramColorStateList)
  {
    d.a(paramColorStateList);
  }
  
  public void setItemTextAppearance(int paramInt)
  {
    d.c(paramInt);
  }
  
  public void setItemTextColor(ColorStateList paramColorStateList)
  {
    d.b(paramColorStateList);
  }
  
  public void setNavigationItemSelectedListener(a parama)
  {
    e = parama;
  }
  
  public static class SavedState
    extends View.BaseSavedState
  {
    public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator()
    {
      public NavigationView.SavedState a(Parcel paramAnonymousParcel)
      {
        return new NavigationView.SavedState(paramAnonymousParcel);
      }
      
      public NavigationView.SavedState[] a(int paramAnonymousInt)
      {
        return new NavigationView.SavedState[paramAnonymousInt];
      }
    };
    public Bundle a;
    
    public SavedState(Parcel paramParcel)
    {
      super();
      a = paramParcel.readBundle();
    }
    
    public SavedState(Parcelable paramParcelable)
    {
      super();
    }
    
    public void writeToParcel(Parcel paramParcel, int paramInt)
    {
      super.writeToParcel(paramParcel, paramInt);
      paramParcel.writeBundle(a);
    }
  }
  
  public static abstract interface a
  {
    public abstract boolean a(MenuItem paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.NavigationView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */