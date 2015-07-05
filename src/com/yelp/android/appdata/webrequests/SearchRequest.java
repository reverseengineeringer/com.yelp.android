package com.yelp.android.appdata.webrequests;

import android.os.Parcelable;
import com.yelp.android.ax.a;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import java.util.EnumSet;

public abstract interface SearchRequest
  extends Parcelable
{
  public abstract void cancel(boolean paramBoolean);
  
  public abstract SearchRequest copy();
  
  public abstract Category getCategory();
  
  public abstract Filter getFilter();
  
  public abstract BusinessSearchRequest.FormatMode getFormatMode();
  
  public abstract double[] getRegion();
  
  public abstract BusinessSearchRequest.SearchMode getSearchMode();
  
  public abstract EnumSet<SearchRequest.SearchOption> getSearchOptions();
  
  public abstract String getSearchTerms();
  
  public abstract String getTermNear();
  
  public abstract String getUrlString();
  
  public abstract boolean isCompleted();
  
  public abstract boolean isFetching();
  
  public abstract void prepareQuery();
  
  public abstract void search();
  
  public abstract SearchRequest setCacheAdapter(a parama);
  
  public abstract SearchRequest setCallback(j<SearchRequest.SearchResponse> paramj);
  
  public abstract void setOffset(int paramInt);
  
  public abstract void setSearchOptions(EnumSet<SearchRequest.SearchOption> paramEnumSet);
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.SearchRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */