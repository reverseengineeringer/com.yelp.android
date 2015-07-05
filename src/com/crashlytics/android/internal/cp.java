package com.crashlytics.android.internal;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.DatabaseErrorHandler;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import java.io.File;

final class cp
  extends ContextWrapper
{
  private final String a;
  
  public cp(Context paramContext, String paramString)
  {
    super(paramContext);
    a = (".TwitterSdk/" + paramString);
  }
  
  public final File getCacheDir()
  {
    return new File(super.getCacheDir(), a);
  }
  
  public final File getDatabasePath(String paramString)
  {
    File localFile = new File(super.getDatabasePath(paramString).getParentFile(), a);
    localFile.mkdirs();
    return new File(localFile, paramString);
  }
  
  public final File getExternalCacheDir()
  {
    return new File(super.getExternalCacheDir(), a);
  }
  
  public final File getExternalFilesDir(String paramString)
  {
    return new File(super.getExternalFilesDir(paramString), a);
  }
  
  public final File getFilesDir()
  {
    return new File(super.getFilesDir(), a);
  }
  
  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString), paramCursorFactory);
  }
  
  @TargetApi(11)
  public final SQLiteDatabase openOrCreateDatabase(String paramString, int paramInt, SQLiteDatabase.CursorFactory paramCursorFactory, DatabaseErrorHandler paramDatabaseErrorHandler)
  {
    return SQLiteDatabase.openOrCreateDatabase(getDatabasePath(paramString).getPath(), paramCursorFactory, paramDatabaseErrorHandler);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */