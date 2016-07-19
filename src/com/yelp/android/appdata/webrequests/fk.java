package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.g;
import com.yelp.android.util.j;
import com.yelp.android.util.j.a;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.Collections;
import org.apache.http.HttpEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class fk
  extends b<Void, Void, a>
{
  private final boolean a;
  private final HttpEntity g;
  
  public fk(String paramString1, String paramString2, boolean paramBoolean, ApiRequest.b<a> paramb)
    throws FileNotFoundException
  {
    super(ApiRequest.RequestType.POST, "account/add_image", paramb);
    if (!TextUtils.isEmpty(paramString2)) {
      b("caption", paramString2);
    }
    b("primary", paramBoolean);
    paramString1 = new File(paramString1);
    paramString1 = new j.a(g.i, g.i, null, new FileInputStream(paramString1), paramString1.length());
    g = new j(t(), Collections.singleton(paramString1), null);
    a = paramBoolean;
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")), a);
  }
  
  protected HttpEntity a()
    throws YelpException
  {
    return g;
  }
  
  public static class a
  {
    final Photo a;
    final boolean b;
    
    public a(Photo paramPhoto, boolean paramBoolean)
    {
      a = paramPhoto;
      b = paramBoolean;
    }
    
    public Photo a()
    {
      return a;
    }
    
    public boolean b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */