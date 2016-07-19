package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _Offer
  implements Parcelable
{
  protected Date b;
  protected Date c;
  protected OfferRedemption d;
  protected Offer.OfferState e;
  protected String f;
  protected String g;
  protected String h;
  protected YelpBusiness i;
  protected int j;
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      b = new Date(l);
    }
    l = paramParcel.readLong();
    if (l != -2147483648L) {
      c = new Date(l);
    }
    d = ((OfferRedemption)paramParcel.readParcelable(OfferRedemption.class.getClassLoader()));
    e = ((Offer.OfferState)paramParcel.readSerializable());
    f = ((String)paramParcel.readValue(String.class.getClassLoader()));
    g = ((String)paramParcel.readValue(String.class.getClassLoader()));
    h = ((String)paramParcel.readValue(String.class.getClassLoader()));
    i = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
    j = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("time_awarded")) {
      b = JsonUtil.parseTimestamp(paramJSONObject, "time_awarded");
    }
    if (!paramJSONObject.isNull("time_expires")) {
      c = JsonUtil.parseTimestamp(paramJSONObject, "time_expires");
    }
    if (!paramJSONObject.isNull("redemption")) {
      d = ((OfferRedemption)OfferRedemption.CREATOR.parse(paramJSONObject.getJSONObject("redemption")));
    }
    if (!paramJSONObject.isNull("offer_text")) {
      f = paramJSONObject.optString("offer_text");
    }
    if (!paramJSONObject.isNull("promo_text")) {
      g = paramJSONObject.optString("promo_text");
    }
    if (!paramJSONObject.isNull("id")) {
      h = paramJSONObject.optString("id");
    }
    if (!paramJSONObject.isNull("business")) {
      i = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
    j = paramJSONObject.optInt("check_ins_remaining");
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
    paramObject = (_Offer)paramObject;
    return new b().a(b, b).a(c, c).a(d, d).a(e, e).a(f, f).a(g, g).a(h, h).a(i, i).a(j, j).a();
  }
  
  public JSONObject f()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (b != null) {
      localJSONObject.put("time_awarded", b.getTime() / 1000L);
    }
    if (c != null) {
      localJSONObject.put("time_expires", c.getTime() / 1000L);
    }
    if (d != null) {
      localJSONObject.put("redemption", d.b());
    }
    if (f != null) {
      localJSONObject.put("offer_text", f);
    }
    if (g != null) {
      localJSONObject.put("promo_text", g);
    }
    if (h != null) {
      localJSONObject.put("id", h);
    }
    if (i != null) {
      localJSONObject.put("business", i.E());
    }
    localJSONObject.put("check_ins_remaining", j);
    return localJSONObject;
  }
  
  public int g()
  {
    return j;
  }
  
  public YelpBusiness h()
  {
    return i;
  }
  
  public int hashCode()
  {
    return new c().a(b).a(c).a(d).a(e).a(f).a(g).a(h).a(i).a(j).a();
  }
  
  public String i()
  {
    return h;
  }
  
  public String j()
  {
    return g;
  }
  
  public String k()
  {
    return f;
  }
  
  public Offer.OfferState l()
  {
    return e;
  }
  
  public OfferRedemption m()
  {
    return d;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    long l2 = -2147483648L;
    if (b == null)
    {
      l1 = -2147483648L;
      paramParcel.writeLong(l1);
      if (c != null) {
        break label106;
      }
    }
    label106:
    for (long l1 = l2;; l1 = c.getTime())
    {
      paramParcel.writeLong(l1);
      paramParcel.writeParcelable(d, 0);
      paramParcel.writeSerializable(e);
      paramParcel.writeValue(f);
      paramParcel.writeValue(g);
      paramParcel.writeValue(h);
      paramParcel.writeParcelable(i, 0);
      paramParcel.writeInt(j);
      return;
      l1 = b.getTime();
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._Offer
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */