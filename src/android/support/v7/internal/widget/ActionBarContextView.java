package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v4.view.ce;
import android.support.v4.view.eh;
import android.support.v4.view.ex;
import android.support.v7.widget.ActionMenuPresenter;
import android.support.v7.widget.ActionMenuView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewGroup.MarginLayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.animation.DecelerateInterpolator;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.g.b;
import com.yelp.android.g.l;
import com.yelp.android.l.h;

public class ActionBarContextView
  extends a
  implements ex
{
  private CharSequence j;
  private CharSequence k;
  private View l;
  private View m;
  private LinearLayout n;
  private TextView o;
  private TextView p;
  private int q;
  private int r;
  private Drawable s;
  private boolean t;
  private int u;
  private h v;
  private boolean w;
  private int x;
  
  public ActionBarContextView(Context paramContext)
  {
    this(paramContext, null);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, b.actionModeStyle);
  }
  
  public ActionBarContextView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    paramContext = bg.a(paramContext, paramAttributeSet, l.ActionMode, paramInt, 0);
    setBackgroundDrawable(paramContext.a(l.ActionMode_background));
    q = paramContext.f(l.ActionMode_titleTextStyle, 0);
    r = paramContext.f(l.ActionMode_subtitleTextStyle, 0);
    h = paramContext.e(l.ActionMode_height, 0);
    s = paramContext.a(l.ActionMode_backgroundSplit);
    u = paramContext.f(l.ActionMode_closeItemLayout, com.yelp.android.g.i.abc_action_mode_close_item_material);
    paramContext.b();
  }
  
  private void e()
  {
    int i3 = 8;
    int i1 = 1;
    if (n == null)
    {
      LayoutInflater.from(getContext()).inflate(com.yelp.android.g.i.abc_action_bar_title_item, this);
      n = ((LinearLayout)getChildAt(getChildCount() - 1));
      o = ((TextView)n.findViewById(com.yelp.android.g.g.action_bar_title));
      p = ((TextView)n.findViewById(com.yelp.android.g.g.action_bar_subtitle));
      if (q != 0) {
        o.setTextAppearance(getContext(), q);
      }
      if (r != 0) {
        p.setTextAppearance(getContext(), r);
      }
    }
    o.setText(j);
    p.setText(k);
    int i;
    label167:
    Object localObject;
    if (!TextUtils.isEmpty(j))
    {
      i = 1;
      if (TextUtils.isEmpty(k)) {
        break label234;
      }
      localObject = p;
      if (i1 == 0) {
        break label239;
      }
    }
    label234:
    label239:
    for (int i2 = 0;; i2 = 8)
    {
      ((TextView)localObject).setVisibility(i2);
      localObject = n;
      if (i == 0)
      {
        i = i3;
        if (i1 == 0) {}
      }
      else
      {
        i = 0;
      }
      ((LinearLayout)localObject).setVisibility(i);
      if (n.getParent() == null) {
        addView(n);
      }
      return;
      i = 0;
      break;
      i1 = 0;
      break label167;
    }
  }
  
  private void f()
  {
    h localh = v;
    if (localh != null)
    {
      v = null;
      localh.b();
    }
  }
  
  private h g()
  {
    ce.a(l, -l.getWidth() - l.getLayoutParams()).leftMargin);
    Object localObject = ce.q(l).b(0.0F);
    ((eh)localObject).a(200L);
    ((eh)localObject).a(this);
    ((eh)localObject).a(new DecelerateInterpolator());
    h localh = new h();
    localh.a((eh)localObject);
    if (c != null)
    {
      int i = c.getChildCount();
      if (i > 0)
      {
        int i1 = i - 1;
        i = 0;
        while (i1 >= 0)
        {
          localObject = c.getChildAt(i1);
          ce.e((View)localObject, 0.0F);
          localObject = ce.q((View)localObject).d(1.0F);
          ((eh)localObject).a(300L);
          localh.a((eh)localObject);
          i1 -= 1;
          i += 1;
        }
      }
    }
    return localh;
  }
  
  private h h()
  {
    eh localeh = ce.q(l).b(-l.getWidth() - l.getLayoutParams()).leftMargin);
    localeh.a(200L);
    localeh.a(this);
    localeh.a(new DecelerateInterpolator());
    h localh = new h();
    localh.a(localeh);
    if ((c != null) && (c.getChildCount() > 0)) {}
    return localh;
  }
  
  public void a(View paramView) {}
  
  public void a(com.yelp.android.m.a parama)
  {
    ViewGroup.LayoutParams localLayoutParams;
    if (l == null)
    {
      l = LayoutInflater.from(getContext()).inflate(u, this, false);
      addView(l);
      l.findViewById(com.yelp.android.g.g.action_mode_close_button).setOnClickListener(new g(this, parama));
      parama = (android.support.v7.internal.view.menu.i)parama.b();
      if (d != null) {
        d.e();
      }
      d = new ActionMenuPresenter(getContext());
      d.c(true);
      localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
      if (f) {
        break label192;
      }
      parama.a(d, b);
      c = ((ActionMenuView)d.a(this));
      c.setBackgroundDrawable(null);
      addView(c, localLayoutParams);
    }
    for (;;)
    {
      w = true;
      return;
      if (l.getParent() != null) {
        break;
      }
      addView(l);
      break;
      label192:
      d.a(getContextgetResourcesgetDisplayMetricswidthPixels, true);
      d.b(Integer.MAX_VALUE);
      width = -1;
      height = h;
      parama.a(d, b);
      c = ((ActionMenuView)d.a(this));
      c.setBackgroundDrawable(s);
      e.addView(c, localLayoutParams);
    }
  }
  
  public boolean a()
  {
    if (d != null) {
      return d.c();
    }
    return false;
  }
  
  public void b()
  {
    if (x == 2) {
      return;
    }
    if (l == null)
    {
      c();
      return;
    }
    f();
    x = 2;
    v = h();
    v.a();
  }
  
  public void b(View paramView)
  {
    if (x == 2) {
      c();
    }
    x = 0;
  }
  
  public void c()
  {
    f();
    removeAllViews();
    if (e != null) {
      e.removeView(c);
    }
    m = null;
    c = null;
    w = false;
  }
  
  public void c(View paramView) {}
  
  public boolean d()
  {
    return t;
  }
  
  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ViewGroup.MarginLayoutParams(-1, -2);
  }
  
  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ViewGroup.MarginLayoutParams(getContext(), paramAttributeSet);
  }
  
  public CharSequence getSubtitle()
  {
    return k;
  }
  
  public CharSequence getTitle()
  {
    return j;
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (d != null)
    {
      d.d();
      d.f();
    }
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      if (paramAccessibilityEvent.getEventType() == 32)
      {
        paramAccessibilityEvent.setSource(this);
        paramAccessibilityEvent.setClassName(getClass().getName());
        paramAccessibilityEvent.setPackageName(getContext().getPackageName());
        paramAccessibilityEvent.setContentDescription(j);
      }
    }
    else {
      return;
    }
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    paramBoolean = bm.a(this);
    int i;
    int i1;
    int i2;
    Object localObject;
    if (paramBoolean)
    {
      i = paramInt3 - paramInt1 - getPaddingRight();
      i1 = getPaddingTop();
      i2 = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
      paramInt2 = i;
      if (l != null)
      {
        paramInt2 = i;
        if (l.getVisibility() != 8)
        {
          localObject = (ViewGroup.MarginLayoutParams)l.getLayoutParams();
          if (!paramBoolean) {
            break label297;
          }
          paramInt2 = rightMargin;
          label89:
          if (!paramBoolean) {
            break label306;
          }
          paramInt4 = leftMargin;
          label100:
          paramInt2 = a(i, paramInt2, paramBoolean);
          paramInt4 = a(a(l, paramInt2, i1, i2, paramBoolean) + paramInt2, paramInt4, paramBoolean);
          paramInt2 = paramInt4;
          if (w)
          {
            x = 1;
            v = g();
            v.a();
            w = false;
            paramInt2 = paramInt4;
          }
        }
      }
      paramInt4 = paramInt2;
      if (n != null)
      {
        paramInt4 = paramInt2;
        if (m == null)
        {
          paramInt4 = paramInt2;
          if (n.getVisibility() != 8) {
            paramInt4 = paramInt2 + a(n, paramInt2, i1, i2, paramBoolean);
          }
        }
      }
      if (m != null) {
        a(m, paramInt4, i1, i2, paramBoolean);
      }
      if (!paramBoolean) {
        break label316;
      }
      paramInt1 = getPaddingLeft();
      label255:
      if (c != null)
      {
        localObject = c;
        if (paramBoolean) {
          break label329;
        }
      }
    }
    label297:
    label306:
    label316:
    label329:
    for (paramBoolean = true;; paramBoolean = false)
    {
      a((View)localObject, paramInt1, i1, i2, paramBoolean);
      return;
      i = getPaddingLeft();
      break;
      paramInt2 = leftMargin;
      break label89;
      paramInt4 = rightMargin;
      break label100;
      paramInt1 = paramInt3 - paramInt1 - getPaddingRight();
      break label255;
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i2 = 1073741824;
    int i3 = 0;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_width=\"match_parent\" (or fill_parent)");
    }
    if (View.MeasureSpec.getMode(paramInt2) == 0) {
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used " + "with android:layout_height=\"wrap_content\"");
    }
    int i5 = View.MeasureSpec.getSize(paramInt1);
    int i;
    int i4;
    int i1;
    if (h > 0)
    {
      i = h;
      int i6 = getPaddingTop() + getPaddingBottom();
      paramInt1 = i5 - getPaddingLeft() - getPaddingRight();
      i4 = i - i6;
      i1 = View.MeasureSpec.makeMeasureSpec(i4, Integer.MIN_VALUE);
      paramInt2 = paramInt1;
      Object localObject;
      if (l != null)
      {
        paramInt1 = a(l, paramInt1, i1, 0);
        localObject = (ViewGroup.MarginLayoutParams)l.getLayoutParams();
        paramInt2 = leftMargin;
        paramInt2 = paramInt1 - (rightMargin + paramInt2);
      }
      paramInt1 = paramInt2;
      if (c != null)
      {
        paramInt1 = paramInt2;
        if (c.getParent() == this) {
          paramInt1 = a(c, paramInt2, i1, 0);
        }
      }
      paramInt2 = paramInt1;
      if (n != null)
      {
        paramInt2 = paramInt1;
        if (m == null)
        {
          if (!t) {
            break label512;
          }
          paramInt2 = View.MeasureSpec.makeMeasureSpec(0, 0);
          n.measure(paramInt2, i1);
          int i7 = n.getMeasuredWidth();
          if (i7 > paramInt1) {
            break label500;
          }
          i1 = 1;
          label307:
          paramInt2 = paramInt1;
          if (i1 != 0) {
            paramInt2 = paramInt1 - i7;
          }
          localObject = n;
          if (i1 == 0) {
            break label506;
          }
          paramInt1 = 0;
          label332:
          ((LinearLayout)localObject).setVisibility(paramInt1);
        }
      }
      label338:
      if (m != null)
      {
        localObject = m.getLayoutParams();
        if (width == -2) {
          break label528;
        }
        paramInt1 = 1073741824;
        label368:
        i1 = paramInt2;
        if (width >= 0) {
          i1 = Math.min(width, paramInt2);
        }
        if (height == -2) {
          break label535;
        }
        paramInt2 = i2;
        label403:
        if (height < 0) {
          break label542;
        }
        i2 = Math.min(height, i4);
        label423:
        m.measure(View.MeasureSpec.makeMeasureSpec(i1, paramInt1), View.MeasureSpec.makeMeasureSpec(i2, paramInt2));
      }
      if (h > 0) {
        break label557;
      }
      i1 = getChildCount();
      paramInt1 = 0;
      paramInt2 = i3;
      label460:
      if (paramInt2 >= i1) {
        break label549;
      }
      i = getChildAt(paramInt2).getMeasuredHeight() + i6;
      if (i <= paramInt1) {
        break label565;
      }
      paramInt1 = i;
    }
    label500:
    label506:
    label512:
    label528:
    label535:
    label542:
    label549:
    label557:
    label565:
    for (;;)
    {
      paramInt2 += 1;
      break label460;
      i = View.MeasureSpec.getSize(paramInt2);
      break;
      i1 = 0;
      break label307;
      paramInt1 = 8;
      break label332;
      paramInt2 = a(n, paramInt1, i1, 0);
      break label338;
      paramInt1 = Integer.MIN_VALUE;
      break label368;
      paramInt2 = Integer.MIN_VALUE;
      break label403;
      i2 = i4;
      break label423;
      setMeasuredDimension(i5, paramInt1);
      return;
      setMeasuredDimension(i5, i);
      return;
    }
  }
  
  public void setContentHeight(int paramInt)
  {
    h = paramInt;
  }
  
  public void setCustomView(View paramView)
  {
    if (m != null) {
      removeView(m);
    }
    m = paramView;
    if (n != null)
    {
      removeView(n);
      n = null;
    }
    if (paramView != null) {
      addView(paramView);
    }
    requestLayout();
  }
  
  public void setSplitToolbar(boolean paramBoolean)
  {
    ViewGroup.LayoutParams localLayoutParams;
    ViewGroup localViewGroup;
    if (f != paramBoolean) {
      if (d != null)
      {
        localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
        if (paramBoolean) {
          break label91;
        }
        c = ((ActionMenuView)d.a(this));
        c.setBackgroundDrawable(null);
        localViewGroup = (ViewGroup)c.getParent();
        if (localViewGroup != null) {
          localViewGroup.removeView(c);
        }
        addView(c, localLayoutParams);
      }
    }
    for (;;)
    {
      super.setSplitToolbar(paramBoolean);
      return;
      label91:
      d.a(getContextgetResourcesgetDisplayMetricswidthPixels, true);
      d.b(Integer.MAX_VALUE);
      width = -1;
      height = h;
      c = ((ActionMenuView)d.a(this));
      c.setBackgroundDrawable(s);
      localViewGroup = (ViewGroup)c.getParent();
      if (localViewGroup != null) {
        localViewGroup.removeView(c);
      }
      e.addView(c, localLayoutParams);
    }
  }
  
  public void setSubtitle(CharSequence paramCharSequence)
  {
    k = paramCharSequence;
    e();
  }
  
  public void setTitle(CharSequence paramCharSequence)
  {
    j = paramCharSequence;
    e();
  }
  
  public void setTitleOptional(boolean paramBoolean)
  {
    if (paramBoolean != t) {
      requestLayout();
    }
    t = paramBoolean;
  }
  
  public boolean shouldDelayChildPressedState()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActionBarContextView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */