package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
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

abstract class _YelpCheckIn
  implements Parcelable
{
  protected ArrayList<SurveyQuestion> a;
  protected Comment b;
  protected Date c;
  protected List<Badge> d;
  protected List<String> e;
  protected String f;
  protected String g;
  protected String h;
  protected String i;
  protected String j;
  protected String k;
  protected String l;
  protected User m;
  protected YelpBusiness n;
  protected boolean o;
  protected int p;
  protected int q;
  protected int r;
  protected int s;
  protected int t;
  protected int u;
  protected int v;
  protected int w;
  protected int x;
  protected int y;
  protected int z;
  
  public Comment A()
  {
    return b;
  }
  
  public ArrayList<SurveyQuestion> B()
  {
    return a;
  }
  
  public void a(Parcel paramParcel)
  {
    a = paramParcel.readArrayList(SurveyQuestion.class.getClassLoader());
    b = ((Comment)paramParcel.readParcelable(Comment.class.getClassLoader()));
    long l1 = paramParcel.readLong();
    if (l1 != -2147483648L) {
      c = new Date(l1);
    }
    d = paramParcel.readArrayList(Badge.class.getClassLoader());
    e = paramParcel.createStringArrayList();
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((String)paramParcel.readValue(String.class.getClassLoader()));
    j = ((String)paramParcel.readValue(String.class.getClassLoader()));
    k = ((String)paramParcel.readValue(String.class.getClassLoader()));
    l = ((String)paramParcel.readValue(String.class.getClassLoader()));
    m = ((User)paramParcel.readParcelable(User.class.getClassLoader()));
    n = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    o = paramParcel.createBooleanArray()[0];
    p = paramParcel.readInt();
    q = paramParcel.readInt();
    r = paramParcel.readInt();
    s = paramParcel.readInt();
    t = paramParcel.readInt();
    u = paramParcel.readInt();
    v = paramParcel.readInt();
    w = paramParcel.readInt();
    x = paramParcel.readInt();
    y = paramParcel.readInt();
    z = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("survey_questions"))
    {
      a = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("survey_questions"), SurveyQuestion.CREATOR);
      if (!paramJSONObject.isNull("primary_comment")) {
        b = ((Comment)Comment.CREATOR.parse(paramJSONObject.getJSONObject("primary_comment")));
      }
      if (!paramJSONObject.isNull("time_created")) {
        c = JsonUtil.parseTimestamp(paramJSONObject, "time_created");
      }
      if (paramJSONObject.isNull("new_badges")) {
        break label462;
      }
      d = JsonUtil.parseJsonList(paramJSONObject.optJSONArray("new_badges"), Badge.CREATOR);
      label97:
      if (paramJSONObject.isNull("feedback")) {
        break label472;
      }
      e = JsonUtil.getStringList(paramJSONObject.optJSONArray("feedback"));
      label119:
      if (!paramJSONObject.isNull("id")) {
        f = paramJSONObject.optString("id");
      }
      if (!paramJSONObject.isNull("business_id")) {
        g = paramJSONObject.optString("business_id");
      }
      if (!paramJSONObject.isNull("user_id")) {
        h = paramJSONObject.optString("user_id");
      }
      if (!paramJSONObject.isNull("quicktip_text")) {
        i = paramJSONObject.optString("quicktip_text");
      }
      if (!paramJSONObject.isNull("location")) {
        j = paramJSONObject.optString("location");
      }
      if (!paramJSONObject.isNull("business_name")) {
        k = paramJSONObject.optString("business_name");
      }
      if (!paramJSONObject.isNull("contribution_type")) {
        l = paramJSONObject.optString("contribution_type");
      }
      if (!paramJSONObject.isNull("user")) {
        m = ((User)User.CREATOR.parse(paramJSONObject.getJSONObject("user")));
      }
      if (!paramJSONObject.isNull("business")) {
        n = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
      }
      if (paramJSONObject.isNull("is_commentable")) {
        break label482;
      }
    }
    label462:
    label472:
    label482:
    for (o = paramJSONObject.optBoolean("is_commentable");; o = true)
    {
      p = paramJSONObject.optInt("interval");
      q = paramJSONObject.optInt("check_in_count");
      r = paramJSONObject.optInt("week_count");
      s = paramJSONObject.optInt("user_count");
      t = paramJSONObject.optInt("location_rank");
      u = paramJSONObject.optInt("friend_rank");
      v = paramJSONObject.optInt("friend_active_count");
      w = paramJSONObject.optInt("regular_rank");
      x = paramJSONObject.optInt("comments_count");
      y = paramJSONObject.optInt("feedback_positive_count");
      z = paramJSONObject.optInt("total_survey_questions");
      return;
      a = new ArrayList();
      break;
      d = Collections.emptyList();
      break label97;
      e = Collections.emptyList();
      break label119;
    }
  }
  
  public YelpBusiness d()
  {
    return n;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date e()
  {
    return c;
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
    paramObject = (_YelpCheckIn)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a(k, k).a(l, l).a(m, m).a(n, n).a(o, o).a(p, p).a(q, q).a(r, r).a(s, s).a(t, t).a(u, u).a(v, v).a(w, w).a(x, x).a(y, y).a(z, z).a();
  }
  
  public String g()
  {
    return j;
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a(k).a(l).a(m).a(n).a(o).a(p).a(q).a(r).a(s).a(t).a(u).a(v).a(w).a(x).a(y).a(z).a();
  }
  
  public String i()
  {
    return h;
  }
  
  public String k()
  {
    return g;
  }
  
  public String m()
  {
    return k;
  }
  
  public String r()
  {
    return l;
  }
  
  public JSONObject t()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    JSONArray localJSONArray;
    Iterator localIterator;
    if (a != null)
    {
      localJSONArray = new JSONArray();
      localIterator = a.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((SurveyQuestion)localIterator.next()).a());
      }
      localJSONObject.put("survey_questions", localJSONArray);
    }
    if (b != null) {
      localJSONObject.put("primary_comment", b.a());
    }
    if (c != null) {
      localJSONObject.put("time_created", c.getTime() / 1000L);
    }
    if (d != null)
    {
      localJSONArray = new JSONArray();
      localIterator = d.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put(((Badge)localIterator.next()).b());
      }
      localJSONObject.put("new_badges", localJSONArray);
    }
    if (e != null)
    {
      localJSONArray = new JSONArray();
      localIterator = e.iterator();
      while (localIterator.hasNext()) {
        localJSONArray.put((String)localIterator.next());
      }
      localJSONObject.put("feedback", localJSONArray);
    }
    if (f != null) {
      localJSONObject.put("id", f);
    }
    if (g != null) {
      localJSONObject.put("business_id", g);
    }
    if (h != null) {
      localJSONObject.put("user_id", h);
    }
    if (i != null) {
      localJSONObject.put("quicktip_text", i);
    }
    if (j != null) {
      localJSONObject.put("location", j);
    }
    if (k != null) {
      localJSONObject.put("business_name", k);
    }
    if (l != null) {
      localJSONObject.put("contribution_type", l);
    }
    if (m != null) {
      localJSONObject.put("user", m.A());
    }
    if (n != null) {
      localJSONObject.put("business", n.E());
    }
    localJSONObject.put("is_commentable", o);
    localJSONObject.put("interval", p);
    localJSONObject.put("check_in_count", q);
    localJSONObject.put("week_count", r);
    localJSONObject.put("user_count", s);
    localJSONObject.put("location_rank", t);
    localJSONObject.put("friend_rank", u);
    localJSONObject.put("friend_active_count", v);
    localJSONObject.put("regular_rank", w);
    localJSONObject.put("comments_count", x);
    localJSONObject.put("feedback_positive_count", y);
    localJSONObject.put("total_survey_questions", z);
    return localJSONObject;
  }
  
  public int u()
  {
    return x;
  }
  
  public int v()
  {
    return w;
  }
  
  public int w()
  {
    return q;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeList(a);
    paramParcel.writeParcelable(b, 0);
    if (c == null) {}
    for (long l1 = -2147483648L;; l1 = c.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeList(d);
      paramParcel.writeStringList(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeValue(i);
      paramParcel.writeValue(j);
      paramParcel.writeValue(k);
      paramParcel.writeValue(l);
      paramParcel.writeParcelable(m, 0);
      paramParcel.writeParcelable(n, 0);
      paramParcel.writeBooleanArray(new boolean[] { o });
      paramParcel.writeInt(p);
      paramParcel.writeInt(q);
      paramParcel.writeInt(r);
      paramParcel.writeInt(s);
      paramParcel.writeInt(t);
      paramParcel.writeInt(u);
      paramParcel.writeInt(v);
      paramParcel.writeInt(w);
      paramParcel.writeInt(x);
      paramParcel.writeInt(y);
      paramParcel.writeInt(z);
      return;
    }
  }
  
  public boolean x()
  {
    return o;
  }
  
  public User y()
  {
    return m;
  }
  
  public String z()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._YelpCheckIn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */