package com.yelp.android.ui.activities.leaderboard;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.appdata.webrequests.dg;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.Royal;
import com.yelp.android.serializable.RoyaltySet;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.util.aj;
import com.yelp.android.ui.util.aj.c;
import com.yelp.android.ui.util.w;
import java.util.ArrayList;
import java.util.Iterator;

public class RoyaltyFragment
  extends YelpListFragment
{
  private ArrayList<RoyaltySet> a;
  private dg b;
  private aj c;
  private final k.b<ArrayList<RoyaltySet>> d = new RoyaltyFragment.1(this);
  private final b.e e = new RoyaltyFragment.2(this);
  
  private aj a(ArrayList<RoyaltySet> paramArrayList)
  {
    aj localaj = new aj();
    a locala1 = new a();
    a locala2 = new a();
    a locala3 = new a();
    RoyaltySet localRoyaltySet = null;
    Iterator localIterator = paramArrayList.iterator();
    paramArrayList = localRoyaltySet;
    while (localIterator.hasNext())
    {
      localRoyaltySet = (RoyaltySet)localIterator.next();
      ArrayList localArrayList = localRoyaltySet.a();
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        RankTitle.Rank localRank = RankTitle.Rank.rankForString(((Royal)localArrayList.get(0)).d());
        if (localRank != null)
        {
          switch (RoyaltyFragment.3.a[localRank.ordinal()])
          {
          }
          for (;;)
          {
            int i = localRank.getRankIcon();
            paramArrayList.a(localArrayList);
            localaj.a(i, aj.c.a(localRoyaltySet.b(), paramArrayList).c(i).b());
            break;
            paramArrayList = locala1;
            continue;
            paramArrayList = locala2;
            continue;
            paramArrayList = locala3;
          }
        }
      }
    }
    return localaj;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Royal)c.getItem(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.e()));
  }
  
  protected void b()
  {
    super.b();
    if (b == null)
    {
      b = new dg(d);
      b.a(new Void[0]);
      H_();
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (c == null)
    {
      if (paramBundle != null) {
        break label49;
      }
      a = new ArrayList(0);
    }
    for (c = a(a);; c = a(a))
    {
      a(c);
      return;
      label49:
      a = paramBundle.getParcelableArrayList("royalty");
    }
  }
  
  public void onDetach()
  {
    super.onDetach();
    a("royalty", b);
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((dg)a("royalty", b, d));
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putParcelableArrayList("royalty", a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.RoyaltyFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */