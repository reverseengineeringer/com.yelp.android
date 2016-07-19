package com.yelp.android.ui.activities.profile;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.brightcove.player.util.StringUtil;
import com.yelp.android.serializable.ReviewDraft;
import com.yelp.android.ui.util.t;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class c
  extends w<ReviewDraft>
{
  private t a;
  
  public c(t paramt)
  {
    a = paramt;
  }
  
  public ReviewDraft a(String paramString)
  {
    Iterator localIterator = a().iterator();
    while (localIterator.hasNext())
    {
      ReviewDraft localReviewDraft = (ReviewDraft)localIterator.next();
      if ((!StringUtil.isEmpty(paramString)) && (paramString.equals(localReviewDraft.c()))) {
        return localReviewDraft;
      }
    }
    return null;
  }
  
  public ArrayList<ReviewDraft> b()
  {
    return new ArrayList(a());
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(paramViewGroup.getContext()).inflate(2130903389, paramViewGroup, false);
      localView.setTag(new c.a(localView, null));
    }
    c.a.a((c.a)localView.getTag(), (ReviewDraft)getItem(paramInt), paramViewGroup.getContext(), a);
    return localView;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */