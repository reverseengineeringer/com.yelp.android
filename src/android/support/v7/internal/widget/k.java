package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.support.v7.app.ActionBar.b;
import android.support.v7.widget.AppCompatSpinner;
import android.support.v7.widget.AppCompatTextView;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.LinearLayoutCompat.LayoutParams;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityNodeInfo;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.widget.AbsListView.LayoutParams;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;
import android.widget.BaseAdapter;
import android.widget.HorizontalScrollView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import android.widget.Toast;
import com.yelp.android.j.a.a;
import com.yelp.android.p.a;

public class k
  extends HorizontalScrollView
  implements AdapterView.OnItemSelectedListener
{
  private static final Interpolator j = new DecelerateInterpolator();
  Runnable a;
  int b;
  int c;
  private b d;
  private LinearLayoutCompat e;
  private Spinner f;
  private boolean g;
  private int h;
  private int i;
  
  private c a(ActionBar.b paramb, boolean paramBoolean)
  {
    paramb = new c(getContext(), paramb, paramBoolean);
    if (paramBoolean)
    {
      paramb.setBackgroundDrawable(null);
      paramb.setLayoutParams(new AbsListView.LayoutParams(-1, h));
      return paramb;
    }
    paramb.setFocusable(true);
    if (d == null) {
      d = new b(null);
    }
    paramb.setOnClickListener(d);
    return paramb;
  }
  
  private boolean a()
  {
    return (f != null) && (f.getParent() == this);
  }
  
  private void b()
  {
    if (a()) {
      return;
    }
    if (f == null) {
      f = d();
    }
    removeView(e);
    addView(f, new ViewGroup.LayoutParams(-2, -1));
    if (f.getAdapter() == null) {
      f.setAdapter(new a(null));
    }
    if (a != null)
    {
      removeCallbacks(a);
      a = null;
    }
    f.setSelection(i);
  }
  
  private boolean c()
  {
    if (!a()) {
      return false;
    }
    removeView(f);
    addView(e, new ViewGroup.LayoutParams(-2, -1));
    setTabSelected(f.getSelectedItemPosition());
    return false;
  }
  
  private Spinner d()
  {
    AppCompatSpinner localAppCompatSpinner = new AppCompatSpinner(getContext(), null, a.a.actionDropDownStyle);
    localAppCompatSpinner.setLayoutParams(new LinearLayoutCompat.LayoutParams(-2, -1));
    localAppCompatSpinner.setOnItemSelectedListener(this);
    return localAppCompatSpinner;
  }
  
  public void a(int paramInt)
  {
    final View localView = e.getChildAt(paramInt);
    if (a != null) {
      removeCallbacks(a);
    }
    a = new Runnable()
    {
      public void run()
      {
        int i = localView.getLeft();
        int j = (getWidth() - localView.getWidth()) / 2;
        smoothScrollTo(i - j, 0);
        a = null;
      }
    };
    post(a);
  }
  
  public void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (a != null) {
      post(a);
    }
  }
  
  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    if (Build.VERSION.SDK_INT >= 8) {
      super.onConfigurationChanged(paramConfiguration);
    }
    paramConfiguration = a.a(getContext());
    setContentHeight(paramConfiguration.e());
    c = paramConfiguration.g();
  }
  
  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (a != null) {
      removeCallbacks(a);
    }
  }
  
  public void onItemSelected(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ((c)paramView).b().d();
  }
  
  public void onMeasure(int paramInt1, int paramInt2)
  {
    paramInt2 = 1;
    int k = View.MeasureSpec.getMode(paramInt1);
    boolean bool;
    if (k == 1073741824)
    {
      bool = true;
      setFillViewport(bool);
      int m = e.getChildCount();
      if ((m <= 1) || ((k != 1073741824) && (k != Integer.MIN_VALUE))) {
        break label190;
      }
      if (m <= 2) {
        break label177;
      }
      b = ((int)(View.MeasureSpec.getSize(paramInt1) * 0.4F));
      label68:
      b = Math.min(b, c);
      label83:
      k = View.MeasureSpec.makeMeasureSpec(h, 1073741824);
      if ((bool) || (!g)) {
        break label198;
      }
      label105:
      if (paramInt2 == 0) {
        break label211;
      }
      e.measure(0, k);
      if (e.getMeasuredWidth() <= View.MeasureSpec.getSize(paramInt1)) {
        break label203;
      }
      b();
    }
    for (;;)
    {
      paramInt2 = getMeasuredWidth();
      super.onMeasure(paramInt1, k);
      paramInt1 = getMeasuredWidth();
      if ((bool) && (paramInt2 != paramInt1)) {
        setTabSelected(i);
      }
      return;
      bool = false;
      break;
      label177:
      b = (View.MeasureSpec.getSize(paramInt1) / 2);
      break label68;
      label190:
      b = -1;
      break label83;
      label198:
      paramInt2 = 0;
      break label105;
      label203:
      c();
      continue;
      label211:
      c();
    }
  }
  
  public void onNothingSelected(AdapterView<?> paramAdapterView) {}
  
  public void setAllowCollapse(boolean paramBoolean)
  {
    g = paramBoolean;
  }
  
  public void setContentHeight(int paramInt)
  {
    h = paramInt;
    requestLayout();
  }
  
  public void setTabSelected(int paramInt)
  {
    i = paramInt;
    int m = e.getChildCount();
    int k = 0;
    if (k < m)
    {
      View localView = e.getChildAt(k);
      if (k == paramInt) {}
      for (boolean bool = true;; bool = false)
      {
        localView.setSelected(bool);
        if (bool) {
          a(paramInt);
        }
        k += 1;
        break;
      }
    }
    if ((f != null) && (paramInt >= 0)) {
      f.setSelection(paramInt);
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private a() {}
    
    public int getCount()
    {
      return k.a(k.this).getChildCount();
    }
    
    public Object getItem(int paramInt)
    {
      return ((k.c)k.a(k.this).getChildAt(paramInt)).b();
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      if (paramView == null) {
        return k.a(k.this, (ActionBar.b)getItem(paramInt), true);
      }
      ((k.c)paramView).a((ActionBar.b)getItem(paramInt));
      return paramView;
    }
  }
  
  private class b
    implements View.OnClickListener
  {
    private b() {}
    
    public void onClick(View paramView)
    {
      ((k.c)paramView).b().d();
      int j = k.a(k.this).getChildCount();
      int i = 0;
      if (i < j)
      {
        View localView = k.a(k.this).getChildAt(i);
        if (localView == paramView) {}
        for (boolean bool = true;; bool = false)
        {
          localView.setSelected(bool);
          i += 1;
          break;
        }
      }
    }
  }
  
  private class c
    extends LinearLayoutCompat
    implements View.OnLongClickListener
  {
    private final int[] b = { 16842964 };
    private ActionBar.b c;
    private TextView d;
    private ImageView e;
    private View f;
    
    public c(Context paramContext, ActionBar.b paramb, boolean paramBoolean)
    {
      super(null, a.a.actionBarTabStyle);
      c = paramb;
      this$1 = p.a(paramContext, null, b, a.a.actionBarTabStyle, 0);
      if (e(0)) {
        setBackgroundDrawable(a(0));
      }
      b();
      if (paramBoolean) {
        setGravity(8388627);
      }
      a();
    }
    
    public void a()
    {
      Object localObject1 = c;
      Object localObject2 = ((ActionBar.b)localObject1).c();
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
      Object localObject3 = ((ActionBar.b)localObject1).a();
      localObject2 = ((ActionBar.b)localObject1).b();
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
          localObject3 = new AppCompatTextView(getContext(), null, a.a.actionBarTabTextStyle);
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
          e.setContentDescription(((ActionBar.b)localObject1).e());
        }
        if ((i != 0) || (TextUtils.isEmpty(((ActionBar.b)localObject1).e()))) {
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
    
    public void a(ActionBar.b paramb)
    {
      c = paramb;
      a();
    }
    
    public ActionBar.b b()
    {
      return c;
    }
    
    public void onInitializeAccessibilityEvent(AccessibilityEvent paramAccessibilityEvent)
    {
      super.onInitializeAccessibilityEvent(paramAccessibilityEvent);
      paramAccessibilityEvent.setClassName(ActionBar.b.class.getName());
    }
    
    public void onInitializeAccessibilityNodeInfo(AccessibilityNodeInfo paramAccessibilityNodeInfo)
    {
      super.onInitializeAccessibilityNodeInfo(paramAccessibilityNodeInfo);
      if (Build.VERSION.SDK_INT >= 14) {
        paramAccessibilityNodeInfo.setClassName(ActionBar.b.class.getName());
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
      if ((b > 0) && (getMeasuredWidth() > b)) {
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(b, 1073741824), paramInt2);
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
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */