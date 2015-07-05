package com.yelp.android.database.savedsearch;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.appdata.AppData;
import com.yelp.android.database.z;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.Filter.Sort;
import com.yelp.android.serializable.at;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

class DatabaseFilter
  extends Filter
{
  private long mId;
  
  public DatabaseFilter(Cursor paramCursor1, Cursor paramCursor2, String paramString)
  {
    mId = paramCursor1.getLong(paramCursor1.getColumnIndex(paramString));
    init(paramCursor1, paramCursor2);
  }
  
  public DatabaseFilter(Filter paramFilter)
  {
    super(paramFilter);
    mId = -1L;
  }
  
  private boolean getBoolean(Cursor paramCursor, String paramString)
  {
    return paramCursor.getInt(paramCursor.getColumnIndex(paramString)) == 1;
  }
  
  private void init(Cursor paramCursor1, Cursor paramCursor2)
  {
    if (getBoolean(paramCursor1, "one_dollar")) {
      mState.add(Filter.BusinessState.$);
    }
    if (getBoolean(paramCursor1, "two_dollar")) {
      mState.add(Filter.BusinessState.$$);
    }
    if (getBoolean(paramCursor1, "three_dollar")) {
      mState.add(Filter.BusinessState.$$$);
    }
    if (getBoolean(paramCursor1, "four_dollar")) {
      mState.add(Filter.BusinessState.$$$$);
    }
    buildBooleanPrices();
    if (getBoolean(paramCursor1, "open")) {
      mState.add(Filter.BusinessState.OPEN);
    }
    ArrayList localArrayList = new ArrayList();
    if (getBoolean(paramCursor1, "active_deal")) {
      localArrayList.add(new AttributeFilter("ActiveDeal", AppData.b().getString(2131166231)));
    }
    if (getBoolean(paramCursor1, "hot_new")) {
      localArrayList.add(new AttributeFilter("NewBusiness", AppData.b().getString(2131165929)));
    }
    long l = paramCursor1.getLong(paramCursor1.getColumnIndex("open_time"));
    if (l != 0L)
    {
      mOpenAtTime = Calendar.getInstance();
      mOpenAtTime.setTimeInMillis(l);
    }
    mDistance = new at(paramCursor1.getString(paramCursor1.getColumnIndex("distance_label")), paramCursor1.getDouble(paramCursor1.getColumnIndex("distance_radius")));
    mSort = ((Filter.Sort)Filter.Sort.valueOf(Filter.Sort.class, paramCursor1.getString(paramCursor1.getColumnIndex("sort"))));
    if (paramCursor2.moveToFirst()) {
      do
      {
        localArrayList.add(new DatabaseAttributeFilter(paramCursor2));
      } while (paramCursor2.moveToNext());
    }
    mAttributes = new AttributeFilters(localArrayList);
  }
  
  public void delete(z paramz1, z paramz2)
  {
    String str = String.valueOf(mId);
    paramz1.b("id", str);
    paramz2.b("filter_id", str);
    mId = -1L;
  }
  
  public long getId()
  {
    return mId;
  }
  
  public void save(z paramz1, z paramz2)
  {
    int j = 1;
    ContentValues localContentValues = new ContentValues();
    EnumSet localEnumSet = getBusinessState();
    if (localEnumSet.contains(Filter.BusinessState.$))
    {
      i = 1;
      localContentValues.put("one_dollar", Integer.valueOf(i));
      if (!localEnumSet.contains(Filter.BusinessState.$$)) {
        break label317;
      }
      i = 1;
      label55:
      localContentValues.put("two_dollar", Integer.valueOf(i));
      if (!localEnumSet.contains(Filter.BusinessState.$$$)) {
        break label322;
      }
      i = 1;
      label79:
      localContentValues.put("three_dollar", Integer.valueOf(i));
      if (!localEnumSet.contains(Filter.BusinessState.$$$$)) {
        break label327;
      }
      i = 1;
      label103:
      localContentValues.put("four_dollar", Integer.valueOf(i));
      if (!localEnumSet.contains(Filter.BusinessState.OPEN)) {
        break label332;
      }
    }
    label317:
    label322:
    label327:
    label332:
    for (int i = j;; i = 0)
    {
      localContentValues.put("open", Integer.valueOf(i));
      localContentValues.put("active_deal", Integer.valueOf(0));
      localContentValues.put("hot_new", Integer.valueOf(0));
      if (getOpenTime() != null) {
        localContentValues.put("open_time", Long.valueOf(getOpenTime().getTimeInMillis()));
      }
      if (getDistance() != null)
      {
        localContentValues.put("distance_label", getDistancea);
        localContentValues.put("distance_radius", Double.valueOf(getDistanceb));
      }
      if (getSort() != null) {
        localContentValues.put("sort", getSort().name());
      }
      mId = Long.parseLong(paramz1.a("id", String.valueOf(mId), localContentValues));
      paramz1 = getAttributes().getSuggestedFilters().iterator();
      while (paramz1.hasNext()) {
        new DatabaseAttributeFilter((AttributeFilter)paramz1.next()).save(paramz2, this);
      }
      i = 0;
      break;
      i = 0;
      break label55;
      i = 0;
      break label79;
      i = 0;
      break label103;
    }
  }
  
  public void setId(long paramLong)
  {
    mId = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.DatabaseFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */