package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.n;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.yelp.android.g.e;
import com.yelp.android.g.g;
import com.yelp.android.g.i;
import com.yelp.android.g.j;
import com.yelp.android.g.l;

public class ActivityChooserView
  extends ViewGroup
{
  n a;
  private final x b;
  private final y c;
  private final LinearLayoutCompat d;
  private final Drawable e;
  private final FrameLayout f;
  private final ImageView g;
  private final FrameLayout h;
  private final ImageView i;
  private final int j;
  private final DataSetObserver k = new t(this);
  private final ViewTreeObserver.OnGlobalLayoutListener l = new u(this);
  private ListPopupWindow m;
  private PopupWindow.OnDismissListener n;
  private boolean o;
  private int p = 4;
  private boolean q;
  private int r;
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }
  
  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    Object localObject = paramContext.obtainStyledAttributes(paramAttributeSet, l.ActivityChooserView, paramInt, 0);
    p = ((TypedArray)localObject).getInt(l.ActivityChooserView_initialActivityCount, 4);
    paramAttributeSet = ((TypedArray)localObject).getDrawable(l.ActivityChooserView_expandActivityOverflowButtonDrawable);
    ((TypedArray)localObject).recycle();
    LayoutInflater.from(getContext()).inflate(i.abc_activity_chooser_view, this, true);
    c = new y(this, null);
    d = ((LinearLayoutCompat)findViewById(g.activity_chooser_view_content));
    e = d.getBackground();
    h = ((FrameLayout)findViewById(g.default_activity_button));
    h.setOnClickListener(c);
    h.setOnLongClickListener(c);
    i = ((ImageView)h.findViewById(g.image));
    localObject = (FrameLayout)findViewById(g.expand_activities_button);
    ((FrameLayout)localObject).setOnClickListener(c);
    ((FrameLayout)localObject).setOnTouchListener(new v(this, (View)localObject));
    f = ((FrameLayout)localObject);
    g = ((ImageView)((FrameLayout)localObject).findViewById(g.image));
    g.setImageDrawable(paramAttributeSet);
    b = new x(this, null);
    b.registerDataSetObserver(new w(this));
    paramContext = paramContext.getResources();
    j = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(e.abc_config_prefDialogWidth));
  }
  
  private void a(int paramInt)
  {
    if (b.e() == null) {
      throw new IllegalStateException("No data model. Did you call #setDataModel?");
    }
    getViewTreeObserver().addOnGlobalLayoutListener(l);
    boolean bool;
    int i1;
    label59:
    label90:
    ListPopupWindow localListPopupWindow;
    if (h.getVisibility() == 0)
    {
      bool = true;
      int i2 = b.c();
      if (!bool) {
        break label190;
      }
      i1 = 1;
      if ((paramInt == Integer.MAX_VALUE) || (i2 <= i1 + paramInt)) {
        break label195;
      }
      b.a(true);
      b.a(paramInt - 1);
      localListPopupWindow = getListPopupWindow();
      if (!localListPopupWindow.b())
      {
        if ((!o) && (bool)) {
          break label214;
        }
        b.a(true, bool);
      }
    }
    for (;;)
    {
      localListPopupWindow.e(Math.min(b.a(), j));
      localListPopupWindow.c();
      if (a != null) {
        a.a(true);
      }
      localListPopupWindow.g().setContentDescription(getContext().getString(j.abc_activitychooserview_choose_application));
      return;
      bool = false;
      break;
      label190:
      i1 = 0;
      break label59;
      label195:
      b.a(false);
      b.a(paramInt);
      break label90;
      label214:
      b.a(false, false);
    }
  }
  
  private void d()
  {
    if (b.getCount() > 0)
    {
      f.setEnabled(true);
      int i1 = b.c();
      int i2 = b.d();
      if ((i1 != 1) && ((i1 <= 1) || (i2 <= 0))) {
        break label161;
      }
      h.setVisibility(0);
      Object localObject = b.b();
      PackageManager localPackageManager = getContext().getPackageManager();
      i.setImageDrawable(((ResolveInfo)localObject).loadIcon(localPackageManager));
      if (r != 0)
      {
        localObject = ((ResolveInfo)localObject).loadLabel(localPackageManager);
        localObject = getContext().getString(r, new Object[] { localObject });
        h.setContentDescription((CharSequence)localObject);
      }
    }
    for (;;)
    {
      if (h.getVisibility() != 0) {
        break label173;
      }
      d.setBackgroundDrawable(e);
      return;
      f.setEnabled(false);
      break;
      label161:
      h.setVisibility(8);
    }
    label173:
    d.setBackgroundDrawable(null);
  }
  
  private ListPopupWindow getListPopupWindow()
  {
    if (m == null)
    {
      m = new ListPopupWindow(getContext());
      m.a(b);
      m.a(this);
      m.a(true);
      m.a(c);
      m.a(c);
    }
    return m;
  }
  
  public boolean a()
  {
    if ((c()) || (!q)) {
      return false;
    }
    o = false;
    a(p);
    return true;
  }
  
  public boolean b()
  {
    if (c())
    {
      getListPopupWindow().a();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(l);
      }
    }
    return true;
  }
  
  public boolean c()
  {
    return getListPopupWindow().b();
  }
  
  public m getDataModel()
  {
    return b.e();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    m localm = b.e();
    if (localm != null) {
      localm.registerObserver(k);
    }
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = b.e();
    if (localObject != null) {
      ((m)localObject).unregisterObserver(k);
    }
    localObject = getViewTreeObserver();
    if (((ViewTreeObserver)localObject).isAlive()) {
      ((ViewTreeObserver)localObject).removeGlobalOnLayoutListener(l);
    }
    if (c()) {
      b();
    }
    q = false;
  }
  
  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    d.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!c()) {
      b();
    }
  }
  
  protected void onMeasure(int paramInt1, int paramInt2)
  {
    LinearLayoutCompat localLinearLayoutCompat = d;
    int i1 = paramInt2;
    if (h.getVisibility() != 0) {
      i1 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    }
    measureChild(localLinearLayoutCompat, paramInt1, i1);
    setMeasuredDimension(localLinearLayoutCompat.getMeasuredWidth(), localLinearLayoutCompat.getMeasuredHeight());
  }
  
  public void setActivityChooserModel(m paramm)
  {
    b.a(paramm);
    if (c())
    {
      b();
      a();
    }
  }
  
  public void setDefaultActionButtonContentDescription(int paramInt)
  {
    r = paramInt;
  }
  
  public void setExpandActivityOverflowButtonContentDescription(int paramInt)
  {
    String str = getContext().getString(paramInt);
    g.setContentDescription(str);
  }
  
  public void setExpandActivityOverflowButtonDrawable(Drawable paramDrawable)
  {
    g.setImageDrawable(paramDrawable);
  }
  
  public void setInitialActivityCount(int paramInt)
  {
    p = paramInt;
  }
  
  public void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    n = paramOnDismissListener;
  }
  
  public void setProvider(n paramn)
  {
    a = paramn;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */