package com.yelp.android.ui.activities.leaderboard;

import android.os.Bundle;
import android.view.View;
import android.widget.ListView;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest;
import com.yelp.android.appdata.webrequests.CheckInRankingsRequest.SearchMode;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.DisplayableAsUserBadge;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.activities.support.YelpListFragment;
import com.yelp.android.ui.activities.support.b.e;
import com.yelp.android.ui.util.ar;
import com.yelp.android.util.ErrorType;
import java.util.ArrayList;

public abstract class RankFragment
  extends YelpListFragment
{
  private CheckinRankAdapter a;
  private CheckInRankingsRequest b;
  private int c;
  private final k.b<ArrayList<Ranking>> d = new RankFragment.1(this);
  private final b.e e = new RankFragment.2(this);
  
  protected abstract CheckInRankingsRequest.SearchMode D_();
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    super.a(paramListView, paramView, paramInt, paramLong);
    paramListView = (DisplayableAsUserBadge)a.getItem(paramInt);
    startActivity(ActivityUserProfile.a(getActivity(), paramListView.i()));
  }
  
  protected void b()
  {
    super.b();
    if (b == null)
    {
      b = CheckInRankingsRequest.a(d, D_());
      b.a(new Void[0]);
      H_();
    }
  }
  
  protected abstract CheckinRankAdapter.RankMode c();
  
  protected abstract ErrorType f();
  
  public String g()
  {
    return getClass().getCanonicalName() + "rankings";
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    if (a == null) {
      if (paramBundle != null) {
        break label44;
      }
    }
    label44:
    for (a = new CheckinRankAdapter(getActivity(), c());; a = new CheckinRankAdapter(getActivity(), paramBundle))
    {
      a(a);
      return;
    }
  }
  
  public void onPause()
  {
    a(g(), b);
    super.onPause();
  }
  
  public void onResume()
  {
    super.onResume();
    b = ((CheckInRankingsRequest)a(g(), b, d));
    if ((b != null) && (b.u())) {
      H_();
    }
    if (c >= 0)
    {
      ar.a(m(), c, true);
      c = -1;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (a != null) {
      a.a(paramBundle);
    }
  }
  
  public void p_()
  {
    super.p_();
    a.clear();
    b = null;
    b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.RankFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */