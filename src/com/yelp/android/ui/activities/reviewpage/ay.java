package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.util.x;
import com.yelp.android.util.StringUtils;

class ay
  extends x<Tip, Spannable>
{
  ay(aw paramaw) {}
  
  public Spannable a(Context paramContext, Tip paramTip)
  {
    return StringUtils.a(SpannableString.valueOf(paramTip.getCountsText(paramContext)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */