package com.yelp.android.debug;

import android.os.Environment;
import java.io.File;

public class a
{
  public static File a(String paramString)
  {
    return new File(new File(Environment.getExternalStorageDirectory(), "yelp-mocks"), paramString);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */