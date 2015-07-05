package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.LinearLayoutCompat.LayoutParams;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.widget.ImageView;
import android.widget.TextView;
import android.widget.Toast;

class at
  extends LinearLayoutCompat
  implements View.OnLongClickListener
{
  private final int[] b = { 16842964 };
  private android.support.v7.app.b c;
  private TextView d;
  private ImageView e;
  private View f;
  
  public at(ap paramap, Context paramContext, android.support.v7.app.b paramb, boolean paramBoolean)
  {
    super(paramContext, null, com.yelp.android.g.b.actionBarTabStyle);
    c = paramb;
    paramap = bg.a(paramContext, null, b, com.yelp.android.g.b.actionBarTabStyle, 0);
    if (paramap.d(0)) {
      setBackgroundDrawable(paramap.a(0));
    }
    paramap.b();
    if (paramBoolean) {
      setGravity(8388627);
    }
    a();
  }
  
  public void a()
  {
    Object localObject1 = c;
    Object localObject2 = ((android.support.v7.app.b)localObject1).c();
    if (localObject2 != null)
    {
      localObject1 = ((View)localObject2).getParent();
      if (localObject1 != this)
      {
        if (localObject1 != null) {
          ((ViewGroup)localObject1).removeView((View)localObject2);
        }
        addView((View)localObject2);
      }
      f = ((View)localObject2);
      if (d != null) {
        d.setVisibility(8);
      }
      if (e != null)
      {
        e.setVisibility(8);
        e.setImageDrawable(null);
      }
      return;
    }
    if (f != null)
    {
      removeView(f);
      f = null;
    }
    Object localObject3 = ((android.support.v7.app.b)localObject1).a();
    localObject2 = ((android.support.v7.app.b)localObject1).b();
    int i;
    if (localObject3 != null)
    {
      Object localObject4;
      if (e == null)
      {
        localObject4 = new ImageView(getContext());
        LinearLayoutCompat.LayoutParams localLayoutParams = new LinearLayoutCompat.LayoutParams(-2, -2);
        h = 16;
        ((ImageView)localObject4).setLayoutParams(localLayoutParams);
        addView((View)localObject4, 0);
        e = ((ImageView)localObject4);
      }
      e.setImageDrawable((Drawable)localObject3);
      e.setVisibility(0);
      if (TextUtils.isEmpty((CharSequence)localObject2)) {
        break label365;
      }
      i = 1;
      label209:
      if (i == 0) {
        break label370;
      }
      if (d == null)
      {
        localObject3 = new CompatTextView(getContext(), null, com.yelp.android.g.b.actionBarTabTextStyle);
        ((TextView)localObject3).setEllipsize(TextUtils.TruncateAt.END);
        localObject4 = new LinearLayoutCompat.LayoutParams(-2, -2);
        h = 16;
        ((TextView)localObject3).setLayoutParams((ViewGroup.LayoutParams)localObject4);
        addView((View)localObject3);
        d = ((TextView)localObject3);
      }
      d.setText((CharSequence)localObject2);
      d.setVisibility(0);
    }
    for (;;)
    {
      if (e != null) {
        e.setContentDescription(((android.support.v7.app.b)localObject1).e());
      }
      if ((i != 0) || (TextUtils.isEmpty(((android.support.v7.app.b)localObject1).e()))) {
        break label397;
      }
      setOnLongClickListener(this);
      return;
      if (e == null) {
        break;
      }
      e.setVisibility(8);
      e.setImageDrawable(null);
      break;
      label365:
      i = 0;
      break label209;
      label370:
      if (d != null)
      {
        d.setVisibility(8);
        d.setText(null);
      }
    }
    label397:
    setOnLongClickListener(null);
    setLongClickable(false);
  }
  
  public void a(android.support.v7.app.b paramb)
  {
    c = paramb;
    a();
  }
  
  public android.support.v7.app.b b()
  {
    return c;
  }
  
  public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
  {
    super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
    paramAccessibilityEvent.setClassName(android.support.v7.app.b.class.getName());
  }
  
  public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
  {
    super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
    if (Build.VERSION.SDK_INT >= 14) {
      paramAccessibilityNodeInfo.setClassName(android.support.v7.app.b.class.getName());
    }
  }
  
  public boolean onLongClick(View paramView)
  {
    paramView = new int[2];
    getLocationOnScreen(paramView);
    Object localObject = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = getResourcesgetDisplayMetricswidthPixels;
    localObject = Toast.makeText((Context)localObject, c.e(), 0);
    ((Toast)localObject).setGravity(49, paramView[0] + i / 2 - k / 2, j);
    ((Toast)localObject).show();
    return true;
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((a.b > 0) && (getMeasuredWidth() > a.b)) {
      super.onMeasure(View.MeasureSpec.makeMeasureSpec(a.b, 1073741824), paramInt2);
    }
  }
  
  public void setSelected(boolean paramBoolean)
  {
    if (isSelected() != paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      super.setSelected(paramBoolean);
      if ((i != 0) && (paramBoolean)) {
        sendAccessibilityEvent(4);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */