package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.c;
import com.yelp.android.appdata.webrequests.co;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class User
  extends _User
  implements Parcelable, DisplayableAsUserBadge
{
  public static final a<User> CREATOR = new User.1();
  private RankTitle[] V = new RankTitle[RankTitle.Rank.values().length];
  private YelpCheckIn W;
  private User.Gender X;
  private Map<String, String> Y = Collections.emptyMap();
  private User.EliteYear[] Z = new User.EliteYear[0];
  private FeatureSet aa = new FeatureSet();
  private boolean ab;
  private int ac;
  
  protected User()
  {
    x = -1;
  }
  
  public User(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, boolean paramBoolean, int paramInt1, int paramInt2, String paramString6)
  {
    this();
    f = paramString1;
    y = paramInt1;
    A = paramInt2;
    paramString1 = new ArrayList();
    paramString1.add(new Photo.TempPhoto(paramString6, null));
    b = paramString1;
    X = User.Gender.MALE;
    x = -1;
    k = paramString2;
    n = paramString3;
    ab = paramBoolean;
    g = paramString4;
    h = paramString5;
  }
  
  public static <T extends DisplayableAsUserBadge> T a(List<T> paramList)
  {
    String str = AppData.b().q().a();
    if (TextUtils.isEmpty(str)) {
      return null;
    }
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      DisplayableAsUserBadge localDisplayableAsUserBadge = (DisplayableAsUserBadge)paramList.next();
      if (str.equals(localDisplayableAsUserBadge.i())) {
        return localDisplayableAsUserBadge;
      }
    }
    return null;
  }
  
  public static boolean a(int[] paramArrayOfInt)
  {
    boolean bool2 = false;
    int j = AppData.b().f().ab();
    int k = paramArrayOfInt.length;
    int i = 0;
    for (;;)
    {
      boolean bool1 = bool2;
      if (i < k)
      {
        if (paramArrayOfInt[i] == j) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public static Date j()
  {
    Calendar localCalendar = Calendar.getInstance();
    localCalendar.set(1, AppData.b().f().ab());
    return localCalendar.getTime();
  }
  
  public RankTitle a(RankTitle.Rank paramRank)
  {
    return V[paramRank.ordinal()];
  }
  
  public String a()
  {
    return ad();
  }
  
  public void a(int paramInt)
  {
    F += paramInt;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    V = ((RankTitle[])paramParcel.createTypedArray(RankTitle.CREATOR));
    X = User.Gender.values()[paramParcel.readInt()];
    W = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
    ArrayList localArrayList1 = new ArrayList();
    ArrayList localArrayList2 = new ArrayList();
    paramParcel.readStringList(localArrayList1);
    paramParcel.readStringList(localArrayList2);
    Y = Collections.emptyMap();
    int j = localArrayList1.size();
    int i = 0;
    while (i < j)
    {
      if (Y.isEmpty()) {
        Y = new HashMap();
      }
      Y.put(localArrayList1.get(i), localArrayList2.get(i));
      i += 1;
    }
    if (!Y.isEmpty()) {
      Y = Collections.unmodifiableMap(Y);
    }
    Z = ((User.EliteYear[])paramParcel.createTypedArray(User.EliteYear.CREATOR));
    aa = ((FeatureSet)paramParcel.readParcelable(FeatureSet.class.getClassLoader()));
    ab = paramParcel.createBooleanArray()[0];
    ac = paramParcel.readInt();
  }
  
  public void a(YelpCheckIn paramYelpCheckIn)
  {
    W = paramYelpCheckIn;
    if (paramYelpCheckIn != null) {
      paramYelpCheckIn.j();
    }
  }
  
  public void a(String paramString)
  {
    o = paramString;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    Object localObject1 = b.iterator();
    Object localObject2;
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Photo)((Iterator)localObject1).next();
      g = new Passport();
      g.c = f;
    }
    localObject1 = paramJSONObject.optJSONArray("location_rank_titles");
    int j;
    int i;
    Object localObject3;
    if (localObject1 != null)
    {
      j = ((JSONArray)localObject1).length();
      i = 0;
      if (i < j)
      {
        localObject3 = ((JSONArray)localObject1).optJSONObject(i);
        if (localObject3 != null)
        {
          localObject2 = RankTitle.Rank.rankForString(((JSONObject)localObject3).optString("title", null));
          if (localObject2 != null) {
            break label131;
          }
        }
        for (;;)
        {
          i += 1;
          break;
          label131:
          localObject3 = new RankTitle(JsonUtil.getStringList(((JSONObject)localObject3).optJSONArray("location_names")), ((JSONObject)localObject3).optInt("location_count", 0));
          V[localObject2.ordinal()] = localObject3;
        }
      }
    }
    if ("f".equalsIgnoreCase(q)) {
      X = User.Gender.FEMALE;
    }
    while (!paramJSONObject.isNull("profile_bio"))
    {
      Y = new HashMap();
      paramJSONObject = paramJSONObject.getJSONObject("profile_bio");
      localObject1 = paramJSONObject.keys();
      for (;;)
      {
        if (((Iterator)localObject1).hasNext())
        {
          localObject2 = (String)((Iterator)localObject1).next();
          localObject3 = paramJSONObject.getString((String)localObject2);
          Y.put(localObject2, localObject3);
          continue;
          X = User.Gender.MALE;
          break;
        }
      }
      if ((d != null) && (!d.isEmpty())) {
        Y.put(AppData.b().getString(2131166673), d.get(0));
      }
      if (!Y.isEmpty()) {
        Y = Collections.unmodifiableMap(Y);
      }
    }
    paramJSONObject = B();
    if (paramJSONObject != null)
    {
      Arrays.sort(paramJSONObject);
      Z = new User.EliteYear[paramJSONObject.length];
      j = paramJSONObject.length;
      i = 0;
      while (i < j)
      {
        Z[i] = new User.EliteYear(paramJSONObject[i], User.EliteYear.TYPE.getBadgeByYear(i + 1));
        i += 1;
      }
      ab = a(paramJSONObject);
    }
    aa.a(c);
  }
  
  public void a(boolean paramBoolean)
  {
    w = paramBoolean;
  }
  
  public boolean a(FeatureSet.Feature paramFeature)
  {
    return aa.a(paramFeature);
  }
  
  public int b(RankTitle.Rank paramRank)
  {
    paramRank = a(paramRank);
    if (paramRank == null) {
      return 0;
    }
    return paramRank.a();
  }
  
  public void b(int paramInt)
  {
    ac = paramInt;
  }
  
  public void b(boolean paramBoolean)
  {
    u = paramBoolean;
  }
  
  public String c()
  {
    if ((b != null) && (b.size() > 0)) {
      return ((Photo)b.get(0)).f();
    }
    return null;
  }
  
  public void c(int paramInt)
  {
    O += paramInt;
  }
  
  public void c(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      S = i;
      return;
    }
  }
  
  public void d(int paramInt)
  {
    A += paramInt;
  }
  
  public void d(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      R = i;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void e(int paramInt)
  {
    y += paramInt;
  }
  
  public void e(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 1;; i = 0)
    {
      T = i;
      return;
    }
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
        if (!(paramObject instanceof User)) {
          return false;
        }
        paramObject = (User)paramObject;
        if (f != null) {
          break;
        }
      } while (f == null);
      return false;
    } while (f.equals(f));
    return false;
  }
  
  public void f(int paramInt)
  {
    G += paramInt;
  }
  
  public void f(boolean paramBoolean)
  {
    v = paramBoolean;
  }
  
  public void g(int paramInt)
  {
    N = paramInt;
  }
  
  public boolean h()
  {
    return ab;
  }
  
  public int hashCode()
  {
    if (f == null) {}
    for (int i = 0;; i = f.hashCode()) {
      return i + 31;
    }
  }
  
  public String i()
  {
    return f;
  }
  
  public int k()
  {
    return ac;
  }
  
  public void l()
  {
    A -= 1;
  }
  
  public int l_()
  {
    return F;
  }
  
  public void m()
  {
    H -= 1;
  }
  
  public boolean n()
  {
    return x == 0;
  }
  
  public int n_()
  {
    return F + O;
  }
  
  public boolean o()
  {
    return S == 1;
  }
  
  public boolean p()
  {
    return R == 1;
  }
  
  public boolean q()
  {
    return T == 1;
  }
  
  public YelpCheckIn r()
  {
    return W;
  }
  
  public Date s()
  {
    return a;
  }
  
  public Map<String, String> t()
  {
    return Y;
  }
  
  public List<User.EliteYear> u()
  {
    return Arrays.asList(Z);
  }
  
  public User.EliteYear v()
  {
    if (Z.length == 0) {
      return null;
    }
    return (User.EliteYear)Collections.max(Arrays.asList(Z));
  }
  
  public boolean w()
  {
    return X == User.Gender.MALE;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeTypedArray(V, 0);
    paramParcel.writeInt(X.ordinal());
    paramParcel.writeParcelable(W, paramInt);
    ArrayList localArrayList1 = new ArrayList(Y.keySet());
    ArrayList localArrayList2 = new ArrayList(Y.values());
    paramParcel.writeStringList(localArrayList1);
    paramParcel.writeStringList(localArrayList2);
    paramParcel.writeTypedArray(Z, paramInt);
    paramParcel.writeParcelable(aa, paramInt);
    paramParcel.writeBooleanArray(new boolean[] { ab });
    paramParcel.writeInt(ac);
  }
  
  public int x()
  {
    return b(RankTitle.Rank.REGULAR);
  }
  
  public void y()
  {
    D -= 1;
  }
  
  public void z()
  {
    W = null;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */