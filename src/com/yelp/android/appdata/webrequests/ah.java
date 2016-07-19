package com.yelp.android.appdata.webrequests;

import android.location.Address;
import android.text.TextUtils;
import android.util.Pair;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Collection;
import org.json.JSONException;
import org.json.JSONObject;

public class ah
  extends y
{
  private final YelpBusiness g;
  private final Address h;
  
  protected ah()
  {
    super("business/update", null);
    g = null;
    h = null;
  }
  
  public ah(ApiRequest.b<Pair<String, YelpBusiness>> paramb, YelpBusiness paramYelpBusiness, boolean paramBoolean1, boolean paramBoolean2)
  {
    super("business/update", paramb);
    b("business_id", paramYelpBusiness.aD());
    if (paramYelpBusiness.r() != paramBoolean1)
    {
      b("is_closed", paramBoolean1);
      a.add("is_closed");
    }
    if (paramBoolean2) {
      b("is_duplicate", paramBoolean2);
    }
    g = paramYelpBusiness;
    h = paramYelpBusiness.f();
  }
  
  public Pair<String, YelpBusiness> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    Pair localPair = super.a(paramJSONObject);
    paramJSONObject = localPair;
    if (second == null) {
      paramJSONObject = Pair.create(first, g);
    }
    return paramJSONObject;
  }
  
  protected void a(double paramDouble)
  {
    if (g.Q() != paramDouble) {
      super.a(paramDouble);
    }
  }
  
  protected void a(int paramInt, String paramString)
  {
    int i = paramInt - 1;
    if ((h.getMaxAddressLineIndex() < i) || (!TextUtils.equals(h.getAddressLine(i), paramString))) {
      super.a(paramInt, paramString);
    }
  }
  
  public void a(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(g.as(), paramCharSequence)) {
      super.a(paramCharSequence);
    }
  }
  
  protected void a(String paramString)
  {
    if (!TextUtils.equals(g.av(), paramString)) {
      super.a(paramString);
    }
  }
  
  public void a(Collection<Category> paramCollection)
  {
    if (!paramCollection.equals(g.aV())) {
      super.a(paramCollection);
    }
  }
  
  protected void b(double paramDouble)
  {
    if (g.R() != paramDouble) {
      super.b(paramDouble);
    }
  }
  
  public void b(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(g.y(), paramCharSequence)) {
      super.b(paramCharSequence);
    }
  }
  
  protected void b(String paramString)
  {
    if (!TextUtils.equals(g.aw(), paramString)) {
      super.b(paramString);
    }
  }
  
  public void c(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(g.aj(), paramCharSequence)) {
      super.c(paramCharSequence);
    }
  }
  
  public void d(CharSequence paramCharSequence)
  {
    if (!TextUtils.equals(g.aq(), paramCharSequence)) {
      super.d(paramCharSequence);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */