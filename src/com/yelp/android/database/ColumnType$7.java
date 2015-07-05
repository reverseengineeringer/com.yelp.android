package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;

 enum ColumnType$7
{
  ColumnType$7()
  {
    super(paramString, paramInt, null);
  }
  
  public void writeContentValues(Cursor paramCursor, String paramString, int paramInt, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, Double.valueOf(paramCursor.getDouble(paramInt)));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.ColumnType.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */