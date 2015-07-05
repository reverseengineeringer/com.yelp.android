package com.yelp.android.ui.util;

import android.media.ExifInterface;
import android.util.Log;

public class co
{
  public static int a(String paramString)
  {
    try
    {
      String str = new ExifInterface(paramString).getAttribute("Orientation");
      if (str == null) {
        break label132;
      }
      if (str.length() < 0) {
        return 0;
      }
      int i = Integer.parseInt(str);
      switch (i)
      {
      case 2: 
      case 4: 
      case 5: 
      case 7: 
      default: 
        return 0;
      }
    }
    catch (Exception localException)
    {
      Log.e("UtilImageRotateExif", "Error reading exif header on file: [" + paramString + "]: " + localException.toString(), localException);
    }
    return 180;
    return 90;
    return 270;
    label132:
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */