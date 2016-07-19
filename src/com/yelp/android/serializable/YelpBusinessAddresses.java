package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcel;
import com.yelp.android.ui.util.i;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class YelpBusinessAddresses
  extends _YelpBusinessAddresses
{
  public static final JsonParser.DualCreator<YelpBusinessAddresses> CREATOR = new YelpBusinessAddresses.1();
  private Map<String, YelpDetailedAddress> d;
  
  public YelpBusinessAddresses()
  {
    c = new YelpDetailedAddress();
    d = new HashMap();
  }
  
  public YelpBusinessAddresses(String paramString1, String paramString2, YelpDetailedAddress paramYelpDetailedAddress, Map<String, YelpDetailedAddress> paramMap)
  {
    super(paramString1, paramString2, paramYelpDetailedAddress);
    d = paramMap;
  }
  
  public Map<String, YelpDetailedAddress> a()
  {
    return d;
  }
  
  public void a(Parcel paramParcel)
  {
    super.a(paramParcel);
    paramParcel = paramParcel.readBundle();
    paramParcel.setClassLoader(YelpDetailedAddress.class.getClassLoader());
    d.putAll(i.a(paramParcel, YelpDetailedAddress.class));
  }
  
  public void a(YelpDetailedAddress paramYelpDetailedAddress)
  {
    c = paramYelpDetailedAddress;
  }
  
  public void a(Map<String, YelpDetailedAddress> paramMap)
  {
    d = paramMap;
  }
  
  public boolean b()
  {
    Iterator localIterator = d.values().iterator();
    while (localIterator.hasNext())
    {
      YelpDetailedAddress localYelpDetailedAddress = (YelpDetailedAddress)localIterator.next();
      if ((!localYelpDetailedAddress.c().equals("")) || (!localYelpDetailedAddress.b().equals(""))) {
        return false;
      }
    }
    return true;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(i.a(d));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */