package com.yelp.android.appdata.webrequests;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.LocationService.Accuracies;
import com.yelp.android.appdata.LocationService.AccuracyUnit;
import com.yelp.android.appdata.LocationService.Recentness;
import com.yelp.android.ax.a;
import com.yelp.android.debug.Debug;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.Filter.Sort;
import com.yelp.android.serializable.at;
import com.yelp.android.services.r;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class BusinessSearchRequest
  extends h<Void, Void, SearchRequest.SearchResponse>
  implements Parcelable, SearchRequest
{
  public static final Parcelable.Creator<BusinessSearchRequest> CREATOR = new ad();
  private static final String GEOBOX_BOTTOM_RIGHT_LAT_PARAM = "br_lat";
  private static final String GEOBOX_BOTTOM_RIGHT_LONG_PARAM = "br_long";
  private static final String GEOBOX_TOP_LEFT_LAT_PARAM = "tl_lat";
  private static final String GEOBOX_TOP_LEFT_LONG_PARAM = "tl_long";
  private static final String INCLUDE_FILTER = "1";
  private static final String OPEN_NOW_FILTER_PARAM = "opennow_filter";
  a mCacheAdapter;
  protected String mCacheDescriptorOverride;
  protected Category mCategory;
  protected BusinessSearchRequest.FormatMode mFMode;
  protected Filter mFilter;
  protected int mLimit = 20;
  protected int mPageOffset;
  protected double[] mRegion;
  protected BusinessSearchRequest.SearchMode mSearchMode;
  private final EnumSet<SearchRequest.SearchOption> mSearchOptions;
  protected String mSearchTerms;
  protected String mTermNear;
  protected boolean mUnfold;
  
  public BusinessSearchRequest()
  {
    this(null, null);
  }
  
  public BusinessSearchRequest(a parama, j<SearchRequest.SearchResponse> paramj)
  {
    super(ApiRequest.RequestType.GET, "search", LocationService.Accuracies.MEDIUM_KM, LocationService.Recentness.MINUTE, paramj, LocationService.AccuracyUnit.METERS);
    mCacheAdapter = parama;
    setLatitudeKey("lat");
    setLongitudeKey("long");
    mSearchOptions = EnumSet.noneOf(SearchRequest.SearchOption.class);
  }
  
  protected void addUrlParams(String paramString1, String paramString2, String paramString3, double[] paramArrayOfDouble, int paramInt1, Filter paramFilter, EnumSet<SearchRequest.SearchOption> paramEnumSet, BusinessSearchRequest.SearchMode paramSearchMode, BusinessSearchRequest.FormatMode paramFormatMode, int paramInt2)
  {
    if (paramEnumSet.contains(SearchRequest.SearchOption.CHECK_IN_OFFERS)) {
      addUrlParam("cio_filter", "1");
    }
    if (paramEnumSet.contains(SearchRequest.SearchOption.SALES_AND_SPECIAL_OFFERS))
    {
      addUrlParam("offers_filter", "1");
      if ((paramString2 != null) && (paramString2.length() > 0)) {
        addUrlParam("location", paramString2);
      }
      if ((paramString3 != null) && (paramString3.length() > 0)) {
        addUrlParam("category", paramString3);
      }
      if (paramFilter == null) {
        break label354;
      }
      paramString1 = paramFilter.getPricesOnly();
      if (paramString1.length() > 0)
      {
        paramString1 = paramString1.toString();
        addUrlParam("price_filter", paramString1);
        YelpLog.i(this, " Filtering :" + paramString1);
      }
      if ((!paramFilter.getBusinessState().contains(Filter.BusinessState.OPEN)) || (paramFilter.getOpenTime() == null)) {
        break label302;
      }
      addUrlParam("opennow_filter", String.valueOf(r.d(paramFilter.getOpenTime())));
    }
    for (;;)
    {
      if (getDistanceb > 0.0D)
      {
        addUrlParam("explicit_radius", "1");
        addUrlParam("radius", getDistanceb);
      }
      if (paramFilter.getSort() != Filter.Sort.Default) {
        addUrlParam("sort", paramFilter.getSort().ordinal());
      }
      paramString1 = new ArrayList();
      paramString2 = paramFilter.getAttributes().getSuggestedFilters().iterator();
      while (paramString2.hasNext()) {
        paramString1.add(((AttributeFilter)paramString2.next()).getAlias());
      }
      if ((paramString1 == null) || (paramString1.length() <= 0)) {
        break;
      }
      addUrlParam("term", paramString1);
      break;
      label302:
      if (paramFilter.getBusinessState().contains(Filter.BusinessState.OPEN)) {
        addUrlParam("opennow_filter", String.valueOf(r.a()));
      }
    }
    paramString1 = TextUtils.join(",", paramString1);
    if (!TextUtils.isEmpty(paramString1)) {
      addUrlParam("attribs_filter", paramString1);
    }
    label354:
    if ((paramArrayOfDouble != null) && (paramArrayOfDouble.length == 6))
    {
      addUrlParam("tl_lat", f.a(Double.valueOf(paramArrayOfDouble[0])));
      addUrlParam("tl_long", f.a(Double.valueOf(paramArrayOfDouble[1])));
      addUrlParam("br_lat", f.a(Double.valueOf(paramArrayOfDouble[2])));
      addUrlParam("br_long", f.a(Double.valueOf(paramArrayOfDouble[3])));
    }
    addUrlParam("limit", paramInt2);
    addUrlParam("offset", paramInt1);
    paramString1 = AppData.b().n().c();
    if (paramString1 != null)
    {
      addObfuscatedUrlParam("location_lat", paramString1.getLatitude());
      addObfuscatedUrlParam("location_long", paramString1.getLongitude());
      addObfuscatedUrlParam("location_acc", paramString1.getAccuracy());
    }
    if ((paramSearchMode != null) && (paramSearchMode != BusinessSearchRequest.SearchMode.UNKNOWN)) {
      addUrlParam("mode", id);
    }
    if (paramFormatMode != null) {
      addUrlParam("fmode", specifier);
    }
    if (mUnfold) {
      addUrlParam("unfold", mUnfold);
    }
  }
  
  protected void cacheRawResponse(String paramString)
  {
    try
    {
      mCacheAdapter.a(this, paramString);
      return;
    }
    catch (Exception paramString)
    {
      BaseYelpApplication.a(this, "Error caching raw response, ignoring: " + paramString.toString(), new Object[0]);
    }
  }
  
  public BusinessSearchRequest copy()
  {
    BusinessSearchRequest localBusinessSearchRequest = new BusinessSearchRequest(mCacheAdapter, null);
    localBusinessSearchRequest.setCallback(getCallback());
    localBusinessSearchRequest.setHttpClient(getHttpClient());
    localBusinessSearchRequest.setLocation(getLocation());
    localBusinessSearchRequest.setTermNear(mTermNear);
    localBusinessSearchRequest.setSearchTerms(mSearchTerms);
    localBusinessSearchRequest.setFilter(mFilter);
    localBusinessSearchRequest.setCategory(mCategory);
    localBusinessSearchRequest.setRegion(mRegion);
    localBusinessSearchRequest.setSearchMode(mSearchMode);
    localBusinessSearchRequest.setFormatMode(mFMode);
    localBusinessSearchRequest.setOffset(mPageOffset);
    localBusinessSearchRequest.setSearchOptions(mSearchOptions);
    localBusinessSearchRequest.setUnFoldedResults(mUnfold);
    return localBusinessSearchRequest;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Category getCategory()
  {
    return mCategory;
  }
  
  String getCategoryAlias()
  {
    if (mCategory == null) {
      return null;
    }
    return mCategory.getAlias();
  }
  
  public String getCategoryName()
  {
    if (mCategory == null) {
      return null;
    }
    return mCategory.getName();
  }
  
  public Filter getFilter()
  {
    return mFilter;
  }
  
  public BusinessSearchRequest.FormatMode getFormatMode()
  {
    return mFMode;
  }
  
  public int getPageOffset()
  {
    return mPageOffset;
  }
  
  protected String getRawResponseFromCache()
  {
    if (!AppData.b().o().b()) {
      return null;
    }
    String str2 = mCacheDescriptorOverride;
    String str1 = str2;
    if (str2 == null) {
      str1 = getCacheDescriptor();
    }
    return mCacheAdapter.a(str1);
  }
  
  public double[] getRegion()
  {
    return mRegion;
  }
  
  public BusinessSearchRequest.SearchMode getSearchMode()
  {
    return mSearchMode;
  }
  
  public EnumSet<SearchRequest.SearchOption> getSearchOptions()
  {
    return mSearchOptions;
  }
  
  public String getSearchTerms()
  {
    return mSearchTerms;
  }
  
  public String getTermNear()
  {
    return mTermNear;
  }
  
  public String getUrlString()
  {
    prepareQuery();
    Location localLocation = getLocation();
    if (localLocation != null) {
      addLocationToUrl(localLocation);
    }
    return getUri();
  }
  
  public void prepareQuery()
  {
    addUrlParams(mSearchTerms, mTermNear, getCategoryAlias(), mRegion, mPageOffset, mFilter, mSearchOptions, mSearchMode, mFMode, mLimit);
  }
  
  public SearchRequest.SearchResponse process(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = BusinessSearchRequest.BusinessSearchResponse.CREATOR.a(paramJSONObject, getRequestId(), mFMode);
      BusinessSearchRequest.BusinessSearchResponse.access$002(paramJSONObject, mPageOffset);
      if (mUnfold) {
        BusinessSearchRequest.BusinessSearchResponse.access$102(paramJSONObject, SearchRequest.SearchResponse.Foldability.UNFOLDED);
      }
      return paramJSONObject;
    }
    catch (JSONException paramJSONObject)
    {
      throw new YelpException(YelpException.YPErrorInvalidData);
    }
  }
  
  protected void processErrorMessage(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if ((paramJSONObject2.optInt("code") == 209) || (paramJSONObject1.has("locations"))) {
      return;
    }
    super.processErrorMessage(paramJSONObject1, paramJSONObject2);
  }
  
  public void search()
  {
    prepareQuery();
    if ((mSearchMode == BusinessSearchRequest.SearchMode.NEARBY) || ((TextUtils.isEmpty(mTermNear)) && (mRegion == null)))
    {
      executeWithLocation(new Void[0]);
      return;
    }
    execute(new Void[0]);
  }
  
  public BusinessSearchRequest setCacheAdapter(a parama)
  {
    mCacheAdapter = parama;
    return this;
  }
  
  public BusinessSearchRequest setCacheDescriptorOverride(String paramString)
  {
    mCacheDescriptorOverride = paramString;
    return this;
  }
  
  public BusinessSearchRequest setCallback(j<SearchRequest.SearchResponse> paramj)
  {
    super.setCallback(paramj);
    return this;
  }
  
  public BusinessSearchRequest setCategory(Category paramCategory)
  {
    mCategory = paramCategory;
    if (paramCategory != null) {
      mSearchTerms = null;
    }
    return this;
  }
  
  public BusinessSearchRequest setFilter(Filter paramFilter)
  {
    if (paramFilter != null)
    {
      mFilter = new Filter(paramFilter);
      return this;
    }
    mFilter = null;
    return this;
  }
  
  public BusinessSearchRequest setFormatMode(BusinessSearchRequest.FormatMode paramFormatMode)
  {
    mFMode = paramFormatMode;
    return this;
  }
  
  public void setLimit(int paramInt)
  {
    mLimit = paramInt;
  }
  
  public void setOffset(int paramInt)
  {
    mPageOffset = paramInt;
  }
  
  public BusinessSearchRequest setRegion(double[] paramArrayOfDouble)
  {
    if ((paramArrayOfDouble != null) && (paramArrayOfDouble.length < 6)) {
      throw new IllegalArgumentException("Search map region must be an array of 6 elements");
    }
    if (paramArrayOfDouble == null)
    {
      mRegion = null;
      return this;
    }
    mTermNear = null;
    mLocation = null;
    if (mRegion == null) {
      mRegion = new double[6];
    }
    System.arraycopy(paramArrayOfDouble, 0, mRegion, 0, 6);
    return this;
  }
  
  public BusinessSearchRequest setSearchMode(BusinessSearchRequest.SearchMode paramSearchMode)
  {
    mSearchMode = paramSearchMode;
    return this;
  }
  
  public void setSearchOptions(EnumSet<SearchRequest.SearchOption> paramEnumSet)
  {
    mSearchOptions.addAll(paramEnumSet);
  }
  
  public BusinessSearchRequest setSearchTerms(String paramString)
  {
    mSearchTerms = paramString;
    if (paramString != null) {
      mCategory = null;
    }
    return this;
  }
  
  public BusinessSearchRequest setTermNear(String paramString)
  {
    mTermNear = paramString;
    if (paramString != null)
    {
      mRegion = null;
      mLocation = null;
    }
    return this;
  }
  
  public BusinessSearchRequest setTermSearch(String paramString)
  {
    mSearchTerms = paramString;
    mCategory = null;
    return this;
  }
  
  public BusinessSearchRequest setUnFoldedResults(boolean paramBoolean)
  {
    mUnfold = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    int i = 0;
    paramParcel.writeString(mSearchTerms);
    paramParcel.writeString(mTermNear);
    if (mFMode != null)
    {
      paramInt = mFMode.ordinal();
      paramParcel.writeInt(paramInt);
      if (mSearchMode == null) {
        break label170;
      }
      paramInt = mSearchMode.ordinal();
      label54:
      paramParcel.writeInt(paramInt);
      paramParcel.writeList(new ArrayList(mSearchOptions));
      if (!mUnfold) {
        break label180;
      }
    }
    label170:
    label180:
    for (byte b = 1;; b = 0)
    {
      paramParcel.writeByte(b);
      paramParcel.writeParcelable(mFilter, 0);
      paramParcel.writeInt(mLimit);
      paramParcel.writeParcelable(mLocation, 0);
      paramParcel.writeParcelable(mCategory, 0);
      paramInt = i;
      if (mRegion != null) {
        paramInt = mRegion.length;
      }
      paramParcel.writeInt(paramInt);
      if (mRegion != null) {
        paramParcel.writeDoubleArray(mRegion);
      }
      return;
      paramInt = BusinessSearchRequest.FormatMode.FULL.ordinal();
      break;
      paramInt = BusinessSearchRequest.SearchMode.DEFAULT.ordinal();
      break label54;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */