package android.support.v7.internal.widget;

import android.content.Context;
import android.content.pm.ResolveInfo;
import android.support.v4.view.ai;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.i;

class ActivityChooserView$a
  extends BaseAdapter
{
  private d b;
  private int c = 4;
  private boolean d;
  private boolean e;
  private boolean f;
  
  private ActivityChooserView$a(ActivityChooserView paramActivityChooserView) {}
  
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
    d locald = ActivityChooserView.a(a).e();
    if ((locald != null) && (a.isShown())) {
      locald.unregisterObserver(ActivityChooserView.i(a));
    }
    b = paramd;
    if ((paramd != null) && (a.isShown())) {
      paramd.registerObserver(ActivityChooserView.i(a));
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
        localView = LayoutInflater.from(a.getContext()).inflate(a.h.abc_activity_chooser_view_list_item, paramViewGroup, false);
        localView.setId(1);
        ((TextView)localView.findViewById(a.f.title)).setText(a.getContext().getString(a.i.abc_activity_chooser_view_see_all));
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
      localView = LayoutInflater.from(a.getContext()).inflate(a.h.abc_activity_chooser_view_list_item, paramViewGroup, false);
    }
    paramView = a.getContext().getPackageManager();
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

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */