package com.yelp.android.ui.activities.feed.viewbinder;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.yelp.android.cg.c;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.businesspage.ActivityBusinessPage;
import com.yelp.android.ui.util.w;

public class s
  extends w<YelpBusiness>
{
  private a a;
  
  public s(a parama)
  {
    a = parama;
  }
  
  public View getView(final int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903321, paramViewGroup, false);
      localView.setTag(new c(localView, true));
    }
    paramView = (c)localView.getTag();
    paramView.a((YelpBusiness)getItem(paramInt), paramViewGroup.getContext());
    paramView.b(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView.getContext().startActivity(ActivityBusinessPage.b(paramAnonymousView.getContext(), ((YelpBusiness)getItem(paramInt)).aD()));
      }
    });
    paramView.a(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        s.a(s.this).a((YelpBusiness)getItem(paramInt));
      }
    });
    return localView;
  }
  
  public static abstract interface a
  {
    public abstract void a(YelpBusiness paramYelpBusiness);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.viewbinder.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */