package com.yelp.android.ui.activities;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.GridView;
import android.widget.ImageView;
import com.bumptech.glide.h;
import com.bumptech.glide.j;
import com.yelp.android.appdata.n;
import com.yelp.android.ui.util.z;

public class fa
  extends BaseAdapter
{
  private static final int[] a = { 2130837579, 2130837580, 2130837581, 2130837582, 2130837583, 2130837584, 2130837585, 2130837586, 2130837587 };
  private final j b;
  private final z c;
  private final Context d;
  private int e;
  
  public fa(Context paramContext)
  {
    d = paramContext;
    b = h.c(paramContext);
    c = new z();
    e = a.length;
  }
  
  public int getCount()
  {
    return e;
  }
  
  public Object getItem(int paramInt)
  {
    return null;
  }
  
  public long getItemId(int paramInt)
  {
    return 0L;
  }
  
  @TargetApi(16)
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    ImageView localImageView = (ImageView)paramView;
    paramView = localImageView;
    if (localImageView == null)
    {
      localImageView = new ImageView(d);
      paramView = localImageView;
      if (n.a(16))
      {
        paramView = localImageView;
        if (!c.a())
        {
          int i = ((GridView)paramViewGroup).getColumnWidth();
          c.a(i, i);
          paramView = localImageView;
        }
      }
    }
    c.a(paramView, new fb(this, paramInt));
    if ((d.getResources().getConfiguration().orientation == 2) && (e != ((GridView)paramViewGroup).getNumColumns() * 2))
    {
      e = (((GridView)paramViewGroup).getNumColumns() * 2);
      notifyDataSetChanged();
    }
    return paramView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */