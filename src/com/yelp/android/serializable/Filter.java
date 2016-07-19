package com.yelp.android.serializable;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class Filter
  extends _Filter
{
  public static final a<Filter> CREATOR = new Filter.1();
  
  public Filter()
  {
    this(new Distance("", 0.0D), Sort.Default);
  }
  
  public Filter(Distance paramDistance, Sort paramSort)
  {
    this(paramDistance, localSort, new ArrayList());
  }
  
  public Filter(Distance paramDistance, Sort paramSort, List<GenericSearchFilter> paramList)
  {
    Distance localDistance = paramDistance;
    if (paramDistance == null) {
      localDistance = new Distance("", 0.0D);
    }
    a = localDistance;
    if (paramSort == null) {
      throw new IllegalArgumentException("Please use one of the known sorting values " + Arrays.toString(Sort.values()));
    }
    c = paramSort;
    b = paramList;
  }
  
  public Filter(Filter paramFilter)
  {
    a = a;
    c = c;
    b = b;
  }
  
  public Filter(Sort paramSort)
  {
    this(new Distance("", 0.0D), paramSort);
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = super.a();
    localJSONObject.put("sort", b().name());
    return localJSONObject;
  }
  
  public void a(GenericSearchFilter paramGenericSearchFilter)
  {
    if (b == null) {
      b = new ArrayList();
    }
    int j;
    for (int i = 0; i < b.size(); i = j + 1)
    {
      j = i;
      if (TextUtils.equals(((GenericSearchFilter)b.get(i)).e(), paramGenericSearchFilter.e()))
      {
        b.remove(i);
        j = i - 1;
      }
    }
    b.add(paramGenericSearchFilter);
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    c = Sort.valueOf(paramJSONObject.getString("sort"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Filter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */