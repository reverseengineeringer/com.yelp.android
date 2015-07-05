package com.yelp.android.ui.activities.feed;

import android.content.Context;
import android.text.Spannable;
import com.yelp.android.serializable.TipFeedEntry;
import com.yelp.android.ui.util.cr;
import com.yelp.android.ui.util.x;

class bq
  extends x<TipFeedEntry, Spannable>
{
  bq(bl parambl) {}
  
  public Spannable a(Context paramContext, TipFeedEntry paramTipFeedEntry)
  {
    return cr.a(paramContext, paramTipFeedEntry.getTip());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.feed.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */