package com.yelp.android.ui.activities.nearby;

import android.view.View;
import android.view.View.OnClickListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.NearbyRow;
import java.util.ArrayList;

final class ad
  implements View.OnClickListener
{
  private final ArrayList<NearbyRow> b;
  private final int c;
  
  private ad(ArrayList<NearbyRow> paramArrayList, int paramInt)
  {
    b = paramInt;
    int i;
    c = i;
  }
  
  public void onClick(View paramView)
  {
    AppData.a(EventIri.NearbySeeMore, "row_id", ((NearbyRow)b.get(c)).getRowId());
    a.startActivity(BusinessListComboActivity.a(paramView.getContext(), (NearbyRow)b.get(c)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.nearby.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */