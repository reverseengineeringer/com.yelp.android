package com.yelp.android.database.savedsearch;

import android.content.ContentValues;
import android.database.Cursor;
import com.yelp.android.database.z;
import com.yelp.android.serializable.AttributeFilter;

class DatabaseAttributeFilter
  extends AttributeFilter
{
  private long mId;
  
  public DatabaseAttributeFilter(Cursor paramCursor)
  {
    super(paramCursor.getString(paramCursor.getColumnIndex("api_tag")), paramCursor.getString(paramCursor.getColumnIndex("localized_label")));
    mId = paramCursor.getLong(paramCursor.getColumnIndex("id"));
  }
  
  public DatabaseAttributeFilter(AttributeFilter paramAttributeFilter)
  {
    super(paramAttributeFilter);
    mId = -1L;
  }
  
  public void save(z paramz, DatabaseFilter paramDatabaseFilter)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("api_tag", getAlias());
    localContentValues.put("localized_label", getLocalizedLabel());
    localContentValues.put("filter_id", Long.valueOf(paramDatabaseFilter.getId()));
    mId = Long.parseLong(paramz.a("id", String.valueOf(mId), localContentValues));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.savedsearch.DatabaseAttributeFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */