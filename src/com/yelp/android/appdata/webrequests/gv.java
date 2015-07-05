package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.p;
import com.yelp.android.util.q;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.io.File;
import java.io.FileInputStream;
import java.util.Collections;
import org.apache.http.HttpEntity;
import org.json.JSONObject;

public class gv
  extends g<Void, Void, gw>
{
  private final boolean a;
  private final HttpEntity b;
  
  public gv(String paramString1, String paramString2, boolean paramBoolean, m<gw> paramm)
  {
    super(ApiRequest.RequestType.POST, "account/add_image", paramm);
    if (!TextUtils.isEmpty(paramString2)) {
      addPostParam("caption", paramString2);
    }
    addPostParam("primary", paramBoolean);
    paramString1 = new File(paramString1);
    paramString1 = new q(com.yelp.android.util.m.i, com.yelp.android.util.m.i, null, new FileInputStream(paramString1), paramString1.length());
    b = new p(getPostParameters(), Collections.singleton(paramString1), null);
    a = paramBoolean;
  }
  
  public gw a(JSONObject paramJSONObject)
  {
    return new gw((Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo")), a);
  }
  
  protected HttpEntity getPostEntity()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */