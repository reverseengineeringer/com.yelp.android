package com.yelp.android.serializable;

import android.content.Context;
import android.content.res.Resources;
import android.location.Address;
import android.location.Location;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.maps.model.LatLng;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.BaseYelpApplication;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.FormatMode;
import com.yelp.android.ui.activities.reviews.ReviewState;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.StringUtils.Format;
import com.yelp.android.util.i;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.TimeZone;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class YelpBusiness
  extends _YelpBusiness
  implements f, com.yelp.android.ui.panels.businesssearch.a
{
  public static final JsonParser.DualCreator<YelpBusiness> CREATOR = new YelpBusiness.1();
  private String aL;
  private long aM = System.currentTimeMillis();
  private TimeZone aN = TimeZone.getDefault();
  private JSONObject aO;
  private String aP;
  
  private String a(JSONArray paramJSONArray)
    throws JSONException
  {
    int j;
    if (paramJSONArray != null)
    {
      j = paramJSONArray.length();
      if (j != 0) {}
    }
    else
    {
      return null;
    }
    StringBuilder localStringBuilder = new StringBuilder(100);
    int i = 0;
    if (i < j)
    {
      Object localObject = paramJSONArray.getJSONArray(i);
      String str = ((JSONArray)localObject).getString(1);
      localObject = JsonUtil.getStringArray(((JSONArray)localObject).getJSONArray(2));
      if (localObject.length > 0) {
        localStringBuilder.append(String.format("%s (%s)", new Object[] { str, TextUtils.join(",", (Object[])localObject) }));
      }
      for (;;)
      {
        if (i < j - 1) {
          localStringBuilder.append("\n");
        }
        i += 1;
        break;
        localStringBuilder.append(str);
      }
    }
    return localStringBuilder.toString();
  }
  
  public static ArrayList<YelpBusiness> a(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
    throws JSONException
  {
    int j = paramJSONArray.length();
    ArrayList localArrayList = new ArrayList(j);
    int i = 0;
    while (i < j)
    {
      YelpBusiness localYelpBusiness = (YelpBusiness)CREATOR.parse(paramJSONArray.getJSONObject(i));
      localYelpBusiness.a(paramString);
      if (g == null) {
        g = paramFormatMode;
      }
      localArrayList.add(localYelpBusiness);
      i += 1;
    }
    return localArrayList;
  }
  
  public static HashMap<String, YelpBusiness> a(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode, boolean paramBoolean)
    throws JSONException
  {
    int j = paramJSONArray.length();
    HashMap localHashMap = new HashMap(j);
    int i = 0;
    while (i < j)
    {
      if ((!paramBoolean) || (!paramJSONArray.isNull(i)))
      {
        YelpBusiness localYelpBusiness = (YelpBusiness)CREATOR.parse(paramJSONArray.getJSONObject(i));
        localYelpBusiness.a(paramString);
        if (g == null) {
          g = paramFormatMode;
        }
        localHashMap.put(localYelpBusiness.aD(), localYelpBusiness);
      }
      i += 1;
    }
    return localHashMap;
  }
  
  public static HashMap<String, YelpBusiness> b(JSONArray paramJSONArray, String paramString, BusinessSearchRequest.FormatMode paramFormatMode)
    throws JSONException
  {
    return a(paramJSONArray, paramString, paramFormatMode, false);
  }
  
  private void bf()
  {
    if ((al != null) && (al.c() != null)) {
      return;
    }
    String str1 = bg();
    String str2 = bh();
    al = new YelpAddresses(new YelpAddress(i(), str1, str2), null);
  }
  
  private String bg()
  {
    Object localObject;
    if (LocaleSettings.d(aw()))
    {
      localObject = new ArrayList();
      if ((TextUtils.isEmpty(J)) && (p.size() > 0)) {
        ((ArrayList)localObject).add(p.get(0));
      }
      for (;;)
      {
        if (!TextUtils.isEmpty(F)) {
          ((ArrayList)localObject).add(F);
        }
        if (!TextUtils.isEmpty(G)) {
          ((ArrayList)localObject).add(G);
        }
        if (!TextUtils.isEmpty(H)) {
          ((ArrayList)localObject).add(H);
        }
        return TextUtils.join("", (Iterable)localObject);
        ((ArrayList)localObject).add(J);
      }
    }
    if (!TextUtils.isEmpty(F))
    {
      localObject = J;
      if (p.size() > 0) {
        localObject = (String)p.get(0);
      }
      if (localObject != null) {
        return String.format("%s, %s", new Object[] { F, localObject });
      }
      return F;
    }
    if (p.size() > 0) {
      return (String)p.get(0);
    }
    return J;
  }
  
  private String bh()
  {
    boolean bool = LocaleSettings.d(aw());
    ArrayList localArrayList = new ArrayList(4);
    Object localObject = aC();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = aB();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = aA();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      localArrayList.add(localObject);
    }
    localObject = av();
    if (!TextUtils.isEmpty((CharSequence)localObject)) {
      if (bool) {
        localArrayList.add(0, localObject);
      }
    }
    String str;
    while (bool)
    {
      return TextUtils.join("\n", localArrayList);
      localArrayList.add(localObject);
      continue;
      if (!bool)
      {
        str = ay();
        if (TextUtils.isEmpty(str)) {
          break label216;
        }
        localObject = str;
      }
    }
    label216:
    for (;;)
    {
      str = az();
      if (!TextUtils.isEmpty(str)) {
        TextUtils.concat(new CharSequence[] { localObject, ", ", str });
      }
      str = ax();
      if (TextUtils.isEmpty(str)) {
        break;
      }
      TextUtils.concat(new CharSequence[] { localObject, " ", str });
      break;
      return TextUtils.join(", ", localArrayList);
    }
  }
  
  public int A()
  {
    return aH + aK;
  }
  
  public int B()
  {
    if (p()) {
      return 2130838393;
    }
    return 2130838380;
  }
  
  public boolean C()
  {
    return (aw != 0.0D) || (ax != 0.0D);
  }
  
  public boolean D()
  {
    Iterator localIterator = n.iterator();
    while (localIterator.hasNext()) {
      if ("hot_and_new".equals(((SearchResultAnnotation)localIterator.next()).a())) {
        return true;
      }
    }
    return false;
  }
  
  public double a(Location paramLocation)
  {
    if ((Double.isNaN(Q())) || (Double.isNaN(R())) || (paramLocation == null)) {
      return NaN.0D;
    }
    return i.a(R(), Q(), paramLocation.getLatitude(), paramLocation.getLongitude());
  }
  
  public Uri a(Context paramContext)
  {
    return new Uri.Builder().scheme("http").authority(paramContext.getString(2131166822)).path(paramContext.getString(2131166923)).appendPath(T).build();
  }
  
  public YelpBusiness a()
  {
    return this;
  }
  
  public String a(Context paramContext, StringUtils.Format paramFormat)
  {
    return a(AppData.b().r().c(), paramContext, paramFormat);
  }
  
  public String a(Location paramLocation, Context paramContext, StringUtils.Format paramFormat)
  {
    if ((!p()) || (Double.isNaN(Q())) || (Double.isNaN(R())) || (!i.a(paramLocation))) {
      return null;
    }
    return StringUtils.a(a(paramLocation), paramLocation.getAccuracy(), paramFormat, paramContext);
  }
  
  public void a(double paramDouble)
  {
    az = paramDouble;
  }
  
  public void a(int paramInt)
  {
    aI = paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    aL = paramParcel.readString();
    aP = paramParcel.readString();
    aM = paramParcel.readLong();
    aN = TimeZone.getTimeZone(paramParcel.readString());
    paramParcel = paramParcel.readString();
    if (!TextUtils.isEmpty(paramParcel)) {}
    try
    {
      aO = new JSONObject(paramParcel);
      return;
    }
    catch (JSONException paramParcel) {}
  }
  
  public void a(LatLng paramLatLng)
  {
    aw = a;
    ax = b;
  }
  
  public void a(ContinueLastOrderInfo paramContinueLastOrderInfo)
  {
    e = paramContinueLastOrderInfo;
  }
  
  public void a(Offer paramOffer)
  {
    y = paramOffer;
  }
  
  public void a(Reservation paramReservation)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(aL);
      localJSONObject.remove("reservation");
      if (paramReservation != null) {
        localJSONObject.put("reservation", paramReservation.c());
      }
      aL = String.valueOf(localJSONObject);
      C = paramReservation;
      return;
    }
    catch (JSONException paramReservation)
    {
      BaseYelpApplication.a("YelpBusiness", "Got a json exception writing the Reservation, %s", new Object[] { paramReservation });
    }
  }
  
  public void a(YelpBusinessReview paramYelpBusinessReview)
  {
    an = paramYelpBusinessReview;
  }
  
  public void a(ReviewState paramReviewState)
  {
    ae = paramReviewState.getDescription();
  }
  
  public void a(String paramString)
  {
    aP = paramString;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (!paramJSONObject.isNull("transit")) {
      V = a(paramJSONObject.getJSONArray("transit"));
    }
    Object localObject1 = paramJSONObject.optJSONObject("recent_check_in_friends");
    if (localObject1 != null)
    {
      paramJSONObject.remove("recent_check_in_friends");
      aG = ((JSONObject)localObject1).optInt("count");
      Object localObject2 = JsonUtil.parseJsonList(((JSONObject)localObject1).getJSONArray("users"), YelpCheckIn.CREATOR);
      localObject1 = new ArrayList(((ArrayList)localObject2).size());
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        YelpCheckIn localYelpCheckIn = (YelpCheckIn)((Iterator)localObject2).next();
        User localUser = localYelpCheckIn.y();
        if (localUser != null)
        {
          localUser.a(localYelpCheckIn);
          ((ArrayList)localObject1).add(localUser);
        }
      }
      s = ((List)localObject1);
      if (!paramJSONObject.isNull("fmode")) {
        if (paramJSONObject.optInt("fmode", 0) != 0) {
          break label252;
        }
      }
    }
    label252:
    for (g = BusinessSearchRequest.FormatMode.FULL;; g = BusinessSearchRequest.FormatMode.SHORT)
    {
      aO = paramJSONObject.optJSONObject("dfp_ad_params");
      if (Y == null) {
        Y = "";
      }
      aN = TimeZone.getTimeZone(paramJSONObject.optString("timezone", TimeZone.getDefault().getID()));
      paramJSONObject.put("local_ads", new JSONArray());
      aL = paramJSONObject.toString();
      return;
      s = Collections.emptyList();
      break;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      JSONObject localJSONObject = new JSONObject(aL);
      localJSONObject.remove("is_bookmarked");
      localJSONObject.put("is_bookmarked", paramBoolean);
      aL = String.valueOf(localJSONObject);
      as = paramBoolean;
      return;
    }
    catch (JSONException localJSONException)
    {
      BaseYelpApplication.a("YelpBusiness", "Json Exception [%s]", new Object[] { localJSONException });
    }
  }
  
  public LatLng b()
  {
    return new LatLng(R(), Q());
  }
  
  public String b(Context paramContext)
  {
    Object localObject = be();
    if (localObject == null) {
      return "";
    }
    String str1 = z();
    ArrayList localArrayList = new ArrayList();
    if (!S.equalsIgnoreCase(str1)) {
      localArrayList.add(S);
    }
    String str2 = ((AlternateBusinessNames)localObject).d();
    if ((!TextUtils.isEmpty(str2)) && (!str1.equalsIgnoreCase(str2)) && (!StringUtils.a(localArrayList, str2))) {
      localArrayList.add(str2);
    }
    localObject = ((AlternateBusinessNames)localObject).c();
    if ((!TextUtils.isEmpty((CharSequence)localObject)) && (!str1.equalsIgnoreCase((String)localObject)) && (!StringUtils.a(localArrayList, (String)localObject))) {
      localArrayList.add(localObject);
    }
    return TextUtils.join(paramContext.getResources().getString(2131166943), localArrayList);
  }
  
  public String c()
  {
    return aL;
  }
  
  public String c(Context paramContext)
  {
    String str2 = z();
    String str1 = str2;
    if (r())
    {
      if (W()) {
        str1 = paramContext.getString(2131165536, new Object[] { str2 });
      }
    }
    else {
      return str1;
    }
    if (q() != null) {
      return paramContext.getString(2131165543, new Object[] { str2 });
    }
    if (!TextUtils.isEmpty(ag())) {
      return paramContext.getString(2131165542, new Object[] { str2 });
    }
    return paramContext.getString(2131165533, new Object[] { str2 });
  }
  
  public TimeZone d()
  {
    return aN;
  }
  
  public String e()
  {
    if (!k.isEmpty()) {
      return ((Category)k.get(0)).a();
    }
    return "";
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
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (YelpBusiness)paramObject;
        if (E != null) {
          break;
        }
      } while (E == null);
      return false;
    } while (E.equals(E));
    return false;
  }
  
  public Address f()
  {
    Address localAddress = new Address(new Locale(Locale.getDefault().getLanguage(), aw()));
    com.yelp.android.ui.activities.mutatebiz.a.a(localAddress, new String[] { aC(), aB(), aA(), av() });
    localAddress.setLongitude(Q());
    localAddress.setLatitude(R());
    localAddress.setCountryCode(aw());
    localAddress.setAdminArea(az());
    localAddress.setLocality(av());
    localAddress.setPhone(as());
    localAddress.setPostalCode(ax());
    localAddress.setSubLocality(TextUtils.join(", ", p));
    localAddress.setUrl(al());
    return localAddress;
  }
  
  public boolean g()
  {
    return (aE() != null) && ("fraud_warning".equals(aE().b()));
  }
  
  public String h()
  {
    if (al == null) {
      bf();
    }
    String str = al.c().c();
    if (!TextUtils.isEmpty(str)) {
      return str;
    }
    if ((TextUtils.isEmpty(str)) && (al.b() != null)) {
      return al.b().c();
    }
    return "";
  }
  
  public int hashCode()
  {
    if (E == null) {}
    for (int i = 0;; i = E.hashCode()) {
      return i + 31;
    }
  }
  
  public String i()
  {
    Object localObject3 = null;
    Object localObject1 = aR();
    String str;
    Object localObject2;
    if (((List)localObject1).isEmpty())
    {
      localObject1 = null;
      str = at();
      localObject2 = AppData.b();
      if ((TextUtils.isEmpty(str)) || (TextUtils.isEmpty((CharSequence)localObject1))) {
        break label112;
      }
      if (!str.contains("&")) {
        break label91;
      }
      localObject2 = ((Context)localObject2).getString(2131166327, new Object[] { str, localObject1 });
    }
    label91:
    label112:
    do
    {
      do
      {
        return (String)localObject2;
        localObject1 = (String)((List)localObject1).get(0);
        break;
        return ((Context)localObject2).getString(2131165742, new Object[] { str, localObject1 });
        if ((!TextUtils.isEmpty(str)) && (TextUtils.isEmpty((CharSequence)localObject1)))
        {
          if (str.contains("&")) {
            return ((Context)localObject2).getString(2131166328, new Object[] { str });
          }
          return ((Context)localObject2).getString(2131165743, new Object[] { str });
        }
        localObject2 = localObject3;
      } while (!TextUtils.isEmpty(str));
      localObject2 = localObject3;
    } while (TextUtils.isEmpty((CharSequence)localObject1));
    return (String)localObject1;
  }
  
  public String j()
  {
    StringBuilder localStringBuilder = new StringBuilder(100);
    String str = aC();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = ay();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = az();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    str = ax();
    if (!TextUtils.isEmpty(str))
    {
      localStringBuilder.append(str);
      localStringBuilder.append(", ");
    }
    if (localStringBuilder.length() > 0) {
      localStringBuilder.delete(localStringBuilder.length() - 2, localStringBuilder.length());
    }
    return localStringBuilder.toString();
  }
  
  public String k()
  {
    if (al == null) {
      bf();
    }
    YelpAddress localYelpAddress1 = Z().b();
    YelpAddress localYelpAddress2 = Z().c();
    if (localYelpAddress1 == null) {
      return localYelpAddress2.b();
    }
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(localYelpAddress2.c());
    localArrayList.add(localYelpAddress1.c());
    localArrayList.add(av());
    localArrayList.removeAll(Collections.singleton(""));
    return TextUtils.join("\n", localArrayList);
  }
  
  public String l()
  {
    if (al == null) {
      bf();
    }
    String str2 = al.c().d();
    YelpAddress localYelpAddress = al.b();
    String str1 = str2;
    if (TextUtils.isEmpty(str2))
    {
      str1 = str2;
      if (localYelpAddress != null)
      {
        str1 = str2;
        if (!TextUtils.isEmpty(localYelpAddress.d())) {
          str1 = localYelpAddress.d();
        }
      }
    }
    return str1;
  }
  
  public String m()
  {
    String str1 = k();
    String str2 = l();
    if (TextUtils.isEmpty(str1)) {
      return str2;
    }
    if (TextUtils.isEmpty(str2)) {
      return str1;
    }
    return String.valueOf(TextUtils.concat(new CharSequence[] { str1, "\n", str2 }));
  }
  
  public String n()
  {
    return aP;
  }
  
  public String o()
  {
    StringBuilder localStringBuilder = new StringBuilder(256);
    localStringBuilder.append(S).append('\n');
    if (!TextUtils.isEmpty(P)) {
      localStringBuilder.append(P).append('\n');
    }
    if (!TextUtils.isEmpty(Q)) {
      localStringBuilder.append(Q).append('\n');
    }
    return localStringBuilder.toString();
  }
  
  public boolean p()
  {
    return O() >= 6.0D;
  }
  
  public Date q()
  {
    Date localDate = super.q();
    if ((localDate != null) && (localDate.after(new Date()))) {
      return localDate;
    }
    return null;
  }
  
  public boolean r()
  {
    return (super.r()) || (q() != null);
  }
  
  public void s()
  {
    aC += 1;
  }
  
  public void t()
  {
    aC -= 1;
  }
  
  public void u()
  {
    aA -= 1;
  }
  
  public JSONObject v()
  {
    return aO;
  }
  
  public ReviewState w()
  {
    return ReviewState.fromDescription(ae);
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(aL);
    paramParcel.writeString(aP);
    paramParcel.writeLong(aM);
    paramParcel.writeString(aN.getID());
    if (aO != null)
    {
      paramParcel.writeString(aO.toString());
      return;
    }
    paramParcel.writeString("");
  }
  
  public Reservation.Provider x()
  {
    return Reservation.Provider.getProvider(af);
  }
  
  public String y()
  {
    if (TextUtils.isEmpty(ak())) {
      return al();
    }
    return ak();
  }
  
  public String z()
  {
    String str2 = aw();
    AlternateBusinessNames localAlternateBusinessNames = be();
    Object localObject;
    if ((TextUtils.isEmpty(str2)) || (localAlternateBusinessNames == null)) {
      localObject = S;
    }
    String str1;
    do
    {
      LocaleSettings localLocaleSettings;
      do
      {
        do
        {
          return (String)localObject;
          localLocaleSettings = AppData.b().g();
          if ((!LocaleSettings.a(str2)) || (localLocaleSettings.i())) {
            break;
          }
          str1 = localAlternateBusinessNames.c();
          localObject = str1;
        } while (!TextUtils.isEmpty(str1));
        str1 = localAlternateBusinessNames.b();
        localObject = str1;
      } while (!TextUtils.isEmpty(str1));
      if ((!LocaleSettings.c(str2)) || (localLocaleSettings.j())) {
        break;
      }
      str1 = localAlternateBusinessNames.d();
      if (!localLocaleSettings.k()) {
        break;
      }
      localObject = str1;
    } while (!TextUtils.isEmpty(str1));
    return S;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusiness
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */