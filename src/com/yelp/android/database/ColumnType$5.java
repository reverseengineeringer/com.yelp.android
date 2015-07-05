package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;

 enum ColumnType$5
{
  ColumnType$5()
  {
    super(paramString, paramInt, null);
  }
  
  public void writeContentValues(Cursor paramCursor, String paramString, int paramInt, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, Short.valueOf(paramCursor.getShort(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.ColumnType.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */