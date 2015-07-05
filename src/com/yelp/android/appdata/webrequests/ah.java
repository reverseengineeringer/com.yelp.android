package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Collection;
import org.json.JSONObject;

public class ah
  extends w
{
  private final YelpBusiness b;
  private final Address c;
  
  protected ah()
  {
    super("business/update", null);
    b = null;
    c = null;
  }
  
  public ah(m<Pair<String, YelpBusiness>> paramm, YelpBusiness paramYelpBusiness, boolean paramBoolean)
  {
    super("business/update", paramm);
    addPostParam("business_id", paramYelpBusiness.getId());
    if (paramYelpBusiness.isClosed() != paramBoolean)
    {
      addPostParam("is_closed", paramBoolean);
      a.add("is_closed");
    }
    b = paramYelpBusiness;
    c = paramYelpBusiness.getAddress();
  }
  
  public Pair<String, YelpBusiness> a(JSONObject paramJSONObject)
  {
    Pair localPair = super.a(paramJSONObject);
    paramJSONObject = localPair;
    if (second == null) {
      paramJSONObject = Pair.create(first, b);
    }
    return paramJSONObject;
  }
  
  protected void a(double paramDouble)
  {
    if (b.getLongitude() != paramDouble) {
      super.a(paramDouble);
    }
  }
  
  protected void a(int paramInt, String paramString)
  {
    int i = paramInt - 1;
    if ((c.getMaxAddressLineIndex() < i) || (!TextUtils.equals(c.getAddressLine(i), paramString))) {
      super.a(paramInt, paramString);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(b.getLocalizedPhone(), paramCharSequence)) {
      super.a(paramCharSequence);
    }
  }
  
  protected void a(String paramString)
  {
    if (!TextUtils.equals(b.getLocality(), paramString)) {
      super.a(paramString);
    }
  }
  
  public void a(Collection<Category> paramCollection)
  {
    if (!paramCollection.equals(b.getCategories())) {
      super.a(paramCollection);
    }
  }
  
  protected void b(double paramDouble)
  {
    if (b.getLatitude() != paramDouble) {
      super.b(paramDouble);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(b.getBestUrl(), paramCharSequence)) {
      super.b(paramCharSequence);
    }
  }
  
  protected void b(String paramString)
  {
    if (!TextUtils.equals(b.getCountry(), paramString)) {
      super.b(paramString);
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(b.getMenuUrl(), paramCharSequence)) {
      super.c(paramCharSequence);
    }
  }
  
  public void d(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(b.getName(), paramCharSequence)) {
      super.d(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */