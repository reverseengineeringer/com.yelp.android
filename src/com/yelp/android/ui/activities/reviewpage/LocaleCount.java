package com.yelp.android.ui.activities.reviewpage;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

@SuppressLint({"ParcelCreator"})
public class LocaleCount
  implements Parcelable
{
  public static final Parcelable.Creator<LocaleCount> CREATOR = new LocaleCount.1();
  public final Locale a;
  public final int b;
  
  public LocaleCount(Locale paramLocale, int paramInt)
  {
    a = paramLocale;
    b = paramInt;
  }
  
  public LocaleCount(Map.Entry<Locale, Integer> paramEntry)
  {
    a = ((Locale)paramEntry.getKey());
    b = ((Integer)paramEntry.getValue()).intValue();
  }
  
  public static ArrayList<LocaleCount> a(Map<Locale, Integer> paramMap)
  {
    if (paramMap == null) {
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext()) {
      localArrayList.add(new LocaleCount((Map.Entry)paramMap.next()));
    }
    return localArrayList;
  }
  
  public static Map<Locale, Integer> a(ArrayList<LocaleCount> paramArrayList)
  {
    if (paramArrayList == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      LocaleCount localLocaleCount = (LocaleCount)paramArrayList.next();
      localHashMap.put(a, Integer.valueOf(b));
    }
    return localHashMap;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    YelpBusinessReview.a(paramParcel, a);
    paramParcel.writeInt(b);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.LocaleCount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */