package com.yelp.android.serializable;

import android.content.res.Resources;
import android.os.Parcel;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.services.f;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class Passport
  extends _Passport
  implements DisplayableAsUserBadge
{
  public static final JsonParser.DualCreator<Passport> CREATOR = new Passport.1();
  private FeatureSet l = new FeatureSet();
  private String m;
  
  @Deprecated
  protected static Passport a(co paramco)
  {
    Passport localPassport = new Passport();
    c = paramco.a();
    m = paramco.r();
    return localPassport;
  }
  
  public static String a(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, Resources paramResources)
  {
    if (!paramBoolean) {
      return Integer.toString(paramInt3);
    }
    if (paramInt2 == 0) {
      return paramResources.getQuantityString(2131230751, paramInt1, new Object[] { Integer.valueOf(paramInt1) });
    }
    if ((paramInt1 == 0) && (paramInt2 > 0)) {
      return paramResources.getQuantityString(2131230770, paramInt2, new Object[] { Integer.valueOf(paramInt2) });
    }
    return paramResources.getString(2131166338, new Object[] { Integer.valueOf(paramInt3) });
  }
  
  public static String a(boolean paramBoolean, YelpBusinessReview paramYelpBusinessReview, Resources paramResources)
  {
    return a(paramBoolean, paramYelpBusinessReview.y(), paramYelpBusinessReview.x(), paramYelpBusinessReview.g(), paramResources);
  }
  
  public String a()
  {
    return d;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    l = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    l.a(a);
  }
  
  public boolean a(FeatureSet.Feature paramFeature)
  {
    return l.a(paramFeature);
  }
  
  public String c()
  {
    if (b != null) {
      return b.f();
    }
    return null;
  }
  
  public boolean h()
  {
    return f.a(l());
  }
  
  public String i()
  {
    return c;
  }
  
  public String j()
  {
    if (q() != null) {
      return q().f();
    }
    return m;
  }
  
  public int n_()
  {
    return m_() + l_();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeParcelable(l, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Passport
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */