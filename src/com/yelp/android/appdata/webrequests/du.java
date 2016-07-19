package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.appdata.webrequests.core.c.a;
import java.util.ArrayList;
import org.apache.commons.lang3.b;

public class du
  extends c
{
  public du(ArrayList<String> paramArrayList, c.a parama)
  {
    super(ApiRequest.RequestType.POST, "/reviews/draft/delete_multiple", parama);
    b("business_ids", b.a(paramArrayList, ','));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.du
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */