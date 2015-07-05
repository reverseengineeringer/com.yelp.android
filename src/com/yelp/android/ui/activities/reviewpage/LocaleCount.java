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
  public static final Parcelable.Creator<LocaleCount> CREATOR = new af();
  public final int mCount;
  public final Locale mLocale;
  
  public LocaleCount(Locale paramLocale, int paramInt)
  {
    mLocale = paramLocale;
    mCount = paramInt;
  }
  
  public LocaleCount(Map.Entry<Locale, Integer> paramEntry)
  {
    mLocale = ((Locale)paramEntry.getKey());
    mCount = ((Integer)paramEntry.getValue()).intValue();
  }
  
  public static Map<Locale, Integer> listToMap(ArrayList<LocaleCount> paramArrayList)
  {
    if (paramArrayList == null) {
      return null;
    }
    HashMap localHashMap = new HashMap();
    paramArrayList = paramArrayList.iterator();
    while (paramArrayList.hasNext())
    {
      LocaleCount localLocaleCount = (LocaleCount)paramArrayList.next();
      localHashMap.put(mLocale, Integer.valueOf(mCount));
    }
    return localHashMap;
  }
  
  public static ArrayList<LocaleCount> mapToList(Map<Locale, Integer> paramMap)
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
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    YelpBusinessReview.writeLocaleToParcel(paramParcel, mLocale);
    paramParcel.writeInt(mCount);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.reviewpage.LocaleCount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */