package com.yelp.android.database;

import android.content.Context;
import android.content.res.Resources;
import android.database.Cursor;
import android.text.TextUtils;
import com.yelp.android.serializable.AttributeFilter;
import com.yelp.android.serializable.AttributeFilters;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.Filter.BusinessState;
import com.yelp.android.serializable.Filter.Sort;
import com.yelp.android.serializable.at;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;

public class b
{
  public Filter a;
  public String b;
  public int c;
  
  public b(int paramInt, String paramString, Filter paramFilter)
  {
    c = paramInt;
    a = paramFilter;
    b = paramString;
  }
  
  public static b a(Context paramContext, Cursor paramCursor)
  {
    int j = paramCursor.getInt(paramCursor.getColumnIndex("_id"));
    String str = paramCursor.getString(paramCursor.getColumnIndex("term"));
    if (paramCursor.getInt(paramCursor.getColumnIndex("filter_exists")) == 0) {
      return new b(j, str, null);
    }
    EnumSet localEnumSet = EnumSet.noneOf(Filter.BusinessState.class);
    int k = paramCursor.getInt(paramCursor.getColumnIndex("prices"));
    Object localObject1 = EnumSet.of(Filter.BusinessState.$, Filter.BusinessState.$$, Filter.BusinessState.$$$, Filter.BusinessState.$$$$).iterator();
    int i = 1;
    while (i < 9)
    {
      localObject2 = (Filter.BusinessState)((Iterator)localObject1).next();
      if ((i & k) > 0) {
        localEnumSet.add(localObject2);
      }
      i <<= 1;
    }
    if (paramCursor.getInt(paramCursor.getColumnIndex("open")) > 0) {
      localEnumSet.add(Filter.BusinessState.OPEN);
    }
    double d = Double.parseDouble(paramCursor.getString(paramCursor.getColumnIndex("radius")));
    localObject1 = paramCursor.getString(paramCursor.getColumnIndex("radius_label"));
    Object localObject2 = Filter.Sort.values()[paramCursor.getInt(paramCursor.getColumnIndex("sort_ordinal"))];
    ArrayList localArrayList = new ArrayList();
    paramCursor = paramCursor.getString(paramCursor.getColumnIndex("attributes")).split(",");
    k = paramCursor.length;
    i = 0;
    while (i < k)
    {
      Object localObject3 = paramCursor[i];
      if (!TextUtils.isEmpty((CharSequence)localObject3))
      {
        localObject3 = AdapterNearbyFilters.OldAttributeFilter.valueOf((String)localObject3);
        localArrayList.add(new AttributeFilter(mTokenName, paramContext.getResources().getString(mDisplayRes)));
      }
      i += 1;
    }
    return new b(j, str, new Filter(localEnumSet, null, new at((String)localObject1, d), (Filter.Sort)localObject2, new AttributeFilters(localArrayList)));
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      do
      {
        return true;
        if (paramObject == null) {
          return false;
        }
        if (getClass() != paramObject.getClass()) {
          return false;
        }
        paramObject = (b)paramObject;
        if (a == null)
        {
          if (a != null) {
            return false;
          }
        }
        else if (!a.equals(a)) {
          return false;
        }
        if (b != null) {
          break;
        }
      } while (b == null);
      return false;
    } while (b.equals(b));
    return false;
  }
  
  public int hashCode()
  {
    int j = 0;
    int i;
    if (a == null)
    {
      i = 0;
      if (b != null) {
        break label39;
      }
    }
    for (;;)
    {
      return (i + 31) * 31 + j;
      i = a.hashCode();
      break;
      label39:
      j = b.hashCode();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */