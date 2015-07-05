package com.yelp.android.ui.activities.search;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.EditText;
import android.widget.TextView;
import com.yelp.android.ui.util.bz;
import java.util.List;

class ai
  implements AdapterView.OnItemClickListener
{
  ai(SearchOverlay paramSearchOverlay) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    paramAdapterView = SearchOverlay.b(a).getText().toString();
    paramView = ((TextView)paramView.findViewById(2131493901)).getText().toString();
    if (a.k().contains(paramView))
    {
      SearchOverlay.b(a).setHint(paramView);
      SearchOverlay.a(a, SearchOverlay.b(a), "");
    }
    for (;;)
    {
      SearchOverlay.i(a);
      SearchOverlay.a(a).requestFocus();
      bz.a(a, SearchOverlay.r(a), null, paramView, paramAdapterView, paramInt);
      return;
      SearchOverlay.a(a, SearchOverlay.b(a), paramView);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */