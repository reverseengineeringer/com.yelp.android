package com.yelp.android.cu;

import android.content.Context;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.h;
import io.fabric.sdk.android.k;
import java.io.File;

public class a
{
  private final Context a;
  private final String b;
  private final String c;
  
  public a(h paramh)
  {
    if (paramh.B() == null) {
      throw new IllegalStateException("Cannot get directory before context has been set. Call Fabric.with() first");
    }
    a = paramh.B();
    b = paramh.D();
    c = ("Android/" + a.getPackageName());
  }
  
  public File a()
  {
    return a(a.getFilesDir());
  }
  
  File a(File paramFile)
  {
    if (paramFile != null)
    {
      if ((paramFile.exists()) || (paramFile.mkdirs())) {
        return paramFile;
      }
      c.h().d("Fabric", "Couldn't create file");
    }
    for (;;)
    {
      return null;
      c.h().a("Fabric", "Null File");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cu.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */