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

abstract class _YelpBusinessReview
  implements Parcelable
{
  protected int A;
  protected int B;
  protected int C;
  protected int D;
  protected int E;
  protected int[] F;
  protected long G;
  protected BusinessOwnerReply a;
  protected Date b;
  protected Date c;
  protected List<Photo> d;
  protected List<PreviousReview> e;
  protected List<String> f;
  protected List<String> g;
  protected List<Video> h;
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
  protected String s;
  protected String t;
  protected String u;
  protected TranslatedReview v;
  protected boolean w;
  protected boolean x;
  protected boolean y;
  protected int z;
  
  public int A()
  {
    return B;
  }
  
  public int B()
  {
    return A;
  }
  
  public int C()
  {
    return z;
  }
  
  public boolean D()
  {
    return y;
  }
  
  public boolean E()
  {
    return x;
  }
  
  public boolean F()
  {
    return w;
  }
  
  public TranslatedReview G()
  {
    return v;
  }
  
  public String H()
  {
    return u;
  }
  
  public String I()
  {
    return t;
  }
  
  public String J()
  {
    return s;
  }
  
  public String K()
  {
    return r;
  }
  
  public String L()
  {
    return q;
  }
  
  public String M()
  {
    return p;
  }
  
  public String N()
  {
    return o;
  }
  
  public String O()
  {
    return n;
  }
  
  public String P()
  {
    return m;
  }
  
  public String Q()
  {
    return k;
  }
  
  public List<Video> R()
  {
    return h;
  }
  
  public List<String> S()
  {
    return f;
  }
  
  public List<PreviousReview> T()
  {
    return e;
  }
  
  public List<Photo> U()
  {
    return d;
  }
  
  public Date V()
  {
    return c;
  }
  
  public Date W()
  {
    return b;
  }
  
  public BusinessOwnerReply X()
  {
    return a;
  }
  
  public String a()
  {
    return i;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("business_owner_reply")) {
      a = ((BusinessOwnerReply)BusinessOwnerReply.CREATOR.parse(paramJSONObject.getJSONObject("business_owner_reply")));
    }
    if (!paramJSONObject.isNull("time_modified")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "time_modified");
    }
    if (!paramJSONObject.isNull("rotd_time")) {
      c = JsonUtil.parseTimestamp(paramJSONObject, "rotd_time");
    }
    if (!paramJSONObject.isNull("photos"))
    {
      d = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("photos"), Photo.CREATOR);
      if (paramJSONObject.isNull("previous_reviews")) {
        break label623;
      }
      e = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("previous_reviews"), PreviousReview.CREATOR);
      label116:
      if (paramJSONObject.isNull("user_disabled_features")) {
        break label633;
      }
      f = JsonUtil.getStringList(paramJSONObject.optJSONArray("user_disabled_features"));
      label138:
      if (paramJSONObject.isNull("milestones")) {
        break label643;
      }
      g = JsonUtil.getStringList(paramJSONObject.optJSONArray("milestones"));
      label160:
      if (paramJSONObject.isNull("videos")) {
        break label653;
      }
    }
    label623:
    label633:
    label643:
    label653:
    for (h = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("videos"), Video.CREATOR);; h = Collections.emptyList())
    {
      if (!paramJSONObject.isNull("id")) {
        i = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("user_encid")) {
        j = paramJSONObject.optString("user_encid");
      }
      if (!paramJSONObject.isNull("business_id")) {
        k = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("text")) {
        l = paramJSONObject.optString("text");
      }
      if (!paramJSONObject.isNull("text_excerpt")) {
        m = paramJSONObject.optString("text_excerpt");
      }
      if (!paramJSONObject.isNull("user_name")) {
        n = paramJSONObject.optString("user_name");
      }
      if (!paramJSONObject.isNull("user_photo_url")) {
        o = paramJSONObject.optString("user_photo_url");
      }
      if (!paramJSONObject.isNull("business_name")) {
        p = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("business_photo_url")) {
        q = paramJSONObject.optString("business_photo_url");
      }
      if (!paramJSONObject.isNull("user_location_rank_title")) {
        r = paramJSONObject.optString("user_location_rank_title");
      }
      if (!paramJSONObject.isNull("text_attributed")) {
        s = paramJSONObject.optString("text_attributed");
      }
      if (!paramJSONObject.isNull("language")) {
        t = paramJSONObject.optString("language");
      }
      if (!paramJSONObject.isNull("share_url")) {
        u = paramJSONObject.optString("share_url");
      }
      if (!paramJSONObject.isNull("translated_review")) {
        v = ((TranslatedReview)TranslatedReview.CREATOR.parse(paramJSONObject.getJSONObject("translated_review")));
      }
      w = paramJSONObject.optBoolean("user_is_friend");
      x = paramJSONObject.optBoolean("user_is_followed");
      y = paramJSONObject.optBoolean("is_first_review");
      z = paramJSONObject.optInt("rating");
      A = paramJSONObject.optInt("user_review_count");
      B = paramJSONObject.optInt("user_friend_count");
      C = paramJSONObject.optInt("user_check_in_count");
      D = paramJSONObject.optInt("user_photo_count");
      E = paramJSONObject.optInt("user_video_count");
      if (paramJSONObject.isNull("user_elite_years")) {
        break label663;
      }
      JSONArray localJSONArray = paramJSONObject.getJSONArray("user_elite_years");
      int i2 = localJSONArray.length();
      F = new int[i2];
      int i1 = 0;
      while (i1 < i2)
      {
        F[i1] = localJSONArray.getInt(i1);
        i1 += 1;
      }
      d = Collections.emptyList();
      break;
      e = Collections.emptyList();
      break label116;
      f = Collections.emptyList();
      break label138;
      g = Collections.emptyList();
      break label160;
    }
    label663:
    G = paramJSONObject.optLong("updatable_after");
  }
  
  public String b()
  {
    return j;
  }
  
  public void b(Parcel paramParcel)
  {
    a = ((BusinessOwnerReply)paramParcel.readParcelable(BusinessOwnerReply.class.getClassLoader()));
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      b = new Date(l1);
    }
    l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      c = new Date(l1);
    }
    d = paramParcel.readArrayList(Photo.class.getClassLoader());
    e = paramParcel.readArrayList(PreviousReview.class.getClassLoader());
    f = paramParcel.createStringArrayList();
    g = paramParcel.createStringArrayList();
    h = paramParcel.readArrayList(Video.class.getClassLoader());
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
    s = ((String)paramParcel.readValue(String.class.getClassLoader()));
    t = ((String)paramParcel.readValue(String.class.getClassLoader()));
    u = ((String)paramParcel.readValue(String.class.getClassLoader()));
    v = ((TranslatedReview)paramParcel.readParcelable(TranslatedReview.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    w = arrayOfBoolean[0];
    x = arrayOfBoolean[1];
    y = arrayOfBoolean[2];
    z = paramParcel.readInt();
    A = paramParcel.readInt();
    B = paramParcel.readInt();
    C = paramParcel.readInt();
    D = paramParcel.readInt();
    E = paramParcel.readInt();
    F = paramParcel.createIntArray();
    G = paramParcel.readLong();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return l;
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
    paramObject = (_YelpBusinessReview)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a(A, A).a(B, B).a(C, C).a(D, D).a(E, E).a(F, F).a(G, G).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a(A).a(B).a(C).a(D).a(E).a(F).a(G).a();
  }
  
  public JSONObject s()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("business_owner_reply", a.a());
    }
    if (b != null) {
      localJSONObject.put("time_modified", b.getTime() / 1000L);
    }
    if (c != null) {
      localJSONObject.put("rotd_time", c.getTime() / 1000L);
    }
    JSONArray localJSONArray;
    Object localObject;
    if (d != null)
    {
      localJSONArray = new JSONArray();
      localObject = d.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Photo)((Iterator)localObject).next()).w());
      }
      localJSONObject.put("photos", localJSONArray);
    }
    if (e != null)
    {
      localJSONArray = new JSONArray();
      localObject = e.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((PreviousReview)((Iterator)localObject).next()).a());
      }
      localJSONObject.put("previous_reviews", localJSONArray);
    }
    if (f != null)
    {
      localJSONArray = new JSONArray();
      localObject = f.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("user_disabled_features", localJSONArray);
    }
    if (g != null)
    {
      localJSONArray = new JSONArray();
      localObject = g.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put((String)((Iterator)localObject).next());
      }
      localJSONObject.put("milestones", localJSONArray);
    }
    if (h != null)
    {
      localJSONArray = new JSONArray();
      localObject = h.iterator();
      while (((Iterator)localObject).hasNext()) {
        localJSONArray.put(((Video)((Iterator)localObject).next()).n());
      }
      localJSONObject.put("videos", localJSONArray);
    }
    if (i != null) {
      localJSONObject.put("id", i);
    }
    if (j != null) {
      localJSONObject.put("user_encid", j);
    }
    if (k != null) {
      localJSONObject.put("business_id", k);
    }
    if (l != null) {
      localJSONObject.put("text", l);
    }
    if (m != null) {
      localJSONObject.put("text_excerpt", m);
    }
    if (n != null) {
      localJSONObject.put("user_name", n);
    }
    if (o != null) {
      localJSONObject.put("user_photo_url", o);
    }
    if (p != null) {
      localJSONObject.put("business_name", p);
    }
    if (q != null) {
      localJSONObject.put("business_photo_url", q);
    }
    if (r != null) {
      localJSONObject.put("user_location_rank_title", r);
    }
    if (s != null) {
      localJSONObject.put("text_attributed", s);
    }
    if (t != null) {
      localJSONObject.put("language", t);
    }
    if (u != null) {
      localJSONObject.put("share_url", u);
    }
    if (v != null) {
      localJSONObject.put("translated_review", v.b());
    }
    localJSONObject.put("user_is_friend", w);
    localJSONObject.put("user_is_followed", x);
    localJSONObject.put("is_first_review", y);
    localJSONObject.put("rating", z);
    localJSONObject.put("user_review_count", A);
    localJSONObject.put("user_friend_count", B);
    localJSONObject.put("user_check_in_count", C);
    localJSONObject.put("user_photo_count", D);
    localJSONObject.put("user_video_count", E);
    if (F != null)
    {
      localJSONArray = new JSONArray();
      localObject = F;
      int i2 = localObject.length;
      int i1 = 0;
      while (i1 < i2)
      {
        localJSONArray.put(localObject[i1]);
        i1 += 1;
      }
      localJSONObject.put("user_elite_years", localJSONArray);
    }
    localJSONObject.put("updatable_after", G);
    return localJSONObject;
  }
  
  public long v()
  {
    return G;
  }
  
  public int[] w()
  {
    return F;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    paramParcel.writeParcelable(a, 0);
    if (b == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (c != null) {
        break label302;
      }
    }
    label302:
    for (long l1 = l2;; l1 = c.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeList(d);
      paramParcel.writeList(e);
      paramParcel.writeStringList(f);
      paramParcel.writeStringList(g);
      paramParcel.writeList(h);
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
      paramParcel.writeValue(s);
      paramParcel.writeValue(t);
      paramParcel.writeValue(u);
      paramParcel.writeParcelable(v, 0);
      paramParcel.writeBooleanArray(new boolean[] { w, x, y });
      paramParcel.writeInt(z);
      paramParcel.writeInt(A);
      paramParcel.writeInt(B);
      paramParcel.writeInt(C);
      paramParcel.writeInt(D);
      paramParcel.writeInt(E);
      paramParcel.writeIntArray(F);
      paramParcel.writeLong(G);
      return;
      l1 = b.getTime();
      break;
    }
  }
  
  public int x()
  {
    return E;
  }
  
  public int y()
  {
    return D;
  }
  
  public int z()
  {
    return C;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpBusinessReview
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */