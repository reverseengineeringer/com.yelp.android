package com.yelp.android.debug;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.m;

class c<Request extends ApiRequest<?, ?, Result>, Result>
{
  private Request b;
  private String c;
  private TextView d;
  private final m<Result> e = new d(this);
  
  public c(Context paramContext, Request paramRequest)
  {
    this(paramContext, paramRequest, localApiRequest.getClass().getSimpleName() + "_" + FreezerDebugActivity.b(paramContext));
    FreezerDebugActivity.a(paramContext, 1);
    localApiRequest.setCallback(e);
    b = localApiRequest;
  }
  
  public c(FreezerDebugActivity paramFreezerDebugActivity, Context paramContext, String paramString)
  {
    c = paramString;
    d = new TextView(paramContext);
    d.setText(c + " is running");
    FreezerDebugActivity.c(paramFreezerDebugActivity).addView(d);
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(FreezerDebugActivity paramFreezerDebugActivity)
  {
    paramFreezerDebugActivity.freezeRequest(c, b);
  }
  
  public void b(FreezerDebugActivity paramFreezerDebugActivity)
  {
    b = paramFreezerDebugActivity.thawRequest(c, b, e);
  }
  
  public boolean b()
  {
    return (b == null) || (b.isCompleted());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */