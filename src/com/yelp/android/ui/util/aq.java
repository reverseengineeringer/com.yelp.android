package com.yelp.android.ui.util;

import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.util.Log;
import java.io.File;
import java.io.FileOutputStream;
import java.io.InputStream;

public final class aq
  extends ImageProcessingTask
{
  public aq(File paramFile, Intent paramIntent, al paramal)
  {
    super(paramFile, paramIntent, paramal);
  }
  
  private String a(Cursor paramCursor)
  {
    try
    {
      int i = paramCursor.getColumnIndexOrThrow("_data");
      paramCursor.moveToFirst();
      String str = paramCursor.getString(i);
      return str;
    }
    finally
    {
      paramCursor.close();
    }
  }
  
  public ImageInputHelper.ImageSource a()
  {
    return ImageInputHelper.ImageSource.GALLERY;
  }
  
  public String b(Context paramContext)
  {
    Object localObject = paramContext.getContentResolver().query(a.getData(), new String[] { "_data" }, null, null, null);
    if (localObject != null) {}
    for (localObject = a((Cursor)localObject);; localObject = null)
    {
      FileOutputStream localFileOutputStream;
      if (localObject == null) {
        try
        {
          paramContext = paramContext.getContentResolver().openInputStream(a.getData());
          localFileOutputStream = new FileOutputStream(c);
          byte[] arrayOfByte = new byte['က'];
          for (;;)
          {
            int i = paramContext.read(arrayOfByte);
            if (i == -1) {
              break;
            }
            localFileOutputStream.write(arrayOfByte, 0, i);
          }
          return (String)localObject;
        }
        catch (Exception paramContext)
        {
          Log.e(a().name(), "Problem downloading remote image from " + a.getDataString(), paramContext);
        }
      }
      localFileOutputStream.flush();
      localFileOutputStream.close();
      paramContext = c.getAbsolutePath();
      return paramContext;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.aq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */