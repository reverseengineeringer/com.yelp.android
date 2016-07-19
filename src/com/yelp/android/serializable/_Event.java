package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Event
  implements Parcelable
{
  protected double A;
  protected double B;
  protected double C;
  protected double D;
  protected int E;
  protected long F;
  protected long G;
  protected EventRsvp a;
  protected Event.EventType b;
  protected Photo c;
  protected String d;
  protected String e;
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
  protected String s;
  protected String t;
  protected String u;
  protected User v;
  protected YelpBusiness w;
  protected boolean x;
  protected boolean y;
  protected double z;
  
  public String A()
  {
    return l;
  }
  
  public String B()
  {
    return k;
  }
  
  public String C()
  {
    return j;
  }
  
  public String D()
  {
    return i;
  }
  
  public String E()
  {
    return h;
  }
  
  public String F()
  {
    return g;
  }
  
  public String G()
  {
    return f;
  }
  
  public String H()
  {
    return e;
  }
  
  public String I()
  {
    return d;
  }
  
  public Photo J()
  {
    return c;
  }
  
  public Event.EventType K()
  {
    return b;
  }
  
  public EventRsvp L()
  {
    return a;
  }
  
  public String a()
  {
    return p;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((EventRsvp)paramParcel.readParcelable(EventRsvp.class.getClassLoader()));
    b = ((Event.EventType)paramParcel.readSerializable());
    c = ((Photo)paramParcel.readParcelable(Photo.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
    e = ((String)paramParcel.readValue(String.class.getClassLoader()));
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
    s = ((String)paramParcel.readValue(String.class.getClassLoader()));
    t = ((String)paramParcel.readValue(String.class.getClassLoader()));
    u = ((String)paramParcel.readValue(String.class.getClassLoader()));
    v = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    w = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    boolean[] arrayOfBoolean = paramParcel.createBooleanArray();
    x = arrayOfBoolean[0];
    y = arrayOfBoolean[1];
    z = paramParcel.readDouble();
    A = paramParcel.readDouble();
    B = paramParcel.readDouble();
    C = paramParcel.readDouble();
    D = paramParcel.readDouble();
    E = paramParcel.readInt();
    F = paramParcel.readLong();
    G = paramParcel.readLong();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("rsvp")) {
      a = ((EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp")));
    }
    if (!paramJSONObject.isNull("photo")) {
      c = ((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")));
    }
    if (!paramJSONObject.isNull("id")) {
      d = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("alias")) {
      e = paramJSONObject.optString("alias");
    }
    if (!paramJSONObject.isNull("name")) {
      f = paramJSONObject.optString("name");
    }
    if (!paramJSONObject.isNull("event_url")) {
      g = paramJSONObject.optString("event_url");
    }
    if (!paramJSONObject.isNull("share_url")) {
      h = paramJSONObject.optString("share_url");
    }
    if (!paramJSONObject.isNull("tickets_url")) {
      i = paramJSONObject.optString("tickets_url");
    }
    if (!paramJSONObject.isNull("category_name")) {
      j = paramJSONObject.optString("category_name");
    }
    if (!paramJSONObject.isNull("description")) {
      k = paramJSONObject.optString("description");
    }
    if (!paramJSONObject.isNull("address")) {
      l = paramJSONObject.optString("address");
    }
    if (!paramJSONObject.isNull("map_address")) {
      m = paramJSONObject.optString("map_address");
    }
    if (!paramJSONObject.isNull("location_name")) {
      n = paramJSONObject.optString("location_name");
    }
    if (!paramJSONObject.isNull("timezone")) {
      o = paramJSONObject.optString("timezone");
    }
    if (!paramJSONObject.isNull("event_photo_url")) {
      p = paramJSONObject.optString("event_photo_url");
    }
    if (!paramJSONObject.isNull("business_id")) {
      q = paramJSONObject.optString("business_id");
    }
    if (!paramJSONObject.isNull("user_id")) {
      r = paramJSONObject.optString("user_id");
    }
    if (!paramJSONObject.isNull("currency_code")) {
      s = paramJSONObject.optString("currency_code");
    }
    if (!paramJSONObject.isNull("subscription_status")) {
      t = paramJSONObject.optString("subscription_status");
    }
    if (!paramJSONObject.isNull("talk_topic_id")) {
      u = paramJSONObject.optString("talk_topic_id");
    }
    if (!paramJSONObject.isNull("user")) {
      v = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
    }
    if (!paramJSONObject.isNull("business")) {
      w = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    x = paramJSONObject.optBoolean("is_yelp_community");
    y = paramJSONObject.optBoolean("reminder_notification");
    z = paramJSONObject.optDouble("cost");
    A = paramJSONObject.optDouble("cost_max");
    B = paramJSONObject.optDouble("latitude");
    C = paramJSONObject.optDouble("longitude");
    D = paramJSONObject.optDouble("location_rating");
    E = paramJSONObject.optInt("talk_topic_user_count");
    F = paramJSONObject.optLong("time_start");
    G = paramJSONObject.optLong("time_end");
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
    paramObject = (_Event)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a(A, A).a(B, B).a(C, C).a(D, D).a(E, E).a(F, F).a(G, G).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a(A).a(B).a(C).a(D).a(E).a(F).a(G).a();
  }
  
  public long k()
  {
    return G;
  }
  
  public long l()
  {
    return F;
  }
  
  public int m()
  {
    return E;
  }
  
  public double n()
  {
    return C;
  }
  
  public double o()
  {
    return B;
  }
  
  public double p()
  {
    return A;
  }
  
  public double q()
  {
    return z;
  }
  
  public boolean r()
  {
    return y;
  }
  
  public boolean s()
  {
    return x;
  }
  
  public YelpBusiness t()
  {
    return w;
  }
  
  public User u()
  {
    return v;
  }
  
  public String v()
  {
    return u;
  }
  
  public String w()
  {
    return t;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeSerializable(b);
    paramParcel.writeParcelable(c, 0);
    paramParcel.writeValue(d);
    paramParcel.writeValue(e);
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
    paramParcel.writeValue(s);
    paramParcel.writeValue(t);
    paramParcel.writeValue(u);
    paramParcel.writeParcelable(v, 0);
    paramParcel.writeParcelable(w, 0);
    paramParcel.writeBooleanArray(new boolean[] { x, y });
    paramParcel.writeDouble(z);
    paramParcel.writeDouble(A);
    paramParcel.writeDouble(B);
    paramParcel.writeDouble(C);
    paramParcel.writeDouble(D);
    paramParcel.writeInt(E);
    paramParcel.writeLong(F);
    paramParcel.writeLong(G);
  }
  
  public String x()
  {
    return o;
  }
  
  public String y()
  {
    return n;
  }
  
  public String z()
  {
    return m;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Event
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */