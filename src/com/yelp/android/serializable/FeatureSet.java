package com.yelp.android.serializable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

@SuppressLint({"DefaultLocale"})
public class FeatureSet
  implements Parcelable
{
  public static final Parcelable.Creator<FeatureSet> CREATOR = new ap();
  private static final String FEATURE_SET_TAG = "FeatureSet";
  private Set<FeatureSet.Feature> mFeatures = new HashSet();
  
  public FeatureSet() {}
  
  public FeatureSet(Parcel paramParcel)
  {
    this();
    readFromParcel(paramParcel);
  }
  
  private void readFromParcel(Parcel paramParcel)
  {
    Object localObject = new ArrayList();
    paramParcel.readStringList((List)localObject);
    paramParcel = ((List)localObject).iterator();
    while (paramParcel.hasNext())
    {
      localObject = (String)paramParcel.next();
      mFeatures.add(FeatureSet.Feature.valueOf((String)localObject));
    }
  }
  
  private void writeFeaturesToParcel(Parcel paramParcel)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = mFeatures.iterator();
    while (localIterator.hasNext()) {
      localArrayList.add(((FeatureSet.Feature)localIterator.next()).toString());
    }
    paramParcel.writeStringList(localArrayList);
  }
  
  public boolean contains(FeatureSet.Feature paramFeature)
  {
    return (mFeatures != null) && (mFeatures.contains(paramFeature));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void setFeatures(List<String> paramList)
  {
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      String str = (String)paramList.next();
      try
      {
        mFeatures.add(FeatureSet.Feature.valueOf(str.toUpperCase()));
      }
      catch (IllegalArgumentException localIllegalArgumentException)
      {
        Log.i("FeatureSet", str + " is not specified as feature in the Feature enum");
      }
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    writeFeaturesToParcel(paramParcel);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.FeatureSet
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */