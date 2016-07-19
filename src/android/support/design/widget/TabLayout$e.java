package android.support.design.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.app.ActionBar.b;
import android.support.v7.internal.widget.o;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import android.widget.Toast;
import com.yelp.android.a.a.g;

class TabLayout$e
  extends LinearLayout
  implements View.OnLongClickListener
{
  private final TabLayout.c b;
  private TextView c;
  private ImageView d;
  private View e;
  private TextView f;
  private ImageView g;
  
  public TabLayout$e(TabLayout paramTabLayout, Context paramContext, TabLayout.c paramc)
  {
    super(paramContext);
    b = paramc;
    if (TabLayout.a(paramTabLayout) != 0) {
      setBackgroundDrawable(o.a(paramContext, TabLayout.a(paramTabLayout)));
    }
    ai.b(this, TabLayout.b(paramTabLayout), TabLayout.c(paramTabLayout), TabLayout.d(paramTabLayout), TabLayout.e(paramTabLayout));
    setGravity(17);
    a();
  }
  
  private void a(TabLayout.c paramc, TextView paramTextView, ImageView paramImageView)
  {
    Drawable localDrawable = paramc.b();
    CharSequence localCharSequence = paramc.d();
    int i;
    if (paramImageView != null)
    {
      if (localDrawable != null)
      {
        paramImageView.setImageDrawable(localDrawable);
        paramImageView.setVisibility(0);
        setVisibility(0);
        paramImageView.setContentDescription(paramc.g());
      }
    }
    else
    {
      if (TextUtils.isEmpty(localCharSequence)) {
        break label124;
      }
      i = 1;
      label56:
      if (paramTextView != null)
      {
        if (i == 0) {
          break label130;
        }
        paramTextView.setText(localCharSequence);
        paramTextView.setContentDescription(paramc.g());
        paramTextView.setVisibility(0);
        setVisibility(0);
      }
    }
    for (;;)
    {
      if ((i != 0) || (TextUtils.isEmpty(paramc.g()))) {
        break label144;
      }
      setOnLongClickListener(this);
      return;
      paramImageView.setVisibility(8);
      paramImageView.setImageDrawable(null);
      break;
      label124:
      i = 0;
      break label56;
      label130:
      paramTextView.setVisibility(8);
      paramTextView.setText(null);
    }
    label144:
    setOnLongClickListener(null);
    setLongClickable(false);
  }
  
  final void a()
  {
    TabLayout.c localc = b;
    Object localObject = localc.a();
    if (localObject != null)
    {
      ViewParent localViewParent = ((View)localObject).getParent();
      if (localViewParent != this)
      {
        if (localViewParent != null) {
          ((ViewGroup)localViewParent).removeView((View)localObject);
        }
        addView((View)localObject);
      }
      e = ((View)localObject);
      if (c != null) {
        c.setVisibility(8);
      }
      if (d != null)
      {
        d.setVisibility(8);
        d.setImageDrawable(null);
      }
      f = ((TextView)((View)localObject).findViewById(16908308));
      g = ((ImageView)((View)localObject).findViewById(16908294));
      if (e != null) {
        break label281;
      }
      if (d == null)
      {
        localObject = (ImageView)LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_icon, this, false);
        addView((View)localObject, 0);
        d = ((ImageView)localObject);
      }
      if (c == null)
      {
        localObject = (TextView)LayoutInflater.from(getContext()).inflate(a.g.design_layout_tab_text, this, false);
        addView((View)localObject);
        c = ((TextView)localObject);
      }
      c.setTextAppearance(getContext(), TabLayout.h(a));
      if (TabLayout.i(a) != null) {
        c.setTextColor(TabLayout.i(a));
      }
      a(localc, c, d);
    }
    label281:
    while ((f == null) && (g == null))
    {
      return;
      if (e != null)
      {
        removeView(e);
        e = null;
      }
      f = null;
      g = null;
      break;
    }
    a(localc, f, g);
  }
  
  public TabLayout.c b()
  {
    return b;
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(ActionBar.b.class.getName());
  }
  
  @TargetApi(14)
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    paramAccessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
  }
  
  public boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, b.g(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    paramInt1 = getMeasuredWidth();
    if ((paramInt1 < TabLayout.f(a)) || (paramInt1 > TabLayout.g(a))) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(k.a(paramInt1, TabLayout.f(a), TabLayout.g(a)), 1073741824), paramInt2);
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean))
      {
        sendAccessibilityEvent(4);
        if (c != null) {
          c.setSelected(paramBoolean);
        }
        if (d != null) {
          d.setSelected(paramBoolean);
        }
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.design.widget.TabLayout.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */