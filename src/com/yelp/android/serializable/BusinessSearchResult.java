package com.yelp.android.serializable;

import android.os.Parcel;
import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.ui.panels.businesssearch.i;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;

public class BusinessSearchResult
  extends _BusinessSearchResult
  implements i
{
  public static final JsonParser.DualCreator<BusinessSearchResult> CREATOR = new q();
  private ArrayList<SearchAction> mSearchActions = new ArrayList();
  
  public static List<BusinessSearchResult> businessSearchResultsFromJSONArray(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)CREATOR.parse(paramJSONArray.getJSONObject(i));
      YelpBusiness localYelpBusiness = localBusinessSearchResult.getBusiness();
      localYelpBusiness.setYelpRequestId(paramString);
      if (mFormatMode == null) {
        mFormatMode = paramFormatMode;
      }
      localArrayList.add(localBusinessSearchResult);
      i += 1;
    }
    return localArrayList;
  }
  
  public static List<YelpBusiness> getBusinessesFromBusinessSearchResult(List<BusinessSearchResult> paramList)
  {
    ArrayList localArrayList = new ArrayList();
    if (paramList != null)
    {
      int i = 0;
      while (i < paramList.size())
      {
        localArrayList.add(((BusinessSearchResult)paramList.get(i)).getBusiness());
        i += 1;
      }
    }
    return localArrayList;
  }
  
  public static void replaceBusiness(List<BusinessSearchResult> paramList, YelpBusiness paramYelpBusiness)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      BusinessSearchResult localBusinessSearchResult = (BusinessSearchResult)paramList.next();
      YelpBusiness localYelpBusiness = localBusinessSearchResult.getBusiness();
      if (TextUtils.equals(localYelpBusiness.getId(), paramYelpBusiness.getId())) {
        localBusinessSearchResult.setBusiness(localYelpBusiness);
      }
    }
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
          if (getAnnotations() == null) {
            break;
          }
          bool1 = bool3;
        } while (!getAnnotations().equals(((BusinessSearchResult)paramObject).getAnnotations()));
        if (getBizDimension() == null) {
          break label144;
        }
        bool1 = bool3;
      } while (!getBizDimension().equals(((BusinessSearchResult)paramObject).getBizDimension()));
      if (getBusiness() == null) {
        break label153;
      }
      bool1 = bool3;
    } while (!getBusiness().equals(((BusinessSearchResult)paramObject).getBusiness()));
    label114:
    if (mSearchActions != null) {
      bool1 = mSearchActions.equals(mSearchActions);
    }
    for (;;)
    {
      return bool1;
      if (((BusinessSearchResult)paramObject).getAnnotations() == null) {
        break;
      }
      return false;
      label144:
      if (((BusinessSearchResult)paramObject).getBizDimension() == null) {
        break label90;
      }
      return false;
      label153:
      if (((BusinessSearchResult)paramObject).getBusiness() == null) {
        break label114;
      }
      return false;
      bool1 = bool2;
      if (mSearchActions != null) {
        bool1 = false;
      }
    }
  }
  
  public BusinessSearchResult getBusinessSearchResult()
  {
    return this;
  }
  
  public ArrayList<SearchAction> getSearchActions()
  {
    return mSearchActions;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    paramJSONObject = paramJSONObject.optJSONArray("actions");
    if (paramJSONObject == null) {
      return;
    }
    int i = 0;
    label19:
    Object localObject;
    BusinessSearchResult.SearchActionType localSearchActionType;
    if (i < paramJSONObject.length())
    {
      localObject = paramJSONObject.getJSONObject(i);
      localSearchActionType = BusinessSearchResult.SearchActionType.access$000(((JSONObject)localObject).getString("type"));
      if (localSearchActionType != null) {
        break label56;
      }
    }
    for (;;)
    {
      i += 1;
      break label19;
      break;
      label56:
      switch (r.a[localSearchActionType.ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Type " + localSearchActionType + " is not supported.");
      case 1: 
        localObject = (PlatformSearchAction)PlatformSearchAction.CREATOR.parse((JSONObject)localObject);
        mSearchActions.add(localObject);
        break;
      case 2: 
        localObject = (ReservationSearchAction)ReservationSearchAction.CREATOR.parse((JSONObject)localObject);
        mSearchActions.add(localObject);
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    int j = paramParcel.readInt();
    int i = 0;
    if (i < j)
    {
      Object localObject = BusinessSearchResult.SearchActionType.access$000(paramParcel.readString());
      switch (r.a[localObject.ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Type " + localObject + " is not supported.");
      }
      for (localObject = (SearchAction)paramParcel.readParcelable(PlatformSearchAction.class.getClassLoader());; localObject = (SearchAction)paramParcel.readParcelable(ReservationSearchAction.class.getClassLoader()))
      {
        mSearchActions.add(localObject);
        i += 1;
        break;
      }
    }
  }
  
  public void setBusiness(YelpBusiness paramYelpBusiness)
  {
    mBusiness = paramYelpBusiness;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    int j = mSearchActions.size();
    paramParcel.writeInt(j);
    int i = 0;
    if (i < j)
    {
      SearchAction localSearchAction = (SearchAction)mSearchActions.get(i);
      paramParcel.writeString(BusinessSearchResult.SearchActionType.access$100(localSearchAction.getSearchActionType()));
      switch (r.a[localSearchAction.getSearchActionType().ordinal()])
      {
      default: 
        throw new UnsupportedOperationException("Type " + localSearchAction.getSearchActionType() + " is not supported.");
      case 1: 
        paramParcel.writeParcelable((PlatformSearchAction)localSearchAction, paramInt);
      }
      for (;;)
      {
        i += 1;
        break;
        paramParcel.writeParcelable((ReservationSearchAction)localSearchAction, paramInt);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessSearchResult
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */