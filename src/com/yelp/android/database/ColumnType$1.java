package com.yelp.android.database;

import android.content.ContentValues;
import android.database.Cursor;

 enum ColumnType$1
{
  ColumnType$1()
  {
    super(paramString, paramInt, null);
  }
  
  public void writeContentValues(Cursor paramCursor, String paramString, int paramInt, ContentValues paramContentValues)
  {
    paramContentValues.put(paramString, paramCursor.getBlob(paramInt));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.database.ColumnType.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */