package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.ui.panels.businesssearch.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class BusinessSearchResult
  extends _BusinessSearchResult
  implements f, c
{
  public static final JsonParser.DualCreator<BusinessSearchResult> CREATOR = new BusinessSearchResult.1();
  private ArrayList<SearchAction> d = new ArrayList();
  private ArrayList<SearchActionAttribute> e = new ArrayList();
  
  public static List<BusinessSearchResult> a(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
    throws JSONException
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)CREATOR.parse(paramJSONArray.getJSONObject(i));
      YelpBusiness localYelpBusiness = localBusinessSearchResult.a();
      localYelpBusiness.a(paramString);
      if (g == null) {
        g = paramFormatMode;
      }
      localArrayList.add(localBusinessSearchResult);
      i += 1;
    }
    return localArrayList;
  }
  
  public static JSONArray a(List<BusinessSearchResult> paramList)
    throws JSONException
  {
    JSONArray localJSONArray = new JSONArray();
    int i = 0;
    while (i < paramList.size())
    {
      localJSONArray.put(((BusinessSearchResult)paramList.get(i)).f());
      i += 1;
    }
    return localJSONArray;
  }
  
  public static void a(List<BusinessSearchResult> paramList, YelpBusiness paramYelpBusiness)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramList.next();
      if (TextUtils.equals(localBusinessSearchResult.a().aD(), paramYelpBusiness.aD())) {
        localBusinessSearchResult.a(paramYelpBusiness);
      }
    }
  }
  
  public static List<YelpBusiness> b(List<BusinessSearchResult> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      int i = 0;
      while (i < paramList.size())
      {
        localArrayList.add(((BusinessSearchResult)paramList.get(i)).a());
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    int j = paramParcel.readInt();
    int i = 0;
    if (i < j)
    {
      Object localObject = BusinessSearchResult.SearchActionType.access$000(paramParcel.readString());
      switch (BusinessSearchResult.2.a[localObject.ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Type " + localObject + " is not supported.");
      case 1: 
        localObject = (SearchAction)paramParcel.readParcelable(PlatformSearchAction.class.getClassLoader());
      }
      for (;;)
      {
        d.add(localObject);
        i += 1;
        break;
        localObject = (SearchAction)paramParcel.readParcelable(RequestAQuoteSearchAction.class.getClassLoader());
        continue;
        localObject = (SearchAction)paramParcel.readParcelable(ReservationSearchAction.class.getClassLoader());
        continue;
        localObject = (SearchAction)paramParcel.readParcelable(CallForReservationsSearchAction.class.getClassLoader());
      }
    }
  }
  
  public void a(YelpBusiness paramYelpBusiness)
  {
    c = paramYelpBusiness;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    int j = 0;
    super.a(paramJSONObject);
    JSONArray localJSONArray = paramJSONObject.optJSONArray("actions");
    paramJSONObject = paramJSONObject.optJSONArray("search_action_attributes");
    if (localJSONArray == null) {}
    for (;;)
    {
      return;
      int i = 0;
      if (i < localJSONArray.length())
      {
        Object localObject = localJSONArray.getJSONObject(i);
        BusinessSearchResult.SearchActionType localSearchActionType = BusinessSearchResult.SearchActionType.access$000(((JSONObject)localObject).getString("type"));
        if (localSearchActionType == null) {}
        for (;;)
        {
          i += 1;
          break;
          switch (BusinessSearchResult.2.a[localSearchActionType.ordinal()])
          {
          default: 
            throw new UnsupportedOperationException("Type " + localSearchActionType + " is not supported.");
          case 1: 
            localObject = (PlatformSearchAction)PlatformSearchAction.CREATOR.parse((JSONObject)localObject);
            d.add(localObject);
            break;
          case 2: 
            localObject = (RequestAQuoteSearchAction)RequestAQuoteSearchAction.CREATOR.parse((JSONObject)localObject);
            d.add(localObject);
            break;
          case 3: 
            localObject = (ReservationSearchAction)ReservationSearchAction.CREATOR.parse((JSONObject)localObject);
            d.add(localObject);
            break;
          case 4: 
            localObject = (CallForReservationsSearchAction)CallForReservationsSearchAction.CREATOR.parse((JSONObject)localObject);
            d.add(localObject);
          }
        }
      }
      if (paramJSONObject != null)
      {
        i = j;
        while (i < paramJSONObject.length())
        {
          e.add(SearchActionAttribute.CREATOR.parse(paramJSONObject.getJSONObject(i)));
          i += 1;
        }
      }
    }
  }
  
  public LatLng b()
  {
    return c.b();
  }
  
  public ArrayList<SearchAction> c()
  {
    return d;
  }
  
  public ArrayList<SearchActionAttribute> d()
  {
    return e;
  }
  
  public BusinessSearchResult e()
  {
    return this;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    label90:
    do
    {
      do
      {
        do
        {
          do
          {
            do
            {
              return bool1;
              bool1 = bool3;
            } while (paramObject == null);
            bool1 = bool3;
          } while (getClass() != paramObject.getClass());
          paramObject = (BusinessSearchResult)paramObject;
          if (h() == null) {
            break;
          }
          bool1 = bool3;
        } while (!h().equals(((BusinessSearchResult)paramObject).h()));
        if (g() == null) {
          break label144;
        }
        bool1 = bool3;
      } while (!g().equals(((BusinessSearchResult)paramObject).g()));
      if (a() == null) {
        break label153;
      }
      bool1 = bool3;
    } while (!a().equals(((BusinessSearchResult)paramObject).a()));
    label114:
    if (d != null) {
      bool1 = d.equals(d);
    }
    for (;;)
    {
      return bool1;
      if (((BusinessSearchResult)paramObject).h() == null) {
        break;
      }
      return false;
      label144:
      if (((BusinessSearchResult)paramObject).g() == null) {
        break label90;
      }
      return false;
      label153:
      if (((BusinessSearchResult)paramObject).a() == null) {
        break label114;
      }
      return false;
      bool1 = bool2;
      if (d != null) {
        bool1 = false;
      }
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    int j = d.size();
    paramParcel.writeInt(j);
    int i = 0;
    if (i < j)
    {
      SearchAction localSearchAction = (SearchAction)d.get(i);
      paramParcel.writeString(BusinessSearchResult.SearchActionType.access$100(localSearchAction.a()));
      switch (BusinessSearchResult.2.a[localSearchAction.a().ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Type " + localSearchAction.a() + " is not supported.");
      case 1: 
        paramParcel.writeParcelable((PlatformSearchAction)localSearchAction, paramInt);
      }
      for (;;)
      {
        i += 1;
        break;
        paramParcel.writeParcelable((RequestAQuoteSearchAction)localSearchAction, paramInt);
        continue;
        paramParcel.writeParcelable((ReservationSearchAction)localSearchAction, paramInt);
        continue;
        paramParcel.writeParcelable((CallForReservationsSearchAction)localSearchAction, paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessSearchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */