package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.os.Parcelable;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.PromotedFilter;
import com.yelp.android.serializable.SearchResultLocalAd;
import java.util.List;

public abstract interface SearchRequest$SearchResponse
  extends Parcelable
{
  public abstract List<BusinessSearchResult> getAdBusinessSearchResults();
  
  public abstract List<Address> getAmbiguousLocations();
  
  public abstract String getAttribution();
  
  public abstract List<BusinessSearchResult> getBusinessSearchResults();
  
  public abstract List<SearchResultLocalAd> getLocalAds();
  
  public abstract Address getLocation();
  
  public abstract int getOffset();
  
  public abstract PromotedFilter getPromotedFilter();
  
  public abstract double[] getRegion();
  
  public abstract String getRequestId();
  
  public abstract String getSpellingSuggestion();
  
  public abstract AttributeFilters getSuggestedFilters();
  
  public abstract int getTotal();
  
  public abstract SearchRequest.SearchResponse.Foldability isFolded();
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.SearchRequest.SearchResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */