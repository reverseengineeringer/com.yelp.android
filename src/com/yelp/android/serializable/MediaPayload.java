package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaPayload
  extends _MediaPayload
{
  public static final JsonParser.DualCreator<MediaPayload> CREATOR = new MediaPayload.1();
  
  public int a()
  {
    if (a.size() == 1) {
      return ((MediaCategory)a.values().iterator().next()).c();
    }
    return a("all_media");
  }
  
  public int a(String paramString)
  {
    return ((MediaCategory)a.get(paramString)).c();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (a == null)
    {
      a = new HashMap();
      a.put("all_media", MediaCategory.CREATOR.parse(paramJSONObject));
    }
  }
  
  public int b()
  {
    if (a.size() == 1) {
      return ((MediaCategory)a.values().iterator().next()).b();
    }
    return b("all_media");
  }
  
  public int b(String paramString)
  {
    return ((MediaCategory)a.get(paramString)).b();
  }
  
  public ArrayList<Media> c()
  {
    if (a.size() == 1) {
      return ((MediaCategory)a.values().iterator().next()).a();
    }
    return c("all_media");
  }
  
  public ArrayList<Media> c(String paramString)
  {
    return ((MediaCategory)a.get(paramString)).a();
  }
  
  public ArrayList<Photo> d()
  {
    return ((MediaCategory)a.get("all_media")).g();
  }
  
  public ArrayList<Video> e()
  {
    return ((MediaCategory)a.get("all_media")).f();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.MediaPayload
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */