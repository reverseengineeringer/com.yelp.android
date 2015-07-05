package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.os.Parcel;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.PromotedFilter;
import com.yelp.android.serializable.SearchResultLocalAd;
import java.util.Collections;
import java.util.List;

public final class BusinessSearchRequest$BusinessSearchResponse
  implements SearchRequest.SearchResponse
{
  public static final af CREATOR = new ae();
  private List<BusinessSearchResult> mAdBusinessSearchResults;
  private List<Address> mAmbiguousLocations = Collections.emptyList();
  private String mAttribution;
  private List<BusinessSearchResult> mBusinessSearchResults = Collections.emptyList();
  private SearchRequest.SearchResponse.Foldability mFolded;
  private List<SearchResultLocalAd> mLocalAds;
  private Address mLocation;
  private int mOffset;
  private PromotedFilter mPromotedFilter;
  private double[] mRegion = new double[0];
  private String mRequestId;
  private AttributeFilters mSuggestedFilters;
  private String mSuggestedSpelling;
  private int mTotal;
  
  public int describeContents()
  {
    return 0;
  }
  
  public List<BusinessSearchResult> getAdBusinessSearchResults()
  {
    return mAdBusinessSearchResults;
  }
  
  public List<Address> getAmbiguousLocations()
  {
    return mAmbiguousLocations;
  }
  
  public String getAttribution()
  {
    return mAttribution;
  }
  
  public List<BusinessSearchResult> getBusinessSearchResults()
  {
    return mBusinessSearchResults;
  }
  
  public List<SearchResultLocalAd> getLocalAds()
  {
    return mLocalAds;
  }
  
  public Address getLocation()
  {
    return mLocation;
  }
  
  public int getOffset()
  {
    return mOffset;
  }
  
  public PromotedFilter getPromotedFilter()
  {
    return mPromotedFilter;
  }
  
  public double[] getRegion()
  {
    return mRegion;
  }
  
  public String getRequestId()
  {
    return mRequestId;
  }
  
  public String getSpellingSuggestion()
  {
    return mSuggestedSpelling;
  }
  
  public AttributeFilters getSuggestedFilters()
  {
    return mSuggestedFilters;
  }
  
  public int getTotal()
  {
    return mTotal;
  }
  
  public SearchRequest.SearchResponse.Foldability isFolded()
  {
    return mFolded;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(mAmbiguousLocations);
    paramParcel.writeTypedList(mBusinessSearchResults);
    paramParcel.writeParcelable(mLocation, paramInt);
    paramParcel.writeString(mSuggestedSpelling);
    paramParcel.writeInt(mRegion.length);
    paramParcel.writeDoubleArray(mRegion);
    paramParcel.writeInt(mTotal);
    paramParcel.writeSerializable(mFolded);
    paramParcel.writeInt(mOffset);
    paramParcel.writeString(mRequestId);
    paramParcel.writeString(mAttribution);
    paramParcel.writeTypedList(mLocalAds);
    paramParcel.writeTypedList(mAdBusinessSearchResults);
    paramParcel.writeParcelable(mSuggestedFilters, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */