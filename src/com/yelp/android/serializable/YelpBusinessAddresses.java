package com.yelp.android.serializable;

import android.os.Bundle;
import android.os.Parcel;
import com.yelp.android.ui.util.m;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class YelpBusinessAddresses
  extends _YelpBusinessAddresses
{
  public static final JsonParser.DualCreator<YelpBusinessAddresses> CREATOR = new dy();
  private Map<String, YelpDetailedAddress> mAlternateAddresses;
  
  public YelpBusinessAddresses()
  {
    mAddress = new YelpDetailedAddress();
    mAlternateAddresses = new HashMap();
  }
  
  public YelpBusinessAddresses(String paramString1, String paramString2, YelpDetailedAddress paramYelpDetailedAddress, Map<String, YelpDetailedAddress> paramMap)
  {
    super(paramString1, paramString2, paramYelpDetailedAddress);
    mAlternateAddresses = paramMap;
  }
  
  public Map<String, YelpDetailedAddress> getAlternateAddresses()
  {
    return mAlternateAddresses;
  }
  
  public boolean isAlternateAddressEmpty()
  {
    Iterator localIterator = mAlternateAddresses.values().iterator();
    while (localIterator.hasNext())
    {
      YelpDetailedAddress localYelpDetailedAddress = (YelpDetailedAddress)localIterator.next();
      if ((!localYelpDetailedAddress.getAddress1().equals("")) || (!localYelpDetailedAddress.getAddress2().equals(""))) {
        return false;
      }
    }
    return true;
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    super.readFromParcel(paramParcel);
    paramParcel = paramParcel.readBundle();
    paramParcel.setClassLoader(YelpDetailedAddress.class.getClassLoader());
    mAlternateAddresses.putAll(m.a(paramParcel, YelpDetailedAddress.class));
  }
  
  public void setAddress(YelpDetailedAddress paramYelpDetailedAddress)
  {
    mAddress = paramYelpDetailedAddress;
  }
  
  public void setAlternateAddresses(Map<String, YelpDetailedAddress> paramMap)
  {
    mAlternateAddresses = paramMap;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeBundle(m.a(mAlternateAddresses));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.YelpBusinessAddresses
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */