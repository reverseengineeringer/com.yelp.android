package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcel;
import com.yelp.android.ui.util.i;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.HashMap;
import java.util.Map;

public class BusinessAttributes
  extends _BusinessAttributes
{
  public static final JsonParser.DualCreator<BusinessAttributes> CREATOR = new BusinessAttributes.1();
  private Map<String, AddressAttribute> g = new HashMap();
  private Map<String, BusinessAttribute> h = new HashMap();
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    Bundle localBundle = paramParcel.readBundle();
    localBundle.setClassLoader(AddressAttribute.class.getClassLoader());
    g.putAll(i.a(localBundle, AddressAttribute.class));
    paramParcel = paramParcel.readBundle();
    paramParcel.setClassLoader(BusinessAttribute.class.getClassLoader());
    h.putAll(i.a(paramParcel, BusinessAttribute.class));
  }
  
  public boolean a()
  {
    return (g != null) && (g.size() > 0);
  }
  
  public Map<String, AddressAttribute> b()
  {
    return g;
  }
  
  public Map<String, BusinessAttribute> c()
  {
    return h;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(i.a(g));
    paramParcel.writeBundle(i.a(h));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.BusinessAttributes
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */