package com.yelp.android.ui.activities.leaderboard;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.appdata.webrequests.ed;
import com.yelp.android.serializable.RankTitle.Rank;
import com.yelp.android.serializable.Royal;
import com.yelp.android.serializable.RoyaltySet;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.o;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.bs;
import com.yelp.android.ui.util.bw;
import java.util.ArrayList;
import java.util.Iterator;

public class RoyaltyFragment
  extends YelpListFragment
{
  private ArrayList<RoyaltySet> a;
  private ed b;
  private bs c;
  private final com.yelp.android.appdata.webrequests.j<ArrayList<RoyaltySet>> d = new i(this);
  private final o e = new j(this);
  
  private bs a(ArrayList<RoyaltySet> paramArrayList)
  {
    bs localbs = new bs();
    g localg1 = new g();
    g localg2 = new g();
    g localg3 = new g();
    RoyaltySet localRoyaltySet = null;
    Iterator localIterator = paramArrayList.iterator();
    paramArrayList = localRoyaltySet;
    while (localIterator.hasNext())
    {
      localRoyaltySet = (RoyaltySet)localIterator.next();
      ArrayList localArrayList = localRoyaltySet.getRoyalty();
      if ((localArrayList != null) && (!localArrayList.isEmpty()))
      {
        RankTitle.Rank localRank = RankTitle.Rank.rankForString(((Royal)localArrayList.get(0)).getTitle());
        if (localRank != null)
        {
          switch (l.a[localRank.ordinal()])
          {
          }
          for (;;)
          {
            int i = localRank.getRankIcon();
            paramArrayList.a(localArrayList);
            localbs.a(i, bw.a(localRoyaltySet.getDescription(), paramArrayList).c(i).a());
            break;
            paramArrayList = localg1;
            continue;
            paramArrayList = localg2;
            continue;
            paramArrayList = localg3;
          }
        }
      }
    }
    return localbs;
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (Royal)c.getItem(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.getUserId()));
  }
  
  protected void b()
  {
    super.b();
    if (b == null)
    {
      b = new ed(d);
      b.executeWithLocation(new Void[0]);
      i_();
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
    a("royalty", b, false);
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((ed)a("royalty", b, d));
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