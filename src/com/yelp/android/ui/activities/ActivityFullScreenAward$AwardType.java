package com.yelp.android.ui.activities;

import android.content.res.Resources;

public enum ActivityFullScreenAward$AwardType
{
  FirstToReview(2131165831, 2131361832, 2130838332, 2131166936),  FirstToTip(2131165836, 2131361832, 2130838333, 2131166937);
  
  public final int awardTitle;
  public final int backgroundColorId;
  public final int iconId;
  public final int titleId;
  
  private ActivityFullScreenAward$AwardType(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    awardTitle = paramInt1;
    backgroundColorId = paramInt2;
    iconId = paramInt3;
    titleId = paramInt4;
  }
  
  public abstract String getBodyText(Resources paramResources);
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityFullScreenAward.AwardType
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */