package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.z;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Tip;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TreeMap;
import org.json.JSONObject;

public class cw
  extends g<String, Void, cx>
{
  public final Locale a;
  
  public cw(String paramString, int paramInt1, int paramInt2, Locale paramLocale, boolean paramBoolean, m<cx> paramm)
  {
    super(ApiRequest.RequestType.GET, "quicktips/list", paramm);
    if (paramm == null) {
      throw new IllegalArgumentException("You cannot have a null callback ... how will you get your results!");
    }
    if (paramInt1 < 0) {
      throw new IllegalArgumentException("Offset cannot be negative");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("limit cannot be negative or zero");
    }
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("BusinessId cannot be empty");
    }
    addUrlParam("business_id", paramString);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
    if (paramBoolean) {}
    for (paramString = "1";; paramString = "0")
    {
      addUrlParam("owned", paramString);
      addUrlParam("lang", paramLocale.getLanguage());
      a = paramLocale;
      return;
    }
  }
  
  public cx a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("quicktips"), Tip.CREATOR);
    Object localObject = paramJSONObject.optJSONObject("language_quick_tip_counts");
    TreeMap localTreeMap = new TreeMap(new z());
    if (localObject != null)
    {
      Iterator localIterator = ((JSONObject)localObject).keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localTreeMap.put(new Locale(str, a.getCountry()), Integer.valueOf(((JSONObject)localObject).optInt(str)));
      }
    }
    localObject = JsonUtil.getStringList(paramJSONObject.getJSONArray("languages"));
    paramJSONObject = new ArrayList();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext()) {
      paramJSONObject.add(new Locale((String)((Iterator)localObject).next()));
    }
    return new cx(localArrayList, a, localTreeMap, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */