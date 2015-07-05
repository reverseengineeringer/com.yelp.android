package com.yelp.android.ui.activities.reviewpage;

import android.content.Context;
import com.yelp.android.serializable.Tip;
import com.yelp.android.ui.util.x;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;

class az
  extends x<Tip, String>
{
  az(aw paramaw) {}
  
  public String a(Context paramContext, Tip paramTip)
  {
    return StringUtils.a(paramContext, StringUtils.Format.LONG, paramTip.getTime());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */