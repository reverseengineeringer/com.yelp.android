package com.yelp.android.appdata.webrequests;

import android.util.Pair;
import com.yelp.android.av.h;
import java.io.File;
import java.util.List;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.entity.FileEntity;

public class hb
  extends h
{
  private final String a;
  private final String b;
  private final List<Pair<String, String>> c;
  
  public hb(String paramString1, String paramString2, List<Pair<String, String>> paramList)
  {
    super(ApiRequest.RequestType.PUT, paramString1, null);
    a = paramString1;
    b = paramString2;
    c = paramList;
  }
  
  public List<Pair<String, String>> getExtraRequestHeaders()
  {
    return c;
  }
  
  protected HttpEntity getPostEntity()
  {
    return new FileEntity(new File(b), null);
  }
  
  protected String getUri()
  {
    return a;
  }
  
  protected boolean isYelpRequest()
  {
    return false;
  }
  
  protected void validateResponse(HttpResponse paramHttpResponse)
  {
    super.validateResponse(paramHttpResponse);
    int i = paramHttpResponse.getStatusLine().getStatusCode();
    int j = paramHttpResponse.getAllHeaders().length;
    if ((i == 200) && (j == 0)) {
      throw new YelpException(YelpException.YPErrorServerResponse);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.hb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */