package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.android.ui.util.as;
import com.yelp.android.util.i;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import org.json.JSONException;
import org.json.JSONObject;

public class YelpBusinessReview
  extends _YelpBusinessReview
  implements Complimentable, SingleFeedEntry
{
  public static final a<YelpBusinessReview> CREATOR = new YelpBusinessReview.2();
  private YelpBusinessReview.ReviewFeedback H = new YelpBusinessReview.ReviewFeedback(0, 0, 0);
  private YelpBusinessReview.UserFeedback I = new YelpBusinessReview.UserFeedback(false, false, false);
  private FeatureSet J = new FeatureSet();
  private Locale K = null;
  private boolean L = false;
  private boolean M = false;
  private boolean N = false;
  private List<IdentifiableMedia> O;
  
  private List<IdentifiableMedia> Y()
  {
    O = new ArrayList();
    O.addAll(d);
    O.addAll(h);
    Collections.sort(O, new YelpBusinessReview.1(this));
    return O;
  }
  
  public static YelpBusinessReview a(YelpBusinessReview paramYelpBusinessReview, PreviousReview paramPreviousReview)
  {
    YelpBusinessReview localYelpBusinessReview = new YelpBusinessReview();
    k = paramYelpBusinessReview.Q();
    p = paramYelpBusinessReview.M();
    q = paramYelpBusinessReview.L();
    y = paramYelpBusinessReview.D();
    t = paramYelpBusinessReview.I();
    c = paramYelpBusinessReview.V();
    u = paramYelpBusinessReview.H();
    C = paramYelpBusinessReview.z();
    f = paramYelpBusinessReview.S();
    F = paramYelpBusinessReview.w();
    B = paramYelpBusinessReview.A();
    x = paramYelpBusinessReview.E();
    w = paramYelpBusinessReview.F();
    n = paramYelpBusinessReview.O();
    j = paramYelpBusinessReview.b();
    r = paramYelpBusinessReview.K();
    D = paramYelpBusinessReview.y();
    E = paramYelpBusinessReview.x();
    o = paramYelpBusinessReview.N();
    M = paramYelpBusinessReview.r();
    A = paramYelpBusinessReview.B();
    D = paramYelpBusinessReview.y();
    E = paramYelpBusinessReview.x();
    i = paramPreviousReview.i();
    b = paramPreviousReview.l();
    l = paramPreviousReview.h();
    z = paramPreviousReview.e();
    m = paramPreviousReview.g();
    H.a(paramPreviousReview.d());
    H.c(paramPreviousReview.b());
    H.b(paramPreviousReview.c());
    I.a(paramPreviousReview.f());
    I.b(i);
    I.c(j);
    d = paramPreviousReview.k();
    h = paramPreviousReview.j();
    a = paramPreviousReview.m();
    N = true;
    return localYelpBusinessReview;
  }
  
  public static Locale a(Parcel paramParcel)
  {
    String str = paramParcel.readString();
    if (str == null) {
      return null;
    }
    return new Locale(str, paramParcel.readString(), paramParcel.readString());
  }
  
  public static void a(Parcel paramParcel, Locale paramLocale)
  {
    if (paramLocale == null)
    {
      paramParcel.writeString(null);
      return;
    }
    paramParcel.writeString(paramLocale.getLanguage());
    paramParcel.writeString(paramLocale.getCountry());
    paramParcel.writeString(paramLocale.getVariant());
  }
  
  public void a(int paramInt)
  {
    z = paramInt;
  }
  
  public void a(Photo paramPhoto)
  {
    if (t())
    {
      int i = as.a(d, paramPhoto);
      if (i >= 0) {
        d.set(i, paramPhoto);
      }
    }
  }
  
  public void a(TranslatedReview paramTranslatedReview)
  {
    v = paramTranslatedReview;
  }
  
  public void a(User paramUser)
  {
    B = paramUser.k_();
    A = paramUser.j_();
    M = paramUser.h();
    j = paramUser.ae();
    n = paramUser.ad();
    o = paramUser.c();
  }
  
  public void a(YelpBusinessReview.ReviewFeedback paramReviewFeedback)
  {
    H = paramReviewFeedback;
  }
  
  public void a(YelpBusinessReview.UserFeedback paramUserFeedback)
  {
    I = paramUserFeedback;
  }
  
  public void a(String paramString)
  {
    l = paramString;
  }
  
  public void a(Locale paramLocale)
  {
    K = paramLocale;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    JSONObject localJSONObject = paramJSONObject.optJSONObject("feedback");
    if (localJSONObject != null) {
      H = new YelpBusinessReview.ReviewFeedback(Math.max(0, localJSONObject.optInt("useful")), Math.max(0, localJSONObject.optInt("funny")), Math.max(0, localJSONObject.optInt("cool")));
    }
    paramJSONObject = paramJSONObject.optJSONObject("user_feedback");
    if (paramJSONObject != null) {
      I = new YelpBusinessReview.UserFeedback(paramJSONObject.optBoolean("useful"), paramJSONObject.optBoolean("funny"), paramJSONObject.optBoolean("cool"));
    }
    if (w() != null) {}
    for (M = User.a(w());; M = false)
    {
      J.a(f);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    L = paramBoolean;
  }
  
  public boolean a(FeatureSet.Feature paramFeature)
  {
    return J.a(paramFeature);
  }
  
  public void b(Parcel paramParcel)
  {
    super.b(paramParcel);
    H = ((YelpBusinessReview.ReviewFeedback)YelpBusinessReview.ReviewFeedback.CREATOR.createFromParcel(paramParcel));
    I = ((YelpBusinessReview.UserFeedback)YelpBusinessReview.UserFeedback.CREATOR.createFromParcel(paramParcel));
    J = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
    K = a(paramParcel);
    paramParcel = paramParcel.createBooleanArray();
    L = paramParcel[0];
    N = paramParcel[1];
    M = paramParcel[2];
  }
  
  public Compliment.ComplimentableItemType c()
  {
    return Compliment.ComplimentableItemType.REVIEW;
  }
  
  public Date d()
  {
    return b;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (!(paramObject instanceof YelpBusinessReview)) {
          return false;
        }
        paramObject = (YelpBusinessReview)paramObject;
        if (i != null) {
          break;
        }
      } while (i == null);
      return false;
    } while (i.equals(i));
    return false;
  }
  
  public boolean f()
  {
    return N;
  }
  
  public int g()
  {
    return x() + y();
  }
  
  public int h()
  {
    return d.size();
  }
  
  public int hashCode()
  {
    if (this.i == null) {}
    for (int i = 0;; i = this.i.hashCode()) {
      return i + 31;
    }
  }
  
  public int i()
  {
    return h.size();
  }
  
  public int j()
  {
    return d.size() + h.size();
  }
  
  public List<IdentifiableMedia> k()
  {
    if (O == null) {
      Y();
    }
    return O;
  }
  
  public YelpBusinessReview.ReviewFeedback l()
  {
    return H;
  }
  
  public YelpBusinessReview.UserFeedback m()
  {
    return I;
  }
  
  public RankTitle.Rank n()
  {
    return RankTitle.Rank.rankForString(K());
  }
  
  public Locale o()
  {
    return K;
  }
  
  public boolean p()
  {
    return L;
  }
  
  public boolean q()
  {
    return (AppData.b().q().a(j)) && (v() < i.f(System.currentTimeMillis()));
  }
  
  public boolean r()
  {
    return M;
  }
  
  public JSONObject s()
    throws JSONException
  {
    JSONObject localJSONObject = super.s();
    if (I != null) {
      localJSONObject.put("user_feedback", I.d());
    }
    if (H != null) {
      localJSONObject.put("feedback", H.e());
    }
    return localJSONObject;
  }
  
  public boolean t()
  {
    return U() != Collections.EMPTY_LIST;
  }
  
  public boolean u()
  {
    return (g != null) && (g.contains("100millionth"));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    H.writeToParcel(paramParcel, 0);
    I.writeToParcel(paramParcel, 0);
    paramParcel.writeParcelable(J, paramInt);
    a(paramParcel, K);
    paramParcel.writeBooleanArray(new boolean[] { L, N, M });
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */