package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _User
  implements Parcelable
{
  protected int A;
  protected int B;
  protected int C;
  protected int D;
  protected int E;
  protected int F;
  protected int G;
  protected int H;
  protected int I;
  protected int J;
  protected int K;
  protected int L;
  protected int M;
  protected int N;
  protected int O;
  protected int P;
  protected int Q;
  protected int R;
  protected int S;
  protected int T;
  protected int[] U;
  protected Date a;
  protected List<Photo> b;
  protected List<String> c;
  protected List<String> d;
  protected PersonalStats e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected String m;
  protected String n;
  protected String o;
  protected String p;
  protected String q;
  protected String r;
  protected YelpCheckIn s;
  protected boolean t;
  protected boolean u;
  protected boolean v;
  protected boolean w;
  protected int x;
  protected int y;
  protected int z;
  
  public JSONObject A()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("member_since", a.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Object localObject;
    if (b != null)
    {
      localJSONArray = new JSONArray();
      localObject = b.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Photo)((Iterator)localObject).next()).w());
      }
      localJSONObject.put("photos", localJSONArray);
    }
    if (c != null)
    {
      localJSONArray = new JSONArray();
      localObject = c.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("disabled_features", localJSONArray);
    }
    if (d != null)
    {
      localJSONArray = new JSONArray();
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("loves", localJSONArray);
    }
    if (e != null) {
      localJSONObject.put("personal_stats", e.a());
    }
    if (f != null) {
      localJSONObject.put("id", f);
    }
    if (g != null) {
      localJSONObject.put("name", g);
    }
    if (h != null) {
      localJSONObject.put("name_without_period", h);
    }
    if (i != null) {
      localJSONObject.put("name_with_nickname", i);
    }
    if (j != null) {
      localJSONObject.put("third_party_confirmation_source", j);
    }
    if (k != null) {
      localJSONObject.put("first_name", k);
    }
    if (l != null) {
      localJSONObject.put("nickname", l);
    }
    if (m != null) {
      localJSONObject.put("last_initial", m);
    }
    if (n != null) {
      localJSONObject.put("last_name", n);
    }
    if (o != null) {
      localJSONObject.put("location", o);
    }
    if (p != null) {
      localJSONObject.put("tagline", p);
    }
    if (q != null) {
      localJSONObject.put("gender", q);
    }
    if (r != null) {
      localJSONObject.put("share_url", r);
    }
    if (s != null) {
      localJSONObject.put("check_in", s.t());
    }
    localJSONObject.put("is_friend", t);
    localJSONObject.put("is_friend_request_pending", u);
    localJSONObject.put("is_following", v);
    localJSONObject.put("alerts", w);
    localJSONObject.put("fmode", x);
    localJSONObject.put("friend_count", y);
    localJSONObject.put("check_in_offer_count", z);
    localJSONObject.put("review_count", A);
    localJSONObject.put("bookmark_count", B);
    localJSONObject.put("check_in_count", C);
    localJSONObject.put("quicktip_count", D);
    localJSONObject.put("badge_count", E);
    localJSONObject.put("business_photo_count", F);
    localJSONObject.put("thanx_count", G);
    localJSONObject.put("review_draft_count", H);
    localJSONObject.put("user_photo_count", I);
    localJSONObject.put("deal_count", J);
    localJSONObject.put("first_to_review_count", K);
    localJSONObject.put("first_to_tip_count", L);
    localJSONObject.put("tip_of_the_day_count", M);
    localJSONObject.put("unread_message_count", N);
    localJSONObject.put("video_count", O);
    localJSONObject.put("subscribed_events_count", P);
    localJSONObject.put("following_count", Q);
    localJSONObject.put("twitter_status", R);
    localJSONObject.put("facebook_status", S);
    localJSONObject.put("line_status", T);
    if (U != null)
    {
      localJSONArray = new JSONArray();
      localObject = U;
      int i2 = localObject.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localJSONArray.put(localObject[i1]);
        i1 += 1;
      }
      localJSONObject.put("elite_years", localJSONArray);
    }
    return localJSONObject;
  }
  
  public int[] B()
  {
    return U;
  }
  
  public int C()
  {
    return Q;
  }
  
  public int D()
  {
    return P;
  }
  
  public int E()
  {
    return N;
  }
  
  public int F()
  {
    return M;
  }
  
  public int G()
  {
    return L;
  }
  
  public int H()
  {
    return K;
  }
  
  public int I()
  {
    return J;
  }
  
  public int J()
  {
    return I;
  }
  
  public int K()
  {
    return H;
  }
  
  public int L()
  {
    return G;
  }
  
  public int M()
  {
    return F;
  }
  
  public int N()
  {
    return E;
  }
  
  public int O()
  {
    return D;
  }
  
  public int P()
  {
    return C;
  }
  
  public int Q()
  {
    return B;
  }
  
  public int R()
  {
    return z;
  }
  
  public boolean S()
  {
    return w;
  }
  
  public boolean T()
  {
    return v;
  }
  
  public boolean U()
  {
    return u;
  }
  
  public boolean V()
  {
    return t;
  }
  
  public String W()
  {
    return r;
  }
  
  public String X()
  {
    return p;
  }
  
  public String Y()
  {
    return o;
  }
  
  public String Z()
  {
    return k;
  }
  
  public void a(Parcel paramParcel)
  {
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      a = new Date(l1);
    }
    b = paramParcel.readArrayList(Photo.class.getClassLoader());
    c = paramParcel.createStringArrayList();
    d = paramParcel.createStringArrayList();
    e = ((PersonalStats)paramParcel.readParcelable(PersonalStats.class.getClassLoader()));
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((String)paramParcel.readValue(String.class.getClassLoader()));
    n = ((String)paramParcel.readValue(String.class.getClassLoader()));
    o = ((String)paramParcel.readValue(String.class.getClassLoader()));
    p = ((String)paramParcel.readValue(String.class.getClassLoader()));
    q = ((String)paramParcel.readValue(String.class.getClassLoader()));
    r = ((String)paramParcel.readValue(String.class.getClassLoader()));
    s = ((YelpCheckIn)paramParcel.readParcelable(YelpCheckIn.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    t = arrayOfBoolean[0];
    u = arrayOfBoolean[1];
    v = arrayOfBoolean[2];
    w = arrayOfBoolean[3];
    x = paramParcel.readInt();
    y = paramParcel.readInt();
    z = paramParcel.readInt();
    A = paramParcel.readInt();
    B = paramParcel.readInt();
    C = paramParcel.readInt();
    D = paramParcel.readInt();
    E = paramParcel.readInt();
    F = paramParcel.readInt();
    G = paramParcel.readInt();
    H = paramParcel.readInt();
    I = paramParcel.readInt();
    J = paramParcel.readInt();
    K = paramParcel.readInt();
    L = paramParcel.readInt();
    M = paramParcel.readInt();
    N = paramParcel.readInt();
    O = paramParcel.readInt();
    P = paramParcel.readInt();
    Q = paramParcel.readInt();
    R = paramParcel.readInt();
    S = paramParcel.readInt();
    T = paramParcel.readInt();
    U = paramParcel.createIntArray();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("member_since")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "member_since");
    }
    if (!paramJSONObject.isNull("photos"))
    {
      b = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      if (paramJSONObject.isNull("disabled_features")) {
        break label963;
      }
      c = JsonUtil.getStringList(paramJSONObject.optJSONArray("disabled_features"));
      label66:
      if (paramJSONObject.isNull("loves")) {
        break label973;
      }
      d = JsonUtil.getStringList(paramJSONObject.optJSONArray("loves"));
      label88:
      if (!paramJSONObject.isNull("personal_stats")) {
        e = ((PersonalStats)PersonalStats.CREATOR.parse(paramJSONObject.getJSONObject("personal_stats")));
      }
      if (!paramJSONObject.isNull("id")) {
        f = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("name")) {
        g = paramJSONObject.optString("name");
      }
      if (!paramJSONObject.isNull("name_without_period")) {
        h = paramJSONObject.optString("name_without_period");
      }
      if (!paramJSONObject.isNull("name_with_nickname")) {
        i = paramJSONObject.optString("name_with_nickname");
      }
      if (!paramJSONObject.isNull("third_party_confirmation_source")) {
        j = paramJSONObject.optString("third_party_confirmation_source");
      }
      if (!paramJSONObject.isNull("first_name")) {
        k = paramJSONObject.optString("first_name");
      }
      if (!paramJSONObject.isNull("nickname")) {
        l = paramJSONObject.optString("nickname");
      }
      if (!paramJSONObject.isNull("last_initial")) {
        m = paramJSONObject.optString("last_initial");
      }
      if (!paramJSONObject.isNull("last_name")) {
        n = paramJSONObject.optString("last_name");
      }
      if (!paramJSONObject.isNull("location")) {
        o = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("tagline")) {
        p = paramJSONObject.optString("tagline");
      }
      if (!paramJSONObject.isNull("gender")) {
        q = paramJSONObject.optString("gender");
      }
      if (!paramJSONObject.isNull("share_url")) {
        r = paramJSONObject.optString("share_url");
      }
      if (!paramJSONObject.isNull("check_in")) {
        s = ((YelpCheckIn)YelpCheckIn.CREATOR.parse(paramJSONObject.getJSONObject("check_in")));
      }
      t = paramJSONObject.optBoolean("is_friend");
      u = paramJSONObject.optBoolean("is_friend_request_pending");
      v = paramJSONObject.optBoolean("is_following");
      w = paramJSONObject.optBoolean("alerts");
      if (paramJSONObject.isNull("fmode")) {
        break label983;
      }
      x = paramJSONObject.optInt("fmode");
      label450:
      if (!paramJSONObject.isNull("friend_count")) {
        y = paramJSONObject.optInt("friend_count");
      }
      if (!paramJSONObject.isNull("check_in_offer_count")) {
        z = paramJSONObject.optInt("check_in_offer_count");
      }
      if (!paramJSONObject.isNull("review_count")) {
        A = paramJSONObject.optInt("review_count");
      }
      if (!paramJSONObject.isNull("bookmark_count")) {
        B = paramJSONObject.optInt("bookmark_count");
      }
      if (!paramJSONObject.isNull("check_in_count")) {
        C = paramJSONObject.optInt("check_in_count");
      }
      if (!paramJSONObject.isNull("quicktip_count")) {
        D = paramJSONObject.optInt("quicktip_count");
      }
      if (!paramJSONObject.isNull("badge_count")) {
        E = paramJSONObject.optInt("badge_count");
      }
      if (!paramJSONObject.isNull("business_photo_count")) {
        F = paramJSONObject.optInt("business_photo_count");
      }
      if (!paramJSONObject.isNull("thanx_count")) {
        G = paramJSONObject.optInt("thanx_count");
      }
      if (!paramJSONObject.isNull("review_draft_count")) {
        H = paramJSONObject.optInt("review_draft_count");
      }
      if (!paramJSONObject.isNull("user_photo_count")) {
        I = paramJSONObject.optInt("user_photo_count");
      }
      if (!paramJSONObject.isNull("deal_count")) {
        J = paramJSONObject.optInt("deal_count");
      }
      if (!paramJSONObject.isNull("first_to_review_count")) {
        K = paramJSONObject.optInt("first_to_review_count");
      }
      if (!paramJSONObject.isNull("first_to_tip_count")) {
        L = paramJSONObject.optInt("first_to_tip_count");
      }
      if (!paramJSONObject.isNull("tip_of_the_day_count")) {
        M = paramJSONObject.optInt("tip_of_the_day_count");
      }
      if (paramJSONObject.isNull("unread_message_count")) {
        break label991;
      }
    }
    label963:
    label973:
    label983:
    label991:
    for (N = paramJSONObject.optInt("unread_message_count");; N = 0)
    {
      if (!paramJSONObject.isNull("video_count")) {
        O = paramJSONObject.optInt("video_count");
      }
      if (!paramJSONObject.isNull("subscribed_events_count")) {
        P = paramJSONObject.optInt("subscribed_events_count");
      }
      if (!paramJSONObject.isNull("following_count")) {
        Q = paramJSONObject.optInt("following_count");
      }
      if (!paramJSONObject.isNull("twitter_status")) {
        R = paramJSONObject.optInt("twitter_status");
      }
      if (!paramJSONObject.isNull("facebook_status")) {
        S = paramJSONObject.optInt("facebook_status");
      }
      if (!paramJSONObject.isNull("line_status")) {
        T = paramJSONObject.optInt("line_status");
      }
      if (paramJSONObject.isNull("elite_years")) {
        return;
      }
      paramJSONObject = paramJSONObject.getJSONArray("elite_years");
      int i2 = paramJSONObject.length();
      U = new int[i2];
      int i1 = 0;
      while (i1 < i2)
      {
        U[i1] = paramJSONObject.getInt(i1);
        i1 += 1;
      }
      b = Collections.emptyList();
      break;
      c = Collections.emptyList();
      break label66;
      d = Collections.emptyList();
      break label88;
      x = -1;
      break label450;
    }
  }
  
  public String aa()
  {
    return j;
  }
  
  public String ab()
  {
    return i;
  }
  
  public String ac()
  {
    return h;
  }
  
  public String ad()
  {
    return g;
  }
  
  public String ae()
  {
    return f;
  }
  
  public PersonalStats af()
  {
    return e;
  }
  
  public List<Photo> ag()
  {
    return b;
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
    paramObject = (_User)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a(A, A).a(B, B).a(C, C).a(D, D).a(E, E).a(F, F).a(G, G).a(H, H).a(I, I).a(J, J).a(K, K).a(L, L).a(M, M).a(N, N).a(O, O).a(P, P).a(Q, Q).a(R, R).a(S, S).a(T, T).a(U, U).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a(A).a(B).a(C).a(D).a(E).a(F).a(G).a(H).a(I).a(J).a(K).a(L).a(M).a(N).a(O).a(P).a(Q).a(R).a(S).a(T).a(U).a();
  }
  
  public int j_()
  {
    return A;
  }
  
  public int k_()
  {
    return y;
  }
  
  public int m_()
  {
    return O;
  }
  
  public YelpCheckIn r()
  {
    return s;
  }
  
  public Date s()
  {
    return a;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l1 = -2147483648L;; l1 = a.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeList(b);
      paramParcel.writeStringList(c);
      paramParcel.writeStringList(d);
      paramParcel.writeParcelable(e, 0);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeValue(k);
      paramParcel.writeValue(l);
      paramParcel.writeValue(m);
      paramParcel.writeValue(n);
      paramParcel.writeValue(o);
      paramParcel.writeValue(p);
      paramParcel.writeValue(q);
      paramParcel.writeValue(r);
      paramParcel.writeParcelable(s, 0);
      paramParcel.writeBooleanArray(new boolean[] { t, u, v, w });
      paramParcel.writeInt(x);
      paramParcel.writeInt(y);
      paramParcel.writeInt(z);
      paramParcel.writeInt(A);
      paramParcel.writeInt(B);
      paramParcel.writeInt(C);
      paramParcel.writeInt(D);
      paramParcel.writeInt(E);
      paramParcel.writeInt(F);
      paramParcel.writeInt(G);
      paramParcel.writeInt(H);
      paramParcel.writeInt(I);
      paramParcel.writeInt(J);
      paramParcel.writeInt(K);
      paramParcel.writeInt(L);
      paramParcel.writeInt(M);
      paramParcel.writeInt(N);
      paramParcel.writeInt(O);
      paramParcel.writeInt(P);
      paramParcel.writeInt(Q);
      paramParcel.writeInt(R);
      paramParcel.writeInt(S);
      paramParcel.writeInt(T);
      paramParcel.writeIntArray(U);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._User
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */