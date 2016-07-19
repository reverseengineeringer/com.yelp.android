package android.support.v7.internal.widget;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.widget.LinearLayoutCompat;
import android.support.v7.widget.ListPopupWindow;
import android.support.v7.widget.ListPopupWindow.b;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import android.widget.TextView;
import com.yelp.android.j.a.d;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.i;
import com.yelp.android.j.a.k;

public class ActivityChooserView
  extends ViewGroup
{
  android.support.v4.view.d a;
  private final a b;
  private final b c;
  private final LinearLayoutCompat d;
  private final Drawable e;
  private final FrameLayout f;
  private final ImageView g;
  private final FrameLayout h;
  private final ImageView i;
  private final int j;
  private final DataSetObserver k = new DataSetObserver()
  {
    public void onChanged()
    {
      super.onChanged();
      ActivityChooserView.a(ActivityChooserView.this).notifyDataSetChanged();
    }
    
    public void onInvalidated()
    {
      super.onInvalidated();
      ActivityChooserView.a(ActivityChooserView.this).notifyDataSetInvalidated();
    }
  };
  private final ViewTreeObserver.OnGlobalLayoutListener l = new ViewTreeObserver.OnGlobalLayoutListener()
  {
    public void onGlobalLayout()
    {
      if (c())
      {
        if (isShown()) {
          break label31;
        }
        ActivityChooserView.b(ActivityChooserView.this).i();
      }
      label31:
      do
      {
        return;
        ActivityChooserView.b(ActivityChooserView.this).c();
      } while (a == null);
      a.a(true);
    }
  };
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
    Object localObject = paramContext.obtainStyledAttributes(paramAttributeSet, a.k.ActivityChooserView, paramInt, 0);
    p = ((TypedArray)localObject).getInt(a.k.ActivityChooserView_initialActivityCount, 4);
    paramAttributeSet = ((TypedArray)localObject).getDrawable(a.k.ActivityChooserView_expandActivityOverflowButtonDrawable);
    ((TypedArray)localObject).recycle();
    LayoutInflater.from(getContext()).inflate(a.h.abc_activity_chooser_view, this, true);
    c = new b(null);
    d = ((LinearLayoutCompat)findViewById(a.f.activity_chooser_view_content));
    e = d.getBackground();
    h = ((FrameLayout)findViewById(a.f.default_activity_button));
    h.setOnClickListener(c);
    h.setOnLongClickListener(c);
    i = ((ImageView)h.findViewById(a.f.image));
    localObject = (FrameLayout)findViewById(a.f.expand_activities_button);
    ((FrameLayout)localObject).setOnClickListener(c);
    ((FrameLayout)localObject).setOnTouchListener(new ListPopupWindow.b((View)localObject)
    {
      public ListPopupWindow a()
      {
        return ActivityChooserView.b(ActivityChooserView.this);
      }
      
      protected boolean b()
      {
        a();
        return true;
      }
      
      protected boolean c()
      {
        ActivityChooserView.this.b();
        return true;
      }
    });
    f = ((FrameLayout)localObject);
    g = ((ImageView)((FrameLayout)localObject).findViewById(a.f.image));
    g.setImageDrawable(paramAttributeSet);
    b = new a(null);
    b.registerDataSetObserver(new DataSetObserver()
    {
      public void onChanged()
      {
        super.onChanged();
        ActivityChooserView.c(ActivityChooserView.this);
      }
    });
    paramContext = paramContext.getResources();
    j = Math.max(getDisplayMetricswidthPixels / 2, paramContext.getDimensionPixelSize(a.d.abc_config_prefDialogWidth));
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
      if (!localListPopupWindow.k())
      {
        if ((!o) && (bool)) {
          break label214;
        }
        b.a(true, bool);
      }
    }
    for (;;)
    {
      localListPopupWindow.f(Math.min(b.a(), j));
      localListPopupWindow.c();
      if (a != null) {
        a.a(true);
      }
      localListPopupWindow.m().setContentDescription(getContext().getString(a.i.abc_activitychooserview_choose_application));
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
      getListPopupWindow().i();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive()) {
        localViewTreeObserver.removeGlobalOnLayoutListener(l);
      }
    }
    return true;
  }
  
  public boolean c()
  {
    return getListPopupWindow().k();
  }
  
  public d getDataModel()
  {
    return b.e();
  }
  
  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    d locald = b.e();
    if (locald != null) {
      locald.registerObserver(k);
    }
    q = true;
  }
  
  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    Object localObject = b.e();
    if (localObject != null) {
      ((d)localObject).unregisterObserver(k);
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
  
  public void setActivityChooserModel(d paramd)
  {
    b.a(paramd);
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
  
  public void setProvider(android.support.v4.view.d paramd)
  {
    a = paramd;
  }
  
  public static class InnerLayout
    extends LinearLayoutCompat
  {
    private static final int[] a = { 16842964 };
    
    public InnerLayout(Context paramContext, AttributeSet paramAttributeSet)
    {
      super(paramAttributeSet);
      paramContext = p.a(paramContext, paramAttributeSet, a);
      setBackgroundDrawable(paramContext.a(0));
      paramContext.b();
    }
  }
  
  private class a
    extends BaseAdapter
  {
    private d b;
    private int c = 4;
    private boolean d;
    private boolean e;
    private boolean f;
    
    private a() {}
    
    public int a()
    {
      int i = 0;
      int k = c;
      c = Integer.MAX_VALUE;
      int m = View.MeasureSpec.makeMeasureSpec(0, 0);
      int n = View.MeasureSpec.makeMeasureSpec(0, 0);
      int i1 = getCount();
      View localView = null;
      int j = 0;
      while (i < i1)
      {
        localView = getView(i, localView, null);
        localView.measure(m, n);
        j = Math.max(j, localView.getMeasuredWidth());
        i += 1;
      }
      c = k;
      return j;
    }
    
    public void a(int paramInt)
    {
      if (c != paramInt)
      {
        c = paramInt;
        notifyDataSetChanged();
      }
    }
    
    public void a(d paramd)
    {
      d locald = ActivityChooserView.a(ActivityChooserView.this).e();
      if ((locald != null) && (isShown())) {
        locald.unregisterObserver(ActivityChooserView.i(ActivityChooserView.this));
      }
      b = paramd;
      if ((paramd != null) && (isShown())) {
        paramd.registerObserver(ActivityChooserView.i(ActivityChooserView.this));
      }
      notifyDataSetChanged();
    }
    
    public void a(boolean paramBoolean)
    {
      if (f != paramBoolean)
      {
        f = paramBoolean;
        notifyDataSetChanged();
      }
    }
    
    public void a(boolean paramBoolean1, boolean paramBoolean2)
    {
      if ((d != paramBoolean1) || (e != paramBoolean2))
      {
        d = paramBoolean1;
        e = paramBoolean2;
        notifyDataSetChanged();
      }
    }
    
    public ResolveInfo b()
    {
      return b.b();
    }
    
    public int c()
    {
      return b.a();
    }
    
    public int d()
    {
      return b.c();
    }
    
    public d e()
    {
      return b;
    }
    
    public boolean f()
    {
      return d;
    }
    
    public int getCount()
    {
      int j = b.a();
      int i = j;
      if (!d)
      {
        i = j;
        if (b.b() != null) {
          i = j - 1;
        }
      }
      j = Math.min(i, c);
      i = j;
      if (f) {
        i = j + 1;
      }
      return i;
    }
    
    public Object getItem(int paramInt)
    {
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        return null;
      }
      int i = paramInt;
      if (!d)
      {
        i = paramInt;
        if (b.b() != null) {
          i = paramInt + 1;
        }
      }
      return b.a(i);
    }
    
    public long getItemId(int paramInt)
    {
      return paramInt;
    }
    
    public int getItemViewType(int paramInt)
    {
      if ((f) && (paramInt == getCount() - 1)) {
        return 1;
      }
      return 0;
    }
    
    public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
    {
      View localView;
      switch (getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        if (paramView != null)
        {
          localView = paramView;
          if (paramView.getId() == 1) {}
        }
        else
        {
          localView = LayoutInflater.from(getContext()).inflate(a.h.abc_activity_chooser_view_list_item, paramViewGroup, false);
          localView.setId(1);
          ((TextView)localView.findViewById(a.f.title)).setText(getContext().getString(a.i.abc_activity_chooser_view_see_all));
        }
        return localView;
      }
      if (paramView != null)
      {
        localView = paramView;
        if (paramView.getId() == a.f.list_item) {}
      }
      else
      {
        localView = LayoutInflater.from(getContext()).inflate(a.h.abc_activity_chooser_view_list_item, paramViewGroup, false);
      }
      paramView = getContext().getPackageManager();
      paramViewGroup = (ImageView)localView.findViewById(a.f.icon);
      ResolveInfo localResolveInfo = (ResolveInfo)getItem(paramInt);
      paramViewGroup.setImageDrawable(localResolveInfo.loadIcon(paramView));
      ((TextView)localView.findViewById(a.f.title)).setText(localResolveInfo.loadLabel(paramView));
      if ((d) && (paramInt == 0) && (e))
      {
        ai.c(localView, true);
        return localView;
      }
      ai.c(localView, false);
      return localView;
    }
    
    public int getViewTypeCount()
    {
      return 3;
    }
  }
  
  private class b
    implements View.OnClickListener, View.OnLongClickListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
  {
    private b() {}
    
    private void a()
    {
      if (ActivityChooserView.h(ActivityChooserView.this) != null) {
        ActivityChooserView.h(ActivityChooserView.this).onDismiss();
      }
    }
    
    public void onClick(View paramView)
    {
      if (paramView == ActivityChooserView.e(ActivityChooserView.this))
      {
        b();
        paramView = ActivityChooserView.a(ActivityChooserView.this).b();
        int i = ActivityChooserView.a(ActivityChooserView.this).e().a(paramView);
        paramView = ActivityChooserView.a(ActivityChooserView.this).e().b(i);
        if (paramView != null)
        {
          paramView.addFlags(524288);
          getContext().startActivity(paramView);
        }
        return;
      }
      if (paramView == ActivityChooserView.f(ActivityChooserView.this))
      {
        ActivityChooserView.a(ActivityChooserView.this, false);
        ActivityChooserView.a(ActivityChooserView.this, ActivityChooserView.g(ActivityChooserView.this));
        return;
      }
      throw new IllegalArgumentException();
    }
    
    public void onDismiss()
    {
      a();
      if (a != null) {
        a.a(false);
      }
    }
    
    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
    {
      switch (((ActivityChooserView.a)paramAdapterView.getAdapter()).getItemViewType(paramInt))
      {
      default: 
        throw new IllegalArgumentException();
      case 1: 
        ActivityChooserView.a(ActivityChooserView.this, Integer.MAX_VALUE);
      }
      do
      {
        return;
        b();
        if (!ActivityChooserView.d(ActivityChooserView.this)) {
          break;
        }
      } while (paramInt <= 0);
      ActivityChooserView.a(ActivityChooserView.this).e().c(paramInt);
      return;
      if (ActivityChooserView.a(ActivityChooserView.this).f()) {}
      for (;;)
      {
        paramAdapterView = ActivityChooserView.a(ActivityChooserView.this).e().b(paramInt);
        if (paramAdapterView == null) {
          break;
        }
        paramAdapterView.addFlags(524288);
        getContext().startActivity(paramAdapterView);
        return;
        paramInt += 1;
      }
    }
    
    public boolean onLongClick(View paramView)
    {
      if (paramView == ActivityChooserView.e(ActivityChooserView.this))
      {
        if (ActivityChooserView.a(ActivityChooserView.this).getCount() > 0)
        {
          ActivityChooserView.a(ActivityChooserView.this, true);
          ActivityChooserView.a(ActivityChooserView.this, ActivityChooserView.g(ActivityChooserView.this));
        }
        return true;
      }
      throw new IllegalArgumentException();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */