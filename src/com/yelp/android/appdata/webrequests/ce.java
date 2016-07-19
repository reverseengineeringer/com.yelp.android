package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.j;
import com.yelp.android.util.j.a;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.NameValuePair;

public class ce
  extends ah
{
  private String g;
  
  public ce(YelpBusiness paramYelpBusiness, boolean paramBoolean1, String paramString, boolean paramBoolean2)
  {
    super(null, paramYelpBusiness, paramBoolean1, paramBoolean2);
    g = paramString;
    a.add("open_hours_image");
  }
  
  public ce(String paramString)
  {
    g = paramString;
  }
  
  protected HttpEntity a()
    throws YelpException
  {
    try
    {
      Object localObject = new File(g);
      localObject = new j.a("open_hours_image".getBytes(), "open_hours_image".getBytes(), null, new FileInputStream((File)localObject), ((File)localObject).length());
      localObject = new j(t(), Collections.singleton(localObject), null);
      return (HttpEntity)localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new YelpException(localFileNotFoundException, YelpException.YPErrorInvalidData);
    }
  }
  
  public HashMap<String, String> d()
  {
    Object localObject = t();
    HashMap localHashMap = new HashMap();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)((Iterator)localObject).next();
      localHashMap.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    localHashMap.put("image_path", g);
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */