package com.yelp.android.serializable;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocaleSettings;
import com.yelp.android.services.r;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.TimeZone;

public class Filter
  implements Parcelable
{
  public static final Parcelable.Creator<Filter> CREATOR = new as();
  public static final String DEAL_ALIAS = "ActiveDeal";
  public static final String EXTRA_FILTER = "extra.filter";
  public static final String HOT_NEW_ALIAS = "NewBusiness";
  protected AttributeFilters mAttributes;
  private boolean[] mBoolPrices;
  protected at mDistance;
  protected Calendar mOpenAtTime;
  protected Filter.Sort mSort;
  protected EnumSet<Filter.BusinessState> mState;
  
  public Filter()
  {
    mState = EnumSet.noneOf(Filter.BusinessState.class);
    mSort = Filter.Sort.Default;
    mDistance = new at("", 0.0D);
    mBoolPrices = new boolean[] { 0, 0, 0, 0 };
    mAttributes = new AttributeFilters();
  }
  
  public Filter(AttributeFilters paramAttributeFilters)
  {
    this(EnumSet.noneOf(Filter.BusinessState.class), null, new at("", 0.0D), Filter.Sort.Default, paramAttributeFilters);
  }
  
  public Filter(Filter paramFilter)
  {
    mBoolPrices = mBoolPrices;
    mState = mState;
    mDistance = mDistance;
    mSort = mSort;
    mAttributes = mAttributes;
    mOpenAtTime = mOpenAtTime;
  }
  
  public Filter(EnumSet<Filter.BusinessState> paramEnumSet, Calendar paramCalendar, at paramat, Filter.Sort paramSort, AttributeFilters paramAttributeFilters)
  {
    mState = paramEnumSet;
    if (paramEnumSet.contains(Filter.BusinessState.OPEN)) {
      mOpenAtTime = paramCalendar;
    }
    buildBooleanPrices();
    paramEnumSet = paramat;
    if (paramat == null) {
      paramEnumSet = new at("", 0.0D);
    }
    mDistance = paramEnumSet;
    if (paramSort == null) {
      throw new IllegalArgumentException("Please use one of the known sorting values " + Arrays.toString(Filter.Sort.values()));
    }
    mSort = paramSort;
    mAttributes = paramAttributeFilters;
  }
  
  private String getDisplayString(String paramString)
  {
    ArrayList localArrayList = new ArrayList();
    int j = mBoolPrices.length;
    int i = 0;
    while (i < j)
    {
      if (mBoolPrices[i] != 0) {
        localArrayList.add(AppData.b().g().a(i + 1));
      }
      i += 1;
    }
    AppData localAppData = AppData.b();
    if ((mState.contains(Filter.BusinessState.OPEN)) && (mOpenAtTime == null)) {
      localArrayList.add(localAppData.getString(2131165816));
    }
    for (;;)
    {
      if (mDistance.b > 0.0D) {
        localArrayList.add(localAppData.getString(2131166848, new Object[] { mDistance.a }));
      }
      if (mSort != Filter.Sort.Default) {
        localArrayList.add(localAppData.getString(2131165817, new Object[] { mSort.getLabel(localAppData) }));
      }
      Iterator localIterator = mAttributes.getSuggestedFilters().iterator();
      while (localIterator.hasNext())
      {
        AttributeFilter localAttributeFilter = (AttributeFilter)localIterator.next();
        if (!TextUtils.equals(localAttributeFilter.getAlias(), paramString)) {
          localArrayList.add(localAttributeFilter.getLocalizedLabel());
        }
      }
      if ((mState.contains(Filter.BusinessState.OPEN)) && (mOpenAtTime != null)) {
        localArrayList.add(localAppData.getString(2131166260, new Object[] { r.a(localAppData.getString(2131165791), TimeZone.getDefault(), mOpenAtTime.getTimeInMillis() / 1000L) }));
      }
    }
    paramString = null;
    if (!localArrayList.isEmpty())
    {
      i = localArrayList.size();
      paramString = (CharSequence)localArrayList.remove(localArrayList.size() - 1);
      paramString = localAppData.getResources().getQuantityString(2131623950, i, new Object[] { TextUtils.join(", ", localArrayList), paramString });
    }
    return paramString;
  }
  
  public static String getFilterDisplayString(Filter paramFilter)
  {
    return getFilterDisplayString(paramFilter, "");
  }
  
  public static String getFilterDisplayString(Filter paramFilter, String paramString)
  {
    if (paramFilter != null) {
      return paramFilter.getDisplayString(paramString);
    }
    return "";
  }
  
  private boolean nullableObjectEquals(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  protected void buildBooleanPrices()
  {
    mBoolPrices = new boolean[4];
    Iterator localIterator = EnumSet.of(Filter.BusinessState.$, Filter.BusinessState.$$, Filter.BusinessState.$$$, Filter.BusinessState.$$$$).iterator();
    int i = 0;
    while (localIterator.hasNext())
    {
      Filter.BusinessState localBusinessState = (Filter.BusinessState)localIterator.next();
      mBoolPrices[i] = mState.contains(localBusinessState);
      i += 1;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof Filter)) {
        return false;
      }
      paramObject = (Filter)paramObject;
      if (!nullableObjectEquals(mAttributes, mAttributes)) {
        return false;
      }
      if (!mState.equals(mState)) {
        return false;
      }
      if (!nullableObjectEquals(mDistance, mDistance)) {
        return false;
      }
      if (mSort != mSort) {
        return false;
      }
    } while (nullableObjectEquals(mOpenAtTime, mOpenAtTime));
    return false;
  }
  
  public AttributeFilters getAttributes()
  {
    return mAttributes;
  }
  
  public EnumSet<Filter.BusinessState> getBusinessState()
  {
    return mState;
  }
  
  public String getDisplayString()
  {
    return getDisplayString("");
  }
  
  public at getDistance()
  {
    return mDistance;
  }
  
  public Calendar getOpenTime()
  {
    return mOpenAtTime;
  }
  
  public boolean[] getPrices()
  {
    return mBoolPrices;
  }
  
  public StringBuilder getPricesOnly()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    int i = 0;
    int j = mBoolPrices.length;
    while (i < j)
    {
      if (mBoolPrices[i] != 0) {
        localStringBuilder.append(Integer.toString(i + 1));
      }
      i += 1;
    }
    return localStringBuilder;
  }
  
  public Filter.Sort getSort()
  {
    return mSort;
  }
  
  public int hashCode()
  {
    int k = 0;
    int i;
    int m;
    int j;
    if (mAttributes == null)
    {
      i = 0;
      m = mState.hashCode();
      if (mDistance != null) {
        break label68;
      }
      j = 0;
      label29:
      if (mSort != null) {
        break label79;
      }
    }
    for (;;)
    {
      return (j + ((i + 31) * 31 + m) * 31) * 31 + k;
      i = mAttributes.hashCode();
      break;
      label68:
      j = mDistance.hashCode();
      break label29;
      label79:
      k = mSort.hashCode();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeSerializable(mState);
    paramParcel.writeSerializable(mOpenAtTime);
    paramParcel.writeString(mDistance.a);
    paramParcel.writeDouble(mDistance.b);
    paramParcel.writeInt(mSort.ordinal());
    paramParcel.writeParcelable(mAttributes, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.Filter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */