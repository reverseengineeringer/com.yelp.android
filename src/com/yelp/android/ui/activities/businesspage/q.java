package com.yelp.android.ui.activities.businesspage;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;
import com.yelp.android.ui.widgets.SpannableRelativeLayout;

final class q
  implements LayoutInflater.Factory
{
  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramString.equalsIgnoreCase(SpannableRelativeLayout.class.getName()))
    {
      paramString = new SpannableRelativeLayout(paramContext, null, 2130772326);
      paramString.setId(paramAttributeSet.getIdAttributeResourceValue(2131492893));
      return paramString;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.businesspage.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */