package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _YelpBusiness
  implements Parcelable
{
  protected PlatformAction A;
  protected RecentFriendCheckIns B;
  protected Reservation C;
  protected SpamAlert D;
  protected String E;
  protected String F;
  protected String G;
  protected String H;
  protected String I;
  protected String J;
  protected String K;
  protected String L;
  protected String M;
  protected String N;
  protected String O;
  protected String P;
  protected String Q;
  protected String R;
  protected String S;
  protected String T;
  protected String U;
  protected String V;
  protected String W;
  protected String X;
  protected String Y;
  protected String Z;
  protected AlternateBusinessNames a;
  protected int aA;
  protected int aB;
  protected int aC;
  protected int aD;
  protected int aE;
  protected int aF;
  protected int aG;
  protected int aH;
  protected int aI;
  protected int aJ;
  protected int aK;
  protected String aa;
  protected String ab;
  protected String ac;
  protected String ad;
  protected String ae;
  protected String af;
  protected String ag;
  protected String ah;
  protected String ai;
  protected User aj;
  protected Video ak;
  protected YelpAddresses al;
  protected YelpBusinessReview am;
  protected YelpBusinessReview an;
  protected YelpDeal ao;
  protected boolean ap;
  protected boolean aq;
  protected boolean ar;
  protected boolean as;
  protected boolean at;
  protected boolean au;
  protected boolean av;
  protected double aw;
  protected double ax;
  protected double ay;
  protected double az;
  protected AndroidAppAnnotation b;
  protected ArrayList<Movie> c;
  protected CallToAction d;
  protected ContinueLastOrderInfo e;
  protected Date f;
  protected BusinessSearchRequest.FormatMode g;
  protected FromThisBusiness h;
  protected HealthData i;
  protected List<Attribution> j;
  protected List<Category> k;
  protected List<LocalizedAttribute> l;
  protected List<Photo> m;
  protected List<SearchResultAnnotation> n;
  protected List<SpecialHours> o;
  protected List<String> p;
  protected List<String> q;
  protected List<String> r;
  protected List<User> s;
  protected List<YelpBusinessReviewInsight> t;
  protected List<YelpDeal> u;
  protected List<YelpHoursPair> v;
  protected Menu w;
  protected MessageTheBusiness x;
  protected Offer y;
  protected Photo z;
  
  public JSONObject E()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("alternate_names", a.a());
    }
    if (b != null) {
      localJSONObject.put("android_app_annotation", b.d());
    }
    JSONArray localJSONArray;
    Iterator localIterator;
    if (c != null)
    {
      localJSONArray = new JSONArray();
      localIterator = c.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Movie)localIterator.next()).a());
      }
      localJSONObject.put("movies", localJSONArray);
    }
    if (d != null) {
      localJSONObject.put("call_to_action", d.a());
    }
    if (e != null) {
      localJSONObject.put("continue_last_order_info", e.b());
    }
    if (f != null) {
      localJSONObject.put("time_reopening", f.getTime() / 1000L);
    }
    if (h != null) {
      localJSONObject.put("from_this_business", h.a());
    }
    if (i != null) {
      localJSONObject.put("health_data", i.a());
    }
    if (j != null)
    {
      localJSONArray = new JSONArray();
      localIterator = j.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Attribution)localIterator.next()).b());
      }
      localJSONObject.put("attributions", localJSONArray);
    }
    if (k != null)
    {
      localJSONArray = new JSONArray();
      localIterator = k.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Category)localIterator.next()).g());
      }
      localJSONObject.put("categories", localJSONArray);
    }
    if (l != null)
    {
      localJSONArray = new JSONArray();
      localIterator = l.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((LocalizedAttribute)localIterator.next()).c());
      }
      localJSONObject.put("localized_attributes", localJSONArray);
    }
    if (m != null)
    {
      localJSONArray = new JSONArray();
      localIterator = m.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Photo)localIterator.next()).w());
      }
      localJSONObject.put("photos", localJSONArray);
    }
    if (n != null)
    {
      localJSONArray = new JSONArray();
      localIterator = n.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SearchResultAnnotation)localIterator.next()).b());
      }
      localJSONObject.put("search_result_annotations", localJSONArray);
    }
    if (o != null)
    {
      localJSONArray = new JSONArray();
      localIterator = o.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SpecialHours)localIterator.next()).a());
      }
      localJSONObject.put("special_hours", localJSONArray);
    }
    if (p != null)
    {
      localJSONArray = new JSONArray();
      localIterator = p.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("neighborhoods", localJSONArray);
    }
    if (q != null)
    {
      localJSONArray = new JSONArray();
      localIterator = q.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("regular_names", localJSONArray);
    }
    if (r != null)
    {
      localJSONArray = new JSONArray();
      localIterator = r.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("localized_hours", localJSONArray);
    }
    if (t != null)
    {
      localJSONArray = new JSONArray();
      localIterator = t.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpBusinessReviewInsight)localIterator.next()).a());
      }
      localJSONObject.put("demographics", localJSONArray);
    }
    if (u != null)
    {
      localJSONArray = new JSONArray();
      localIterator = u.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpDeal)localIterator.next()).o());
      }
      localJSONObject.put("user_deals", localJSONArray);
    }
    if (v != null)
    {
      localJSONArray = new JSONArray();
      localIterator = v.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((YelpHoursPair)localIterator.next()).a());
      }
      localJSONObject.put("hours", localJSONArray);
    }
    if (w != null) {
      localJSONObject.put("menu", w.a());
    }
    if (x != null) {
      localJSONObject.put("message_the_business", x.a());
    }
    if (y != null) {
      localJSONObject.put("check_in_offer", y.f());
    }
    if (z != null) {
      localJSONObject.put("primary_photo", z.w());
    }
    if (A != null) {
      localJSONObject.put("platform_action", A.a());
    }
    if (B != null) {
      localJSONObject.put("recent_check_in_friends", B.a());
    }
    if (C != null) {
      localJSONObject.put("reservation", C.c());
    }
    if (D != null) {
      localJSONObject.put("spam_alert", D.a());
    }
    if (E != null) {
      localJSONObject.put("id", E);
    }
    if (F != null) {
      localJSONObject.put("address1", F);
    }
    if (G != null) {
      localJSONObject.put("address2", G);
    }
    if (H != null) {
      localJSONObject.put("address3", H);
    }
    if (I != null) {
      localJSONObject.put("state", I);
    }
    if (J != null) {
      localJSONObject.put("city", J);
    }
    if (K != null) {
      localJSONObject.put("zip", K);
    }
    if (L != null) {
      localJSONObject.put("country", L);
    }
    if (M != null) {
      localJSONObject.put("locality", M);
    }
    if (N != null) {
      localJSONObject.put("photo_url", N);
    }
    if (O != null) {
      localJSONObject.put("cross_streets", O);
    }
    if (P != null) {
      localJSONObject.put("localized_address", P);
    }
    if (Q != null) {
      localJSONObject.put("localized_phone", Q);
    }
    if (R != null) {
      localJSONObject.put("localized_price", R);
    }
    if (S != null) {
      localJSONObject.put("name", S);
    }
    if (T != null) {
      localJSONObject.put("alias", T);
    }
    if (U != null) {
      localJSONObject.put("dialable_phone", U);
    }
    if (W != null) {
      localJSONObject.put("health_score", W);
    }
    if (X != null) {
      localJSONObject.put("url", X);
    }
    if (Y != null) {
      localJSONObject.put("display_url", Y);
    }
    if (Z != null) {
      localJSONObject.put("menu_url", Z);
    }
    if (aa != null) {
      localJSONObject.put("menu_display_url", aa);
    }
    if (ab != null) {
      localJSONObject.put("health_score_url", ab);
    }
    if (ac != null) {
      localJSONObject.put("moved_to_business_id", ac);
    }
    if (ad != null) {
      localJSONObject.put("recently_moved_from_business_id", ad);
    }
    if (ae != null) {
      localJSONObject.put("user_review_activity", ae);
    }
    if (af != null) {
      localJSONObject.put("reservation_provider", af);
    }
    if (ag != null) {
      localJSONObject.put("theater_url", ag);
    }
    if (ah != null) {
      localJSONObject.put("yelp_url", ah);
    }
    if (ai != null) {
      localJSONObject.put("share_url", ai);
    }
    if (aj != null) {
      localJSONObject.put("top_user", aj.A());
    }
    if (ak != null) {
      localJSONObject.put("biz_owner_video", ak.n());
    }
    if (al != null) {
      localJSONObject.put("addresses", al.a());
    }
    if (am != null) {
      localJSONObject.put("review", am.s());
    }
    if (an != null) {
      localJSONObject.put("business_review_excerpt", an.s());
    }
    if (ao != null) {
      localJSONObject.put("deal", ao.o());
    }
    localJSONObject.put("is_closed", ap);
    localJSONObject.put("is_moved_to_new_address", aq);
    localJSONObject.put("is_recently_moved_from_different_address", ar);
    localJSONObject.put("is_bookmarked", as);
    localJSONObject.put("is_ad_rating_disabled", at);
    localJSONObject.put("is_message_to_business_enabled", au);
    localJSONObject.put("should_track_offline_attribution", av);
    localJSONObject.put("latitude", aw);
    localJSONObject.put("longitude", ax);
    localJSONObject.put("avg_rating", ay);
    localJSONObject.put("geo_accuracy", az);
    localJSONObject.put("review_count", aA);
    localJSONObject.put("price", aB);
    localJSONObject.put("quicktip_count", aC);
    localJSONObject.put("regular_count", aD);
    localJSONObject.put("friend_bookmarked_count", aE);
    localJSONObject.put("user_count", aF);
    localJSONObject.put("photo_count", aH);
    localJSONObject.put("user_latest_review_rating", aI);
    localJSONObject.put("user_check_in_count", aJ);
    localJSONObject.put("video_count", aK);
    return localJSONObject;
  }
  
  public int F()
  {
    return aK;
  }
  
  public int G()
  {
    return aJ;
  }
  
  public int H()
  {
    return aI;
  }
  
  public int I()
  {
    return aH;
  }
  
  public int J()
  {
    return aG;
  }
  
  public int K()
  {
    return aD;
  }
  
  public int L()
  {
    return aC;
  }
  
  public int M()
  {
    return aB;
  }
  
  public int N()
  {
    return aA;
  }
  
  public double O()
  {
    return az;
  }
  
  public double P()
  {
    return ay;
  }
  
  public double Q()
  {
    return ax;
  }
  
  public double R()
  {
    return aw;
  }
  
  public boolean S()
  {
    return av;
  }
  
  public boolean T()
  {
    return au;
  }
  
  public boolean U()
  {
    return as;
  }
  
  public boolean V()
  {
    return ar;
  }
  
  public boolean W()
  {
    return aq;
  }
  
  public YelpDeal X()
  {
    return ao;
  }
  
  public YelpBusinessReview Y()
  {
    return an;
  }
  
  public YelpAddresses Z()
  {
    return al;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((AlternateBusinessNames)paramParcel.readParcelable(AlternateBusinessNames.class.getClassLoader()));
    b = ((AndroidAppAnnotation)paramParcel.readParcelable(AndroidAppAnnotation.class.getClassLoader()));
    c = paramParcel.readArrayList(Movie.class.getClassLoader());
    d = ((CallToAction)paramParcel.readParcelable(CallToAction.class.getClassLoader()));
    e = ((ContinueLastOrderInfo)paramParcel.readParcelable(ContinueLastOrderInfo.class.getClassLoader()));
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      f = new Date(l1);
    }
    g = ((BusinessSearchRequest.FormatMode)paramParcel.readSerializable());
    h = ((FromThisBusiness)paramParcel.readParcelable(FromThisBusiness.class.getClassLoader()));
    i = ((HealthData)paramParcel.readParcelable(HealthData.class.getClassLoader()));
    l = paramParcel.readArrayList(AttributedLabelValuePair.class.getClassLoader());
    j = paramParcel.readArrayList(Attribution.class.getClassLoader());
    k = paramParcel.readArrayList(Category.class.getClassLoader());
    m = paramParcel.readArrayList(Photo.class.getClassLoader());
    n = paramParcel.readArrayList(SearchResultAnnotation.class.getClassLoader());
    o = paramParcel.readArrayList(SpecialHours.class.getClassLoader());
    p = paramParcel.createStringArrayList();
    q = paramParcel.createStringArrayList();
    r = paramParcel.createStringArrayList();
    s = paramParcel.readArrayList(User.class.getClassLoader());
    t = paramParcel.readArrayList(YelpBusinessReviewInsight.class.getClassLoader());
    u = paramParcel.readArrayList(YelpDeal.class.getClassLoader());
    v = paramParcel.readArrayList(YelpHoursPair.class.getClassLoader());
    w = ((Menu)paramParcel.readParcelable(Menu.class.getClassLoader()));
    x = ((MessageTheBusiness)paramParcel.readParcelable(MessageTheBusiness.class.getClassLoader()));
    y = ((Offer)paramParcel.readParcelable(Offer.class.getClassLoader()));
    z = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    A = ((PlatformAction)paramParcel.readParcelable(PlatformAction.class.getClassLoader()));
    B = ((RecentFriendCheckIns)paramParcel.readParcelable(RecentFriendCheckIns.class.getClassLoader()));
    C = ((Reservation)paramParcel.readParcelable(Reservation.class.getClassLoader()));
    D = ((SpamAlert)paramParcel.readParcelable(SpamAlert.class.getClassLoader()));
    E = ((String)paramParcel.readValue(String.class.getClassLoader()));
    F = ((String)paramParcel.readValue(String.class.getClassLoader()));
    G = ((String)paramParcel.readValue(String.class.getClassLoader()));
    H = ((String)paramParcel.readValue(String.class.getClassLoader()));
    I = ((String)paramParcel.readValue(String.class.getClassLoader()));
    J = ((String)paramParcel.readValue(String.class.getClassLoader()));
    K = ((String)paramParcel.readValue(String.class.getClassLoader()));
    L = ((String)paramParcel.readValue(String.class.getClassLoader()));
    M = ((String)paramParcel.readValue(String.class.getClassLoader()));
    N = ((String)paramParcel.readValue(String.class.getClassLoader()));
    O = ((String)paramParcel.readValue(String.class.getClassLoader()));
    P = ((String)paramParcel.readValue(String.class.getClassLoader()));
    Q = ((String)paramParcel.readValue(String.class.getClassLoader()));
    R = ((String)paramParcel.readValue(String.class.getClassLoader()));
    S = ((String)paramParcel.readValue(String.class.getClassLoader()));
    T = ((String)paramParcel.readValue(String.class.getClassLoader()));
    U = ((String)paramParcel.readValue(String.class.getClassLoader()));
    V = ((String)paramParcel.readValue(String.class.getClassLoader()));
    W = ((String)paramParcel.readValue(String.class.getClassLoader()));
    X = ((String)paramParcel.readValue(String.class.getClassLoader()));
    Y = ((String)paramParcel.readValue(String.class.getClassLoader()));
    Z = ((String)paramParcel.readValue(String.class.getClassLoader()));
    aa = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ab = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ac = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ad = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ae = ((String)paramParcel.readValue(String.class.getClassLoader()));
    af = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ag = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ah = ((String)paramParcel.readValue(String.class.getClassLoader()));
    ai = ((String)paramParcel.readValue(String.class.getClassLoader()));
    aj = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    ak = ((Video)paramParcel.readParcelable(Video.class.getClassLoader()));
    al = ((YelpAddresses)paramParcel.readParcelable(YelpAddresses.class.getClassLoader()));
    am = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
    an = ((YelpBusinessReview)paramParcel.readParcelable(YelpBusinessReview.class.getClassLoader()));
    ao = ((YelpDeal)paramParcel.readParcelable(YelpDeal.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    ap = arrayOfBoolean[0];
    aq = arrayOfBoolean[1];
    ar = arrayOfBoolean[2];
    as = arrayOfBoolean[3];
    at = arrayOfBoolean[4];
    au = arrayOfBoolean[5];
    av = arrayOfBoolean[6];
    aw = paramParcel.readDouble();
    ax = paramParcel.readDouble();
    ay = paramParcel.readDouble();
    az = paramParcel.readDouble();
    aA = paramParcel.readInt();
    aB = paramParcel.readInt();
    aC = paramParcel.readInt();
    aD = paramParcel.readInt();
    aE = paramParcel.readInt();
    aF = paramParcel.readInt();
    aG = paramParcel.readInt();
    aH = paramParcel.readInt();
    aI = paramParcel.readInt();
    aJ = paramParcel.readInt();
    aK = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("alternate_names")) {
      a = ((AlternateBusinessNames)AlternateBusinessNames.CREATOR.parse(paramJSONObject.getJSONObject("alternate_names")));
    }
    if (!paramJSONObject.isNull("android_app_annotation")) {
      b = ((AndroidAppAnnotation)AndroidAppAnnotation.CREATOR.parse(paramJSONObject.getJSONObject("android_app_annotation")));
    }
    if (!paramJSONObject.isNull("movies"))
    {
      c = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("movies"), Movie.CREATOR);
      if (!paramJSONObject.isNull("call_to_action")) {
        d = ((CallToAction)CallToAction.CREATOR.parse(paramJSONObject.getJSONObject("call_to_action")));
      }
      if (!paramJSONObject.isNull("continue_last_order_info")) {
        e = ((ContinueLastOrderInfo)ContinueLastOrderInfo.CREATOR.parse(paramJSONObject.getJSONObject("continue_last_order_info")));
      }
      if (!paramJSONObject.isNull("time_reopening")) {
        f = JsonUtil.parseTimestamp(paramJSONObject, "time_reopening");
      }
      if (!paramJSONObject.isNull("from_this_business")) {
        h = ((FromThisBusiness)FromThisBusiness.CREATOR.parse(paramJSONObject.getJSONObject("from_this_business")));
      }
      if (!paramJSONObject.isNull("health_data")) {
        i = ((HealthData)HealthData.CREATOR.parse(paramJSONObject.getJSONObject("health_data")));
      }
      if (paramJSONObject.isNull("attributions")) {
        break label1819;
      }
      j = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("attributions"), Attribution.CREATOR);
      label237:
      if (paramJSONObject.isNull("categories")) {
        break label1829;
      }
      k = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("categories"), Category.CREATOR);
      label262:
      if (paramJSONObject.isNull("localized_attributes")) {
        break label1839;
      }
      l = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("localized_attributes"), LocalizedAttribute.CREATOR);
      label289:
      if (paramJSONObject.isNull("photos")) {
        break label1849;
      }
      m = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      label316:
      if (paramJSONObject.isNull("search_result_annotations")) {
        break label1859;
      }
      n = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("search_result_annotations"), SearchResultAnnotation.CREATOR);
      label343:
      if (paramJSONObject.isNull("special_hours")) {
        break label1869;
      }
      o = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("special_hours"), SpecialHours.CREATOR);
      label370:
      if (paramJSONObject.isNull("neighborhoods")) {
        break label1879;
      }
      p = JsonUtil.getStringList(paramJSONObject.optJSONArray("neighborhoods"));
      label394:
      if (paramJSONObject.isNull("regular_names")) {
        break label1889;
      }
      q = JsonUtil.getStringList(paramJSONObject.optJSONArray("regular_names"));
      label418:
      if (paramJSONObject.isNull("localized_hours")) {
        break label1899;
      }
      r = JsonUtil.getStringList(paramJSONObject.optJSONArray("localized_hours"));
      label442:
      if (paramJSONObject.isNull("demographics")) {
        break label1909;
      }
      t = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("demographics"), YelpBusinessReviewInsight.CREATOR);
      label469:
      if (paramJSONObject.isNull("user_deals")) {
        break label1919;
      }
      u = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("user_deals"), YelpDeal.CREATOR);
      label496:
      if (paramJSONObject.isNull("hours")) {
        break label1929;
      }
      v = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("hours"), YelpHoursPair.CREATOR);
      label523:
      if (!paramJSONObject.isNull("menu")) {
        w = ((Menu)Menu.CREATOR.parse(paramJSONObject.getJSONObject("menu")));
      }
      if (!paramJSONObject.isNull("message_the_business")) {
        x = ((MessageTheBusiness)MessageTheBusiness.CREATOR.parse(paramJSONObject.getJSONObject("message_the_business")));
      }
      if (!paramJSONObject.isNull("check_in_offer")) {
        y = ((Offer)Offer.CREATOR.parse(paramJSONObject.getJSONObject("check_in_offer")));
      }
      if (!paramJSONObject.isNull("primary_photo")) {
        z = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("primary_photo")));
      }
      if (!paramJSONObject.isNull("platform_action")) {
        A = ((PlatformAction)PlatformAction.CREATOR.parse(paramJSONObject.getJSONObject("platform_action")));
      }
      if (!paramJSONObject.isNull("recent_check_in_friends")) {
        B = ((RecentFriendCheckIns)RecentFriendCheckIns.CREATOR.parse(paramJSONObject.getJSONObject("recent_check_in_friends")));
      }
      if (!paramJSONObject.isNull("reservation")) {
        C = ((Reservation)Reservation.CREATOR.parse(paramJSONObject.getJSONObject("reservation")));
      }
      if (!paramJSONObject.isNull("spam_alert")) {
        D = ((SpamAlert)SpamAlert.CREATOR.parse(paramJSONObject.getJSONObject("spam_alert")));
      }
      if (!paramJSONObject.isNull("id")) {
        E = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("address1")) {
        F = paramJSONObject.optString("address1");
      }
      if (!paramJSONObject.isNull("address2")) {
        G = paramJSONObject.optString("address2");
      }
      if (!paramJSONObject.isNull("address3")) {
        H = paramJSONObject.optString("address3");
      }
      if (!paramJSONObject.isNull("state")) {
        I = paramJSONObject.optString("state");
      }
      if (!paramJSONObject.isNull("city")) {
        J = paramJSONObject.optString("city");
      }
      if (!paramJSONObject.isNull("zip")) {
        K = paramJSONObject.optString("zip");
      }
      if (!paramJSONObject.isNull("country")) {
        L = paramJSONObject.optString("country");
      }
      if (!paramJSONObject.isNull("locality")) {
        M = paramJSONObject.optString("locality");
      }
      if (!paramJSONObject.isNull("photo_url")) {
        N = paramJSONObject.optString("photo_url");
      }
      if (!paramJSONObject.isNull("cross_streets")) {
        O = paramJSONObject.optString("cross_streets");
      }
      if (!paramJSONObject.isNull("localized_address")) {
        P = paramJSONObject.optString("localized_address");
      }
      if (!paramJSONObject.isNull("localized_phone")) {
        Q = paramJSONObject.optString("localized_phone");
      }
      if (!paramJSONObject.isNull("localized_price")) {
        R = paramJSONObject.optString("localized_price");
      }
      if (!paramJSONObject.isNull("name")) {
        S = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("alias")) {
        T = paramJSONObject.optString("alias");
      }
      if (!paramJSONObject.isNull("dialable_phone")) {
        U = paramJSONObject.optString("dialable_phone");
      }
      if (!paramJSONObject.isNull("health_score")) {
        W = paramJSONObject.optString("health_score");
      }
      if (!paramJSONObject.isNull("url")) {
        X = paramJSONObject.optString("url");
      }
      if (!paramJSONObject.isNull("display_url")) {
        Y = paramJSONObject.optString("display_url");
      }
      if (!paramJSONObject.isNull("menu_url")) {
        Z = paramJSONObject.optString("menu_url");
      }
      if (!paramJSONObject.isNull("menu_display_url")) {
        aa = paramJSONObject.optString("menu_display_url");
      }
      if (!paramJSONObject.isNull("health_score_url")) {
        ab = paramJSONObject.optString("health_score_url");
      }
      if (!paramJSONObject.isNull("moved_to_business_id")) {
        ac = paramJSONObject.optString("moved_to_business_id");
      }
      if (!paramJSONObject.isNull("recently_moved_from_business_id")) {
        ad = paramJSONObject.optString("recently_moved_from_business_id");
      }
      if (paramJSONObject.isNull("user_review_activity")) {
        break label1939;
      }
    }
    label1819:
    label1829:
    label1839:
    label1849:
    label1859:
    label1869:
    label1879:
    label1889:
    label1899:
    label1909:
    label1919:
    label1929:
    label1939:
    for (ae = paramJSONObject.optString("user_review_activity");; ae = "not_started")
    {
      if (!paramJSONObject.isNull("reservation_provider")) {
        af = paramJSONObject.optString("reservation_provider");
      }
      if (!paramJSONObject.isNull("theater_url")) {
        ag = paramJSONObject.optString("theater_url");
      }
      if (!paramJSONObject.isNull("yelp_url")) {
        ah = paramJSONObject.optString("yelp_url");
      }
      if (!paramJSONObject.isNull("share_url")) {
        ai = paramJSONObject.optString("share_url");
      }
      if (!paramJSONObject.isNull("top_user")) {
        aj = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("top_user")));
      }
      if (!paramJSONObject.isNull("biz_owner_video")) {
        ak = ((Video)Video.CREATOR.parse(paramJSONObject.getJSONObject("biz_owner_video")));
      }
      if (!paramJSONObject.isNull("addresses")) {
        al = ((YelpAddresses)YelpAddresses.CREATOR.parse(paramJSONObject.getJSONObject("addresses")));
      }
      if (!paramJSONObject.isNull("review")) {
        am = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("review")));
      }
      if (!paramJSONObject.isNull("business_review_excerpt")) {
        an = ((YelpBusinessReview)YelpBusinessReview.CREATOR.parse(paramJSONObject.getJSONObject("business_review_excerpt")));
      }
      if (!paramJSONObject.isNull("deal")) {
        ao = ((YelpDeal)YelpDeal.CREATOR.parse(paramJSONObject.getJSONObject("deal")));
      }
      ap = paramJSONObject.optBoolean("is_closed");
      aq = paramJSONObject.optBoolean("is_moved_to_new_address");
      ar = paramJSONObject.optBoolean("is_recently_moved_from_different_address");
      as = paramJSONObject.optBoolean("is_bookmarked");
      at = paramJSONObject.optBoolean("is_ad_rating_disabled");
      au = paramJSONObject.optBoolean("is_message_to_business_enabled");
      av = paramJSONObject.optBoolean("should_track_offline_attribution");
      aw = paramJSONObject.optDouble("latitude");
      ax = paramJSONObject.optDouble("longitude");
      ay = paramJSONObject.optDouble("avg_rating");
      az = paramJSONObject.optDouble("geo_accuracy");
      aA = paramJSONObject.optInt("review_count");
      aB = paramJSONObject.optInt("price");
      aC = paramJSONObject.optInt("quicktip_count");
      aD = paramJSONObject.optInt("regular_count");
      aE = paramJSONObject.optInt("friend_bookmarked_count");
      aF = paramJSONObject.optInt("user_count");
      aH = paramJSONObject.optInt("photo_count");
      aI = paramJSONObject.optInt("user_latest_review_rating");
      aJ = paramJSONObject.optInt("user_check_in_count");
      aK = paramJSONObject.optInt("video_count");
      return;
      c = new ArrayList();
      break;
      j = Collections.emptyList();
      break label237;
      k = Collections.emptyList();
      break label262;
      l = Collections.emptyList();
      break label289;
      m = Collections.emptyList();
      break label316;
      n = Collections.emptyList();
      break label343;
      o = Collections.emptyList();
      break label370;
      p = Collections.emptyList();
      break label394;
      q = Collections.emptyList();
      break label418;
      r = Collections.emptyList();
      break label442;
      t = Collections.emptyList();
      break label469;
      u = Collections.emptyList();
      break label496;
      v = Collections.emptyList();
      break label523;
    }
  }
  
  public String aA()
  {
    return H;
  }
  
  public String aB()
  {
    return G;
  }
  
  public String aC()
  {
    return F;
  }
  
  public String aD()
  {
    return E;
  }
  
  public SpamAlert aE()
  {
    return D;
  }
  
  public Reservation aF()
  {
    return C;
  }
  
  public RecentFriendCheckIns aG()
  {
    return B;
  }
  
  public PlatformAction aH()
  {
    return A;
  }
  
  public Photo aI()
  {
    return z;
  }
  
  public Offer aJ()
  {
    return y;
  }
  
  public MessageTheBusiness aK()
  {
    return x;
  }
  
  public Menu aL()
  {
    return w;
  }
  
  public List<YelpHoursPair> aM()
  {
    return v;
  }
  
  public List<YelpDeal> aN()
  {
    return u;
  }
  
  public List<YelpBusinessReviewInsight> aO()
  {
    return t;
  }
  
  public List<User> aP()
  {
    return s;
  }
  
  public List<String> aQ()
  {
    return r;
  }
  
  public List<String> aR()
  {
    return p;
  }
  
  public List<SpecialHours> aS()
  {
    return o;
  }
  
  public List<Photo> aT()
  {
    return m;
  }
  
  public List<LocalizedAttribute> aU()
  {
    return l;
  }
  
  public List<Category> aV()
  {
    return k;
  }
  
  public List<Attribution> aW()
  {
    return j;
  }
  
  public HealthData aX()
  {
    return i;
  }
  
  public FromThisBusiness aY()
  {
    return h;
  }
  
  public BusinessSearchRequest.FormatMode aZ()
  {
    return g;
  }
  
  public Video aa()
  {
    return ak;
  }
  
  public String ab()
  {
    return ai;
  }
  
  public String ac()
  {
    return ah;
  }
  
  public String ad()
  {
    return ag;
  }
  
  public String ae()
  {
    return af;
  }
  
  public String af()
  {
    return ad;
  }
  
  public String ag()
  {
    return ac;
  }
  
  public String ah()
  {
    return ab;
  }
  
  public String ai()
  {
    return aa;
  }
  
  public String aj()
  {
    return Z;
  }
  
  public String ak()
  {
    return Y;
  }
  
  public String al()
  {
    return X;
  }
  
  public String am()
  {
    return W;
  }
  
  public String an()
  {
    return V;
  }
  
  public String ao()
  {
    return U;
  }
  
  public String ap()
  {
    return T;
  }
  
  public String aq()
  {
    return S;
  }
  
  public String ar()
  {
    return R;
  }
  
  public String as()
  {
    return Q;
  }
  
  public String at()
  {
    return O;
  }
  
  public String au()
  {
    return N;
  }
  
  public String av()
  {
    return M;
  }
  
  public String aw()
  {
    return L;
  }
  
  public String ax()
  {
    return K;
  }
  
  public String ay()
  {
    return J;
  }
  
  public String az()
  {
    return I;
  }
  
  public ContinueLastOrderInfo ba()
  {
    return e;
  }
  
  public CallToAction bb()
  {
    return d;
  }
  
  public ArrayList<Movie> bc()
  {
    return c;
  }
  
  public AndroidAppAnnotation bd()
  {
    return b;
  }
  
  public AlternateBusinessNames be()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_YelpBusiness)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a(A, A).a(B, B).a(C, C).a(D, D).a(E, E).a(F, F).a(G, G).a(H, H).a(I, I).a(J, J).a(K, K).a(L, L).a(M, M).a(N, N).a(O, O).a(P, P).a(Q, Q).a(R, R).a(S, S).a(T, T).a(U, U).a(V, V).a(W, W).a(X, X).a(Y, Y).a(Z, Z).a(aa, aa).a(ab, ab).a(ac, ac).a(ad, ad).a(ae, ae).a(af, af).a(ag, ag).a(ah, ah).a(ai, ai).a(aj, aj).a(ak, ak).a(al, al).a(am, am).a(an, an).a(ao, ao).a(ap, ap).a(aq, aq).a(ar, ar).a(as, as).a(at, at).a(au, au).a(av, av).a(aw, aw).a(ax, ax).a(ay, ay).a(az, az).a(aA, aA).a(aB, aB).a(aC, aC).a(aD, aD).a(aE, aE).a(aF, aF).a(aG, aG).a(aH, aH).a(aI, aI).a(aJ, aJ).a(aK, aK).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a(A).a(B).a(C).a(D).a(E).a(F).a(G).a(H).a(I).a(J).a(K).a(L).a(M).a(N).a(O).a(P).a(Q).a(R).a(S).a(T).a(U).a(V).a(W).a(X).a(Y).a(Z).a(aa).a(ab).a(ac).a(ad).a(ae).a(af).a(ag).a(ah).a(ai).a(aj).a(ak).a(al).a(am).a(an).a(ao).a(ap).a(aq).a(ar).a(as).a(at).a(au).a(av).a(aw).a(ax).a(ay).a(az).a(aA).a(aB).a(aC).a(aD).a(aE).a(aF).a(aG).a(aH).a(aI).a(aJ).a(aK).a();
  }
  
  public Date q()
  {
    return f;
  }
  
  public boolean r()
  {
    return ap;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
    paramParcel.writeList(c);
    paramParcel.writeParcelable(d, 0);
    paramParcel.writeParcelable(e, 0);
    if (f == null) {}
    for (long l1 = -2147483648L;; l1 = f.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeSerializable(g);
      paramParcel.writeParcelable(h, 0);
      paramParcel.writeParcelable(i, 0);
      paramParcel.writeList(l);
      paramParcel.writeList(j);
      paramParcel.writeList(k);
      paramParcel.writeList(m);
      paramParcel.writeList(n);
      paramParcel.writeList(o);
      paramParcel.writeStringList(p);
      paramParcel.writeStringList(q);
      paramParcel.writeStringList(r);
      paramParcel.writeList(s);
      paramParcel.writeList(t);
      paramParcel.writeList(u);
      paramParcel.writeList(v);
      paramParcel.writeParcelable(w, 0);
      paramParcel.writeParcelable(x, 0);
      paramParcel.writeParcelable(y, 0);
      paramParcel.writeParcelable(z, 0);
      paramParcel.writeParcelable(A, 0);
      paramParcel.writeParcelable(B, 0);
      paramParcel.writeParcelable(C, 0);
      paramParcel.writeParcelable(D, 0);
      paramParcel.writeValue(E);
      paramParcel.writeValue(F);
      paramParcel.writeValue(G);
      paramParcel.writeValue(H);
      paramParcel.writeValue(I);
      paramParcel.writeValue(J);
      paramParcel.writeValue(K);
      paramParcel.writeValue(L);
      paramParcel.writeValue(M);
      paramParcel.writeValue(N);
      paramParcel.writeValue(O);
      paramParcel.writeValue(P);
      paramParcel.writeValue(Q);
      paramParcel.writeValue(R);
      paramParcel.writeValue(S);
      paramParcel.writeValue(T);
      paramParcel.writeValue(U);
      paramParcel.writeValue(V);
      paramParcel.writeValue(W);
      paramParcel.writeValue(X);
      paramParcel.writeValue(Y);
      paramParcel.writeValue(Z);
      paramParcel.writeValue(aa);
      paramParcel.writeValue(ab);
      paramParcel.writeValue(ac);
      paramParcel.writeValue(ad);
      paramParcel.writeValue(ae);
      paramParcel.writeValue(af);
      paramParcel.writeValue(ag);
      paramParcel.writeValue(ah);
      paramParcel.writeValue(ai);
      paramParcel.writeParcelable(aj, 0);
      paramParcel.writeParcelable(ak, 0);
      paramParcel.writeParcelable(al, 0);
      paramParcel.writeParcelable(am, 0);
      paramParcel.writeParcelable(an, 0);
      paramParcel.writeParcelable(ao, 0);
      paramParcel.writeBooleanArray(new boolean[] { ap, aq, ar, as, at, au, av });
      paramParcel.writeDouble(aw);
      paramParcel.writeDouble(ax);
      paramParcel.writeDouble(ay);
      paramParcel.writeDouble(az);
      paramParcel.writeInt(aA);
      paramParcel.writeInt(aB);
      paramParcel.writeInt(aC);
      paramParcel.writeInt(aD);
      paramParcel.writeInt(aE);
      paramParcel.writeInt(aF);
      paramParcel.writeInt(aG);
      paramParcel.writeInt(aH);
      paramParcel.writeInt(aI);
      paramParcel.writeInt(aJ);
      paramParcel.writeInt(aK);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */