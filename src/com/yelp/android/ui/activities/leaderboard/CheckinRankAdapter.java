package com.yelp.android.ui.activities.leaderboard;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.serializable.Ranking;
import com.yelp.android.ui.util.au;
import com.yelp.android.ui.util.cp;
import com.yelp.android.ui.widgets.RoundedWebImageView.RoundingMode;
import com.yelp.android.ui.widgets.WebImageView;
import com.yelp.android.util.StringUtils;
import java.util.ArrayList;
import java.util.List;

public class CheckinRankAdapter
  extends au<Ranking>
{
  public final Context a;
  public final CheckinRankAdapter.RankMode b;
  
  public CheckinRankAdapter(Context paramContext, Bundle paramBundle)
  {
    this(paramContext, (CheckinRankAdapter.RankMode)paramBundle.getSerializable("rank_type"));
    a(paramBundle.getParcelableArrayList("rank_items"));
  }
  
  public CheckinRankAdapter(Context paramContext, CheckinRankAdapter.RankMode paramRankMode)
  {
    a = paramContext;
    b = paramRankMode;
  }
  
  public static int a(List<Ranking> paramList, String paramString)
  {
    if (!TextUtils.isEmpty(paramString))
    {
      int i = 0;
      while (i < paramList.size())
      {
        if (((Ranking)paramList.get(i)).getUserId().equals(paramString)) {
          return i;
        }
        i += 1;
      }
    }
    return 0;
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("rank_items", new ArrayList(a()));
    paramBundle.putSerializable("rank_type", b);
  }
  
  public int getItemViewType(int paramInt)
  {
    Ranking localRanking = (Ranking)getItem(paramInt);
    if (AppData.b().m().a(localRanking.getUserId())) {
      return 1;
    }
    return 0;
  }
  
  public View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Ranking localRanking = (Ranking)getItem(paramInt);
    Context localContext = paramViewGroup.getContext();
    int i = getItemViewType(paramInt);
    View localView = paramView;
    if (paramView == null)
    {
      localView = LayoutInflater.from(localContext).inflate(2130903321, paramViewGroup, false);
      paramView = new c(localView);
      localView.setTag(paramView);
      if (i != 1) {
        break label276;
      }
      a.setVisibility(0);
      if (b == CheckinRankAdapter.RankMode.BIZ)
      {
        i = 2131623942;
        paramViewGroup = StringUtils.a(localContext, i, localRanking.getCount(), new String[0]);
        a.setText(paramViewGroup);
        c.setForceMode(RoundedWebImageView.RoundingMode.CLIP);
        paramView = cp.a(localView);
        localView.setBackgroundDrawable(localContext.getResources().getDrawable(2130838360));
        cp.a(localView, paramView);
      }
    }
    else
    {
      label150:
      paramView = localView.getContext().getResources();
      paramViewGroup = (c)localView.getTag();
      d.setText(localRanking.getUserName());
      b.setText(localRanking.getRankString());
      b.setContentDescription(localRanking.getRankStringVerbose());
      if (b == CheckinRankAdapter.RankMode.BIZ)
      {
        if (paramInt != 0) {
          break label288;
        }
        b.setCompoundDrawablesWithIntrinsicBounds(paramView.getDrawable(2130838512), null, null, null);
        b.setTextColor(paramView.getColor(2131362049));
        b.setContentDescription(paramView.getString(2131166693));
      }
    }
    for (;;)
    {
      paramViewGroup.a(localRanking);
      return localView;
      i = 2131623944;
      break;
      label276:
      a.setVisibility(8);
      break label150;
      label288:
      b.setCompoundDrawables(null, null, null, null);
      b.setTextColor(paramView.getColor(2131361907));
    }
  }
  
  public int getViewTypeCount()
  {
    return 2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.leaderboard.CheckinRankAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */