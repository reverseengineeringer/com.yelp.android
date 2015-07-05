package com.yelp.android.appdata.webrequests;

import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.util.p;
import com.yelp.android.util.q;
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

public class co
  extends ah
{
  private String b;
  
  public co(YelpBusiness paramYelpBusiness, boolean paramBoolean, String paramString)
  {
    super(null, paramYelpBusiness, paramBoolean);
    b = paramString;
    a.add("open_hours_image");
  }
  
  public co(String paramString)
  {
    b = paramString;
  }
  
  public HashMap<String, String> b()
  {
    Object localObject = getPostParameters();
    HashMap localHashMap = new HashMap();
    localObject = ((List)localObject).iterator();
    while (((Iterator)localObject).hasNext())
    {
      NameValuePair localNameValuePair = (NameValuePair)((Iterator)localObject).next();
      localHashMap.put(localNameValuePair.getName(), localNameValuePair.getValue());
    }
    localHashMap.put("image_path", b);
    return localHashMap;
  }
  
  protected HttpEntity getPostEntity()
  {
    try
    {
      Object localObject = new File(b);
      localObject = new q("open_hours_image".getBytes(), "open_hours_image".getBytes(), null, new FileInputStream((File)localObject), ((File)localObject).length());
      localObject = new p(getPostParameters(), Collections.singleton(localObject), null);
      return (HttpEntity)localObject;
    }
    catch (FileNotFoundException localFileNotFoundException)
    {
      throw new YelpException(localFileNotFoundException, YelpException.YPErrorInvalidData);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */