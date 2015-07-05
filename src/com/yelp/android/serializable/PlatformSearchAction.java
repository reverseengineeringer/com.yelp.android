package com.yelp.android.serializable;

import android.content.Context;
import android.net.Uri;
import android.os.Parcel;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.ui.activities.businesspage.cf;
import com.yelp.android.ui.activities.support.WebViewActivity;
import com.yelp.android.ui.activities.support.WebViewActivity.Feature;
import com.yelp.android.util.StringUtils;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONObject;

public class PlatformSearchAction
  extends _PlatformSearchAction
  implements SearchAction
{
  public static final ah<PlatformSearchAction> CREATOR = new bw();
  private cf mHighlightedBusinessInfo;
  private HashMap<String, String> mParams = new HashMap();
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1;
    if (this == paramObject) {
      bool1 = true;
    }
    label102:
    label126:
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
                        do
                        {
                          do
                          {
                            return bool1;
                            bool1 = bool3;
                          } while (paramObject == null);
                          bool1 = bool3;
                        } while (getClass() != paramObject.getClass());
                        paramObject = (PlatformSearchAction)paramObject;
                        bool1 = bool3;
                      } while (isDisabled() != ((PlatformSearchAction)paramObject).isDisabled());
                      if (getType() == null) {
                        break;
                      }
                      bool1 = bool3;
                    } while (!getType().equals(((PlatformSearchAction)paramObject).getType()));
                    if (getText() == null) {
                      break label258;
                    }
                    bool1 = bool3;
                  } while (!getText().equals(((PlatformSearchAction)paramObject).getText()));
                  if (getUrl() == null) {
                    break label267;
                  }
                  bool1 = bool3;
                } while (!getUrl().equals(((PlatformSearchAction)paramObject).getUrl()));
                bool1 = bool3;
              } while (!Arrays.equals(getTextColor(), ((PlatformSearchAction)paramObject).getTextColor()));
              bool1 = bool3;
            } while (!Arrays.equals(getDefaultColorTop(), ((PlatformSearchAction)paramObject).getDefaultColorTop()));
            bool1 = bool3;
          } while (!Arrays.equals(getDefaultColorBottom(), ((PlatformSearchAction)paramObject).getDefaultColorBottom()));
          bool1 = bool3;
        } while (!Arrays.equals(getSelectedColorTop(), ((PlatformSearchAction)paramObject).getSelectedColorTop()));
        bool1 = bool3;
      } while (!Arrays.equals(getSelectedColorBottom(), ((PlatformSearchAction)paramObject).getSelectedColorBottom()));
      bool1 = bool3;
    } while (!Arrays.equals(getBorderColor(), ((PlatformSearchAction)paramObject).getBorderColor()));
    if (mParams != null) {
      bool1 = mParams.equals(mParams);
    }
    for (;;)
    {
      return bool1;
      if (((PlatformSearchAction)paramObject).getType() == null) {
        break;
      }
      return false;
      label258:
      if (((PlatformSearchAction)paramObject).getText() == null) {
        break label102;
      }
      return false;
      label267:
      if (((PlatformSearchAction)paramObject).getUrl() == null) {
        break label126;
      }
      return false;
      bool1 = bool2;
      if (mParams != null) {
        bool1 = false;
      }
    }
  }
  
  public cf getBusinessListButton()
  {
    if (mHighlightedBusinessInfo == null) {
      mHighlightedBusinessInfo = new bx(this, this);
    }
    return mHighlightedBusinessInfo;
  }
  
  public BusinessSearchResult.SearchActionType getSearchActionType()
  {
    return BusinessSearchResult.SearchActionType.Platform;
  }
  
  public void onPressed(Context paramContext, BusinessSearchResult paramBusinessSearchResult)
  {
    TreeMap localTreeMap = new TreeMap();
    String str = paramBusinessSearchResult.getBizDimension();
    if (!StringUtils.e(str)) {
      localTreeMap.put("biz_dimension", str);
    }
    localTreeMap.put("id", paramBusinessSearchResult.getBusiness().getId());
    AppData.a(EventIri.SearchPlatformOpen, localTreeMap);
    paramContext.startActivity(WebViewActivity.getWebIntent(paramContext, Uri.parse(getUrl()), "", ViewIri.OpenURL, EnumSet.of(WebViewActivity.Feature.EVENTS, WebViewActivity.Feature.FINISH_ON_BACK), 2131166916, true, paramBusinessSearchResult.getBizDimension(), "source_search_page"));
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    if (!paramJSONObject.isNull("params"))
    {
      paramJSONObject = paramJSONObject.getJSONObject("params");
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        mParams.put(str, paramJSONObject.getString(str));
      }
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    paramParcel.readMap(mParams, null);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeMap(mParams);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.PlatformSearchAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */