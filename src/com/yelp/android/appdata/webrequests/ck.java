package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.LocaleSettings.b;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Tip;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import org.json.JSONException;
import org.json.JSONObject;

public class ck
  extends b<String, Void, a>
{
  public final Locale a;
  
  public ck(String paramString, int paramInt1, int paramInt2, Locale paramLocale, boolean paramBoolean, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "quicktips/list", paramb);
    if (paramb == null) {
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
    a("business_id", paramString);
    a("offset", paramInt1);
    a("limit", paramInt2);
    if (paramBoolean) {}
    for (paramString = "1";; paramString = "0")
    {
      a("owned", paramString);
      a("lang", paramLocale.getLanguage());
      a = paramLocale;
      return;
    }
  }
  
  public a a(JSONObject paramJSONObject)
    throws JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("quicktips"), Tip.CREATOR);
    Object localObject = paramJSONObject.optJSONObject("language_quick_tip_counts");
    TreeMap localTreeMap = new TreeMap(new LocaleSettings.b());
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
    return new a(localArrayList, a, localTreeMap, paramJSONObject);
  }
  
  public static class a
  {
    final List<Tip> a;
    final Map<Locale, Integer> b;
    final Locale c;
    final List<Locale> d;
    
    public a(List<Tip> paramList, Locale paramLocale, Map<Locale, Integer> paramMap, List<Locale> paramList1)
    {
      a = paramList;
      c = paramLocale;
      b = paramMap;
      d = paramList1;
    }
    
    public List<Tip> a()
    {
      return a;
    }
    
    public Map<Locale, Integer> b()
    {
      return b;
    }
    
    public Locale c()
    {
      return c;
    }
    
    public List<Locale> d()
    {
      return d;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */