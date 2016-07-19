package com.yelp.android.ui.panels;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import com.yelp.android.cg.b;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.feed.FeedType;
import com.yelp.android.ui.util.g;

public abstract class a
  extends BaseAdapter
  implements com.yelp.android.ui.util.f, g
{
  private final LayoutInflater a;
  
  public a(Context paramContext)
  {
    a = LayoutInflater.from(paramContext);
  }
  
  public LayoutInflater a()
  {
    return a;
  }
  
  public void a(int paramInt, b paramb)
  {
    YelpBusiness localYelpBusiness = a(paramInt);
    paramb.a(0, null, localYelpBusiness.z(), null);
    paramb.a(localYelpBusiness.au(), localYelpBusiness.P(), -1, localYelpBusiness.N(), localYelpBusiness.e());
  }
  
  public Object getItem(int paramInt)
  {
    return a(paramInt);
  }
  
  public long getItemId(int paramInt)
  {
    return paramInt;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView;
    if (paramView != null)
    {
      localView = paramView;
      if ((paramView.getTag() instanceof com.yelp.android.ch.f)) {}
    }
    else
    {
      localView = a.inflate(2130903410, paramViewGroup, false);
      localView.setTag(new com.yelp.android.ch.f(FeedType.USER, localView));
    }
    a(paramInt, (com.yelp.android.ch.f)localView.getTag());
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.panels.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */