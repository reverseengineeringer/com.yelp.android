package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.serializable.AndroidAppAnnotation;
import com.yelp.android.serializable.BusinessSearchResult;
import com.yelp.android.serializable.DisplayGenericSearchFilter;
import com.yelp.android.serializable.SearchResultLocalAd;
import com.yelp.android.serializable.SearchSeparator;
import com.yelp.android.serializable.h;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

final class BusinessSearchRequest$BusinessSearchResponse$1
  implements BusinessSearchRequest.BusinessSearchResponse.a
{
  private Address a(JSONObject paramJSONObject)
  {
    Address localAddress = new Address(Locale.getDefault());
    localAddress.setLatitude(h.d("latitude", paramJSONObject));
    localAddress.setLongitude(h.d("longitude", paramJSONObject));
    localAddress.setAddressLine(0, h.a("address1", paramJSONObject));
    localAddress.setAddressLine(1, h.a("address2", paramJSONObject));
    localAddress.setAddressLine(2, h.a("address3", paramJSONObject));
    localAddress.setAdminArea(h.a("state", paramJSONObject));
    localAddress.setCountryCode(h.a("country", paramJSONObject));
    localAddress.setFeatureName(h.a("display", paramJSONObject));
    return localAddress;
  }
  
  public BusinessSearchRequest.BusinessSearchResponse a(Parcel paramParcel)
  {
    BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramParcel.createTypedArrayList(Address.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (Address)paramParcel.readParcelable(Address.class.getClassLoader()));
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, new double[paramParcel.readInt()]);
    paramParcel.readDoubleArray(BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse));
    BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramParcel.readInt());
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)paramParcel.readSerializable());
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramParcel.readInt());
    BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramParcel.readString());
    BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramParcel.createTypedArrayList(SearchResultLocalAd.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse, paramParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.e(localBusinessSearchResponse, paramParcel.createTypedArrayList(SearchSeparator.CREATOR));
    BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (AndroidAppAnnotation)paramParcel.readParcelable(AndroidAppAnnotation.class.getClassLoader()));
    return localBusinessSearchResponse;
  }
  
  public BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramJSONObject, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
    throws JSONException
  {
    Object localObject2 = null;
    BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
    BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramString);
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
          BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, a((JSONObject)localObject3));
        }
        BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, BusinessSearchResult.a(paramJSONObject.getJSONArray((String)localObject1), paramString, paramFormatMode));
        BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramJSONObject.optInt("total", BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse).size()));
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
              break label490;
            }
            localObject1 = "suggested_business_search_results";
            break;
          }
        }
      }
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (List)localObject1);
      if (!paramJSONObject.isNull("spelling_suggestion"))
      {
        localObject1 = paramJSONObject.optString("spelling_suggestion", "");
        BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (String)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, SearchRequest.SearchResponse.Foldability.UNFOLDABLE);
        if (!paramJSONObject.isNull("is_folded")) {
          if (!paramJSONObject.getBoolean("is_folded")) {
            break label482;
          }
        }
      }
      label482:
      for (localObject1 = SearchRequest.SearchResponse.Foldability.FOLDED;; localObject1 = SearchRequest.SearchResponse.Foldability.UNFOLDED)
      {
        BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramJSONObject.optString("attribution"));
        localObject1 = localObject2;
        if (!paramJSONObject.isNull("ad_business_search_results")) {
          localObject1 = BusinessSearchResult.a(paramJSONObject.getJSONArray("ad_business_search_results"), paramString, paramFormatMode);
        }
        BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse, (List)localObject1);
        BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, JsonUtil.parseJsonList(paramJSONObject.optJSONArray("local_ads"), SearchResultLocalAd.CREATOR));
        SearchResultLocalAd.a(BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse), BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse));
        if (paramJSONObject.has("filters")) {
          BusinessSearchRequest.BusinessSearchResponse.f(localBusinessSearchResponse, JsonUtil.parseJsonList(paramJSONObject.getJSONArray("filters"), DisplayGenericSearchFilter.CREATOR));
        }
        if (paramJSONObject.has("separators")) {
          BusinessSearchRequest.BusinessSearchResponse.e(localBusinessSearchResponse, JsonUtil.parseJsonList(paramJSONObject.getJSONArray("separators"), SearchSeparator.CREATOR));
        }
        if (paramJSONObject.has("android_app_annotation")) {
          BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (AndroidAppAnnotation)AndroidAppAnnotation.CREATOR.parse(paramJSONObject.getJSONObject("android_app_annotation")));
        }
        return localBusinessSearchResponse;
        localObject1 = null;
        break;
      }
      label490:
      localObject1 = null;
    }
  }
  
  public BusinessSearchRequest.BusinessSearchResponse[] a(int paramInt)
  {
    return new BusinessSearchRequest.BusinessSearchResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */