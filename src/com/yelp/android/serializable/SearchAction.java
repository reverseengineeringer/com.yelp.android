package com.yelp.android.serializable;

import android.content.Context;
import android.os.Parcelable;
import com.yelp.android.ui.activities.businesspage.o;

public abstract interface SearchAction
  extends Parcelable
{
  public abstract int[] getBorderColor();
  
  public abstract o getBusinessListButton();
  
  public abstract int[] getDefaultColorBottom();
  
  public abstract int[] getDefaultColorTop();
  
  public abstract BusinessSearchResult.SearchActionType getSearchActionType();
  
  public abstract int[] getSelectedColorBottom();
  
  public abstract int[] getSelectedColorTop();
  
  public abstract String getText();
  
  public abstract int[] getTextColor();
  
  public abstract boolean isDisabled();
  
  public abstract void onPressed(Context paramContext, BusinessSearchResult paramBusinessSearchResult);
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.SearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */