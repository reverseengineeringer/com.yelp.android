package com.yelp.android.av;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

class d
{
  public final String a;
  public final String b;
  public final String c;
  public final String d;
  
  d(String paramString1, String paramString2, String paramString3, String paramString4)
  {
    a = paramString1;
    b = paramString2;
    c = paramString3;
    d = paramString4;
  }
  
  public static d a(InputStream paramInputStream)
    throws IOException
  {
    Properties localProperties = new Properties();
    localProperties.load(paramInputStream);
    return a(localProperties);
  }
  
  public static d a(Properties paramProperties)
  {
    return new d(paramProperties.getProperty("version_code"), paramProperties.getProperty("version_name"), paramProperties.getProperty("build_id"), paramProperties.getProperty("package_name"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.av.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */