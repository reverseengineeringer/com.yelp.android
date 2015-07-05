package com.yelp.android.ui.activities;

import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.serializable.RankLocation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.ui.activities.feed.c;
import com.yelp.android.ui.panels.a;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;

class dl
  extends a
{
  private final ArrayList<RankLocation> a;
  private final Bundle b;
  private final Context c;
  
  public dl(Context paramContext, ArrayList<RankLocation> paramArrayList, Bundle paramBundle)
  {
    super(paramContext);
    c = paramContext;
    a = paramArrayList;
    b = paramBundle;
  }
  
  public YelpBusiness a(int paramInt)
  {
    return b(paramInt).getBusiness();
  }
  
  public void a(int paramInt, c paramc)
  {
    super.a(paramInt, paramc);
    e.setText(StringUtils.a(c, 2131623942, b.getInt(a(paramInt).getId()), new String[0]));
  }
  
  public RankLocation b(int paramInt)
  {
    return (RankLocation)a.get(paramInt);
  }
  
  public void clear()
  {
    a.clear();
  }
  
  public int getCount()
  {
    return a.size();
  }
  
  public int getItemViewType(int paramInt)
  {
    if (((RankLocation)a.get(paramInt)).getBusiness() == null) {
      return 0;
    }
    return 1;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    RankLocation localRankLocation = b(paramInt);
    if (localRankLocation.getBusiness() == null)
    {
      View localView = paramView;
      if (paramView == null)
      {
        localView = a().inflate(2130903290, paramViewGroup, false);
        localView.setTag(new dk(localView));
      }
      paramView = (dk)localView.getTag();
      a.setText(localRankLocation.getName());
      b.setText(StringUtils.a(c, 2131623948, localRankLocation.getTopUserCount(), new String[0]));
      c.setVisibility(8);
      return localView;
    }
    return super.getView(paramInt, paramView, paramViewGroup);
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */