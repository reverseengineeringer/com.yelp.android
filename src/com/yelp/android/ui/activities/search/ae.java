package com.yelp.android.ui.activities.search;

import android.view.KeyEvent;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;

class ae
  implements TextView.OnEditorActionListener
{
  ae(SearchOverlay paramSearchOverlay) {}
  
  public boolean onEditorAction(TextView paramTextView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 0) || (paramInt == 3))
    {
      AppData.a(EventIri.SearchButtonKeyboard);
      SearchOverlay.a(a, EventIri.SearchButtonKeyboard.getIriName());
      return true;
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.search.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */