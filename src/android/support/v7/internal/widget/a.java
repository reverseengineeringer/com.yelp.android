package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.support.v4.view.ai;
import android.support.v4.view.az;
import android.support.v4.view.bd;
import android.support.v4.view.t;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import com.yelp.android.j.a.k;

abstract class a
  extends ViewGroup
{
  protected final a a = new a();
  protected final Context b;
  protected ActionMenuView c;
  protected ActionMenuPresenter d;
  protected int e;
  protected az f;
  private boolean g;
  private boolean h;
  
  a(Context paramContext)
  {
    this(paramContext, null);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  a(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramAttributeSet = new TypedValue();
    if ((paramContext.getTheme().resolveAttribute(com.yelp.android.j.a.a.actionBarPopupTheme, paramAttributeSet, true)) && (resourceId != 0))
    {
      b = new ContextThemeWrapper(paramContext, resourceId);
      return;
    }
    b = paramContext;
  }
  
  protected static int a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    if (paramBoolean) {
      return paramInt1 - paramInt2;
    }
    return paramInt1 + paramInt2;
  }
  
  protected int a(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    paramView.measure(View.MeasureSpec.makeMeasureSpec(paramInt1, Integer.MIN_VALUE), paramInt2);
    return Math.max(0, paramInt1 - paramView.getMeasuredWidth() - paramInt3);
  }
  
  protected int a(View paramView, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    int i = paramView.getMeasuredWidth();
    int j = paramView.getMeasuredHeight();
    paramInt2 = (paramInt3 - j) / 2 + paramInt2;
    if (paramBoolean) {
      paramView.layout(paramInt1 - i, paramInt2, paramInt1, j + paramInt2);
    }
    for (;;)
    {
      paramInt1 = i;
      if (paramBoolean) {
        paramInt1 = -i;
      }
      return paramInt1;
      paramView.layout(paramInt1, paramInt2, paramInt1 + i, j + paramInt2);
    }
  }
  
  public az a(int paramInt, long paramLong)
  {
    if (f != null) {
      f.b();
    }
    if (paramInt == 0)
    {
      if (getVisibility() != 0) {
        ai.c(this, 0.0F);
      }
      localaz = ai.s(this).a(1.0F);
      localaz.a(paramLong);
      localaz.a(a.a(localaz, paramInt));
      return localaz;
    }
    az localaz = ai.s(this).a(0.0F);
    localaz.a(paramLong);
    localaz.a(a.a(localaz, paramInt));
    return localaz;
  }
  
  public boolean a()
  {
    if (d != null) {
      return d.f();
    }
    return false;
  }
  
  public int getAnimatedVisibility()
  {
    if (f != null) {
      return a.a;
    }
    return getVisibility();
  }
  
  public int getContentHeight()
  {
    return e;
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    TypedArray localTypedArray = getContext().obtainStyledAttributes(null, a.k.ActionBar, com.yelp.android.j.a.a.actionBarStyle, 0);
    setContentHeight(localTypedArray.getLayoutDimension(a.k.ActionBar_height, 0));
    localTypedArray.recycle();
    if (d != null) {
      d.a(paramConfiguration);
    }
  }
  
  public boolean onHoverEvent(MotionEvent paramMotionEvent)
  {
    int i = t.a(paramMotionEvent);
    if (i == 9) {
      h = false;
    }
    if (!h)
    {
      boolean bool = super.onHoverEvent(paramMotionEvent);
      if ((i == 9) && (!bool)) {
        h = true;
      }
    }
    if ((i == 10) || (i == 3)) {
      h = false;
    }
    return true;
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    int i = t.a(paramMotionEvent);
    if (i == 0) {
      g = false;
    }
    if (!g)
    {
      boolean bool = super.onTouchEvent(paramMotionEvent);
      if ((i == 0) && (!bool)) {
        g = true;
      }
    }
    if ((i == 1) || (i == 3)) {
      g = false;
    }
    return true;
  }
  
  public void setContentHeight(int paramInt)
  {
    e = paramInt;
    requestLayout();
  }
  
  public void setVisibility(int paramInt)
  {
    if (paramInt != getVisibility())
    {
      if (f != null) {
        f.b();
      }
      super.setVisibility(paramInt);
    }
  }
  
  protected class a
    implements bd
  {
    int a;
    private boolean c = false;
    
    protected a() {}
    
    public a a(az paramaz, int paramInt)
    {
      f = paramaz;
      a = paramInt;
      return this;
    }
    
    public void a(View paramView)
    {
      a.a(a.this, 0);
      c = false;
    }
    
    public void b(View paramView)
    {
      if (c) {
        return;
      }
      f = null;
      a.b(a.this, a);
    }
    
    public void c(View paramView)
    {
      c = true;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */