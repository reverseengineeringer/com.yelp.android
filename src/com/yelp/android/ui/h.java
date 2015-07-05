package com.yelp.android.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Paint;
import android.util.Pair;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import com.yelp.android.DinoListView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.ao;
import com.yelp.android.bc.a;
import com.yelp.android.bc.c;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.util.j;

public class h
  extends BaseAdapter
  implements j
{
  private static final int a = ao.a(97);
  private static final int[] b = { 2130837889, 2130837899, 2130837900, 2130837901, 2130837902, 2130837903, 2130837904, 2130837905, 2130837906, 2130837890, 2130837891, 2130837892, 2130837893, 2130837894, 2130837895, 2130837896, 2130837897, 2130837898 };
  private DinoListView c;
  private int[] d;
  private Context e;
  private boolean f;
  private boolean g;
  private Paint h;
  
  public h(Context paramContext, DinoListView paramDinoListView)
  {
    e = paramContext;
    Resources localResources = AppData.b().getResources();
    c = paramDinoListView;
    f = true;
    g = true;
    d = new int[b.length];
    d[0] = ((Integer)ab0second).intValue();
    while (i < b.length)
    {
      d[i] = (((Integer)absecond).intValue() + d[(i - 1)]);
      i += 1;
    }
    h = new Paint();
    h.setColor(paramContext.getResources().getColor(2131361804));
    h.setStrokeWidth(a);
  }
  
  public int a()
  {
    return d[8];
  }
  
  public Integer a(int paramInt)
  {
    return Integer.valueOf(b[paramInt]);
  }
  
  public int b(int paramInt)
  {
    return d[paramInt];
  }
  
  public void b()
  {
    g = false;
  }
  
  public boolean c()
  {
    return g;
  }
  
  public void clear() {}
  
  public void d()
  {
    f = false;
    notifyDataSetChanged();
  }
  
  public void e()
  {
    f = true;
    notifyDataSetChanged();
  }
  
  public boolean f()
  {
    return f;
  }
  
  public int getCount()
  {
    if ((g) && (!f)) {
      return b.length;
    }
    return 0;
  }
  
  public long getItemId(int paramInt)
  {
    return b[paramInt];
  }
  
  public int getItemViewType(int paramInt)
  {
    int i = 2;
    if (paramInt == 2) {
      i = 3;
    }
    while (paramInt == 5) {
      return i;
    }
    if (paramInt < 8) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if ((paramView == null) && (getItemViewType(paramInt) == 1))
    {
      paramView = new i(e, h);
      paramView.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
    }
    for (;;)
    {
      paramView = (ImageView)paramView;
      paramView.setImageDrawable(AppData.b().getResources().getDrawable(b[paramInt]));
      paramView.setScaleType(ImageView.ScaleType.FIT_XY);
      paramInt = c.getLastVisiblePosition();
      int i = c.getFirstVisiblePosition();
      c.getOnScrollListener().onScroll(c, c.getFirstVisiblePosition(), paramInt - i + 1, c.getCount());
      return paramView;
      if ((paramView == null) && (getItemViewType(paramInt) == 2))
      {
        paramView = new c(e, h);
        ((c)paramView).a();
      }
      else if ((paramView == null) && (getItemViewType(paramInt) == 3))
      {
        paramView = new a(e, h);
        ((a)paramView).a();
      }
      else if ((paramView == null) && (getItemViewType(paramInt) == 0))
      {
        paramView = new ImageView(e);
      }
    }
  }
  
  public int getViewTypeCount()
  {
    return 4;
  }
  
  public boolean isEnabled(int paramInt)
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */