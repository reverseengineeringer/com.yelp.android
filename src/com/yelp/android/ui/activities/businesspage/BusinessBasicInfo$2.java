package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.content.res.Resources;
import android.text.Spannable;
import android.text.TextUtils;
import android.text.style.ForegroundColorSpan;
import android.text.style.StyleSpan;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.StringUtils;

 enum BusinessBasicInfo$2
{
  BusinessBasicInfo$2(int paramInt1)
  {
    super(paramString, paramInt, paramInt1, null);
  }
  
  public String getSubtitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    return null;
  }
  
  public CharSequence getTitle(Context paramContext, YelpBusiness paramYelpBusiness)
  {
    paramYelpBusiness = StringUtils.a(paramContext, 2131165844, new Object[] { paramYelpBusiness.getLocalizedPhone() });
    StringUtils.a((Spannable)paramYelpBusiness, StyleSpan.class, new ForegroundColorSpan(paramContext.getResources().getColor(2131361808)), 18);
    return paramYelpBusiness;
  }
  
  public boolean shouldShow(YelpBusiness paramYelpBusiness)
  {
    return !TextUtils.isEmpty(paramYelpBusiness.getLocalizedPhone());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.BusinessBasicInfo.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */