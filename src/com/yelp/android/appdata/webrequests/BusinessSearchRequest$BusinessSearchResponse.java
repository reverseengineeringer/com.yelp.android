package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.os.Parcel;
import android.os.Parcelable.Creator;
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
import java.util.Collections;
import java.util.List;
import java.util.Locale;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class BusinessSearchRequest$BusinessSearchResponse
  implements SearchRequest.SearchResponse
{
  public static final a CREATOR = new a()
  {
    private Address a(JSONObject paramAnonymousJSONObject)
    {
      Address localAddress = new Address(Locale.getDefault());
      localAddress.setLatitude(h.d("latitude", paramAnonymousJSONObject));
      localAddress.setLongitude(h.d("longitude", paramAnonymousJSONObject));
      localAddress.setAddressLine(0, h.a("address1", paramAnonymousJSONObject));
      localAddress.setAddressLine(1, h.a("address2", paramAnonymousJSONObject));
      localAddress.setAddressLine(2, h.a("address3", paramAnonymousJSONObject));
      localAddress.setAdminArea(h.a("state", paramAnonymousJSONObject));
      localAddress.setCountryCode(h.a("country", paramAnonymousJSONObject));
      localAddress.setFeatureName(h.a("display", paramAnonymousJSONObject));
      return localAddress;
    }
    
    public BusinessSearchRequest.BusinessSearchResponse a(Parcel paramAnonymousParcel)
    {
      BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramAnonymousParcel.createTypedArrayList(Address.CREATOR));
      BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramAnonymousParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (Address)paramAnonymousParcel.readParcelable(Address.class.getClassLoader()));
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramAnonymousParcel.readString());
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, new double[paramAnonymousParcel.readInt()]);
      paramAnonymousParcel.readDoubleArray(BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse));
      BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramAnonymousParcel.readInt());
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)paramAnonymousParcel.readSerializable());
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, paramAnonymousParcel.readInt());
      BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramAnonymousParcel.readString());
      BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramAnonymousParcel.readString());
      BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramAnonymousParcel.createTypedArrayList(SearchResultLocalAd.CREATOR));
      BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse, paramAnonymousParcel.createTypedArrayList(BusinessSearchResult.CREATOR));
      BusinessSearchRequest.BusinessSearchResponse.e(localBusinessSearchResponse, paramAnonymousParcel.createTypedArrayList(SearchSeparator.CREATOR));
      BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (AndroidAppAnnotation)paramAnonymousParcel.readParcelable(AndroidAppAnnotation.class.getClassLoader()));
      return localBusinessSearchResponse;
    }
    
    public BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramAnonymousJSONObject, String paramAnonymousString, BusinessSearchRequest.FormatMode paramAnonymousFormatMode)
      throws JSONException
    {
      Object localObject2 = null;
      BusinessSearchRequest.BusinessSearchResponse localBusinessSearchResponse = new BusinessSearchRequest.BusinessSearchResponse();
      BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramAnonymousString);
      Object localObject1;
      if (paramAnonymousJSONObject.has("business_search_results")) {
        localObject1 = "business_search_results";
      }
      for (;;)
      {
        if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (paramAnonymousJSONObject.has((String)localObject1)))
        {
          localObject3 = paramAnonymousJSONObject.optJSONObject("location");
          if (localObject3 != null) {
            BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, a((JSONObject)localObject3));
          }
          BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, BusinessSearchResult.a(paramAnonymousJSONObject.getJSONArray((String)localObject1), paramAnonymousString, paramAnonymousFormatMode));
          BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse, paramAnonymousJSONObject.optInt("total", BusinessSearchRequest.BusinessSearchResponse.b(localBusinessSearchResponse).size()));
        }
        localObject1 = new ArrayList();
        Object localObject3 = paramAnonymousJSONObject.optJSONObject("message");
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
              if (!paramAnonymousJSONObject.has("suggested_business_search_results")) {
                break label490;
              }
              localObject1 = "suggested_business_search_results";
              break;
            }
          }
        }
        BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (List)localObject1);
        if (!paramAnonymousJSONObject.isNull("spelling_suggestion"))
        {
          localObject1 = paramAnonymousJSONObject.optString("spelling_suggestion", "");
          BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (String)localObject1);
          BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, SearchRequest.SearchResponse.Foldability.UNFOLDABLE);
          if (!paramAnonymousJSONObject.isNull("is_folded")) {
            if (!paramAnonymousJSONObject.getBoolean("is_folded")) {
              break label482;
            }
          }
        }
        label482:
        for (localObject1 = SearchRequest.SearchResponse.Foldability.FOLDED;; localObject1 = SearchRequest.SearchResponse.Foldability.UNFOLDED)
        {
          BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (SearchRequest.SearchResponse.Foldability)localObject1);
          BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, paramAnonymousJSONObject.optString("attribution"));
          localObject1 = localObject2;
          if (!paramAnonymousJSONObject.isNull("ad_business_search_results")) {
            localObject1 = BusinessSearchResult.a(paramAnonymousJSONObject.getJSONArray("ad_business_search_results"), paramAnonymousString, paramAnonymousFormatMode);
          }
          BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse, (List)localObject1);
          BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse, JsonUtil.parseJsonList(paramAnonymousJSONObject.optJSONArray("local_ads"), SearchResultLocalAd.CREATOR));
          SearchResultLocalAd.a(BusinessSearchRequest.BusinessSearchResponse.c(localBusinessSearchResponse), BusinessSearchRequest.BusinessSearchResponse.d(localBusinessSearchResponse));
          if (paramAnonymousJSONObject.has("filters")) {
            BusinessSearchRequest.BusinessSearchResponse.f(localBusinessSearchResponse, JsonUtil.parseJsonList(paramAnonymousJSONObject.getJSONArray("filters"), DisplayGenericSearchFilter.CREATOR));
          }
          if (paramAnonymousJSONObject.has("separators")) {
            BusinessSearchRequest.BusinessSearchResponse.e(localBusinessSearchResponse, JsonUtil.parseJsonList(paramAnonymousJSONObject.getJSONArray("separators"), SearchSeparator.CREATOR));
          }
          if (paramAnonymousJSONObject.has("android_app_annotation")) {
            BusinessSearchRequest.BusinessSearchResponse.a(localBusinessSearchResponse, (AndroidAppAnnotation)AndroidAppAnnotation.CREATOR.parse(paramAnonymousJSONObject.getJSONObject("android_app_annotation")));
          }
          return localBusinessSearchResponse;
          localObject1 = null;
          break;
        }
        label490:
        localObject1 = null;
      }
    }
    
    public BusinessSearchRequest.BusinessSearchResponse[] a(int paramAnonymousInt)
    {
      return new BusinessSearchRequest.BusinessSearchResponse[paramAnonymousInt];
    }
  };
  private String a;
  private List<Address> b = Collections.emptyList();
  private List<BusinessSearchResult> c = Collections.emptyList();
  private Address d;
  private String e;
  private double[] f = new double[0];
  private SearchRequest.SearchResponse.Foldability g;
  private int h;
  private int i;
  private String j;
  private List<SearchResultLocalAd> k;
  private List<BusinessSearchResult> l;
  private List<DisplayGenericSearchFilter> m;
  private List<SearchSeparator> n;
  private AndroidAppAnnotation o;
  
  public List<Address> a()
  {
    return b;
  }
  
  public List<BusinessSearchResult> b()
  {
    return c;
  }
  
  public Address c()
  {
    return d;
  }
  
  public String d()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public SearchRequest.SearchResponse.Foldability e()
  {
    return g;
  }
  
  public int f()
  {
    return h;
  }
  
  public int g()
  {
    return i;
  }
  
  public String h()
  {
    return j;
  }
  
  public String i()
  {
    return a;
  }
  
  public List<SearchResultLocalAd> j()
  {
    return k;
  }
  
  public List<BusinessSearchResult> k()
  {
    return l;
  }
  
  public List<DisplayGenericSearchFilter> l()
  {
    return m;
  }
  
  public List<SearchSeparator> m()
  {
    return n;
  }
  
  public AndroidAppAnnotation n()
  {
    return o;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(b);
    paramParcel.writeTypedList(c);
    paramParcel.writeParcelable(d, paramInt);
    paramParcel.writeString(e);
    paramParcel.writeInt(f.length);
    paramParcel.writeDoubleArray(f);
    paramParcel.writeInt(h);
    paramParcel.writeSerializable(g);
    paramParcel.writeInt(i);
    paramParcel.writeString(a);
    paramParcel.writeString(j);
    paramParcel.writeTypedList(k);
    paramParcel.writeTypedList(l);
    paramParcel.writeTypedList(n);
    paramParcel.writeParcelable(o, paramInt);
  }
  
  private static abstract interface a
    extends Parcelable.Creator<BusinessSearchRequest.BusinessSearchResponse>
  {
    public abstract BusinessSearchRequest.BusinessSearchResponse a(JSONObject paramJSONObject, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
      throws JSONException;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.BusinessSearchRequest.BusinessSearchResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */