package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;

 enum ColumnType$8
{
  ColumnType$8()
  {
    super(paramString, paramInt, null);
  }
  
  public void writeContentValues(Cursor paramCursor, String paramString, int paramInt, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, Float.valueOf(paramCursor.getFloat(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.ColumnType.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */