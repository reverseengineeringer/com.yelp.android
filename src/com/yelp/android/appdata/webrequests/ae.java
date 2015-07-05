package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.PromotedFilter;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.en;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONObject;

final class ae
  implements af
{
  private Address a(JSONObject paramJSONObject)
  {
    Address localAddress = new Address(Locale.getDefault());
    localAddress.setLatitude(en.d("latitude", paramJSONObject));
    localAddress.setLongitude(en.d("longitude", paramJSONObject));
    localAddress.setAddressLine(0, en.a("address1", paramJSONObject));
    localAddress.setAddressLine(1, en.a("address2", paramJSONObject));
    localAddress.setAddressLine(2, en.a("address3", paramJSONObject));
    localAddress.setAdminArea(en.a("state", paramJSONObject));
    localAddress.setCountryCode(en.a("country", paramJSONObject));
    localAddress.setFeatureName(en.a("display", paramJSONObject));
    return localAddress;
  }
  
  public BusinessSearchRequest.BusinessSearchResponse a(Parcel paramParcel)
  {
    BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
    BusinessSearchRequest.BusinessSearchResponse.access$302(localBusinessSearchResponse, paramParcel.createTypedArrayList(Address.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.access$402(localBusinessSearchResponse, paramParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.access$502(localBusinessSearchResponse, (Address)paramParcel.readParcelable(Address.class.getClassLoader()));
    BusinessSearchRequest.BusinessSearchResponse.access$602(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.access$702(localBusinessSearchResponse, new double[paramParcel.readInt()]);
    paramParcel.readDoubleArray(BusinessSearchRequest.BusinessSearchResponse.access$700(localBusinessSearchResponse));
    BusinessSearchRequest.BusinessSearchResponse.access$802(localBusinessSearchResponse, paramParcel.readInt());
    BusinessSearchRequest.BusinessSearchResponse.access$102(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)paramParcel.readSerializable());
    BusinessSearchRequest.BusinessSearchResponse.access$002(localBusinessSearchResponse, paramParcel.readInt());
    BusinessSearchRequest.BusinessSearchResponse.access$902(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.access$1002(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.access$1102(localBusinessSearchResponse, paramParcel.createTypedArrayList(SearchResultLocalAd.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.access$1202(localBusinessSearchResponse, paramParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.access$1302(localBusinessSearchResponse, (AttributeFilters)paramParcel.readParcelable(AttributeFilters.class.getClassLoader()));
    return localBusinessSearchResponse;
  }
  
  public BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramJSONObject, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
  {
    Object localObject2 = null;
    BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
    BusinessSearchRequest.BusinessSearchResponse.access$902(localBusinessSearchResponse, paramString);
    Object localObject1;
    if (paramJSONObject.has("business_search_results")) {
      localObject1 = "business_search_results";
    }
    for (;;)
    {
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (paramJSONObject.has((String)localObject1)))
      {
        localObject3 = paramJSONObject.optJSONObject("location");
        if (localObject3 != null) {
          BusinessSearchRequest.BusinessSearchResponse.access$502(localBusinessSearchResponse, a((JSONObject)localObject3));
        }
        BusinessSearchRequest.BusinessSearchResponse.access$402(localBusinessSearchResponse, BusinessSearchResult.businessSearchResultsFromJSONArray(paramJSONObject.getJSONArray((String)localObject1), paramString, paramFormatMode));
        BusinessSearchRequest.BusinessSearchResponse.access$802(localBusinessSearchResponse, paramJSONObject.optInt("total", BusinessSearchRequest.BusinessSearchResponse.access$400(localBusinessSearchResponse).size()));
      }
      localObject1 = new ArrayList();
      Object localObject3 = paramJSONObject.optJSONObject("message");
      if ((localObject3 != null) && (((JSONObject)localObject3).optInt("code") == 209))
      {
        localObject3 = ((JSONObject)localObject3).optJSONArray("locations");
        int i = 0;
        int j = ((JSONArray)localObject3).length();
        for (;;)
        {
          if (i < j)
          {
            JSONObject localJSONObject = ((JSONArray)localObject3).optJSONObject(i);
            if (localJSONObject != null) {
              ((ArrayList)localObject1).add(a(localJSONObject));
            }
            i += 1;
            continue;
            if (!paramJSONObject.has("suggested_business_search_results")) {
              break label459;
            }
            localObject1 = "suggested_business_search_results";
            break;
          }
        }
      }
      BusinessSearchRequest.BusinessSearchResponse.access$302(localBusinessSearchResponse, (List)localObject1);
      if (!paramJSONObject.isNull("spelling_suggestion"))
      {
        localObject1 = paramJSONObject.optString("spelling_suggestion", "");
        BusinessSearchRequest.BusinessSearchResponse.access$602(localBusinessSearchResponse, (String)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.access$102(localBusinessSearchResponse, SearchRequest.SearchResponse.Foldability.UNFOLDABLE);
        if (!paramJSONObject.isNull("is_folded")) {
          if (!paramJSONObject.getBoolean("is_folded")) {
            break label451;
          }
        }
      }
      label451:
      for (localObject1 = SearchRequest.SearchResponse.Foldability.FOLDED;; localObject1 = SearchRequest.SearchResponse.Foldability.UNFOLDED)
      {
        BusinessSearchRequest.BusinessSearchResponse.access$102(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.access$1002(localBusinessSearchResponse, paramJSONObject.optString("attribution"));
        localObject1 = localObject2;
        if (!paramJSONObject.isNull("ad_business_search_results")) {
          localObject1 = BusinessSearchResult.businessSearchResultsFromJSONArray(paramJSONObject.getJSONArray("ad_business_search_results"), paramString, paramFormatMode);
        }
        BusinessSearchRequest.BusinessSearchResponse.access$1202(localBusinessSearchResponse, (List)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.access$1102(localBusinessSearchResponse, JsonUtil.parseJsonList(paramJSONObject.optJSONArray("local_ads"), SearchResultLocalAd.CREATOR));
        SearchResultLocalAd.initializeSearchResultLocalAds(BusinessSearchRequest.BusinessSearchResponse.access$1100(localBusinessSearchResponse), BusinessSearchRequest.BusinessSearchResponse.access$1200(localBusinessSearchResponse));
        if (paramJSONObject.has("suggested_filters")) {
          BusinessSearchRequest.BusinessSearchResponse.access$1302(localBusinessSearchResponse, (AttributeFilters)AttributeFilters.CREATOR.parse(paramJSONObject));
        }
        if (paramJSONObject.has("promoted_filter")) {
          BusinessSearchRequest.BusinessSearchResponse.access$1402(localBusinessSearchResponse, (PromotedFilter)PromotedFilter.CREATOR.parse(paramJSONObject.getJSONObject("promoted_filter")));
        }
        return localBusinessSearchResponse;
        localObject1 = null;
        break;
      }
      label459:
      localObject1 = null;
    }
  }
  
  public BusinessSearchRequest.BusinessSearchResponse[] a(int paramInt)
  {
    return new BusinessSearchRequest.BusinessSearchResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ae
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */