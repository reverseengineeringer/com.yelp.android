package com.yelp.android.debug;

import android.content.Context;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.m;

class f<Request extends ApiRequest<?, ?, Result>, Result>
{
  private Request b;
  private String c;
  private TextView d;
  private final m<Result> e = new g(this);
  
  public f(Context paramContext, Request paramRequest)
  {
    this(paramContext, paramRequest, localApiRequest.getClass().getSimpleName() + "_" + FreezerFragmentDebugFragment.b(paramContext));
    FreezerFragmentDebugFragment.a(paramContext, 1);
    localApiRequest.setCallback(e);
    b = localApiRequest;
  }
  
  public f(FreezerFragmentDebugFragment paramFreezerFragmentDebugFragment, Context paramContext, String paramString)
  {
    c = paramString;
    d = new TextView(paramContext);
    d.setText(c + " is running");
    FreezerFragmentDebugFragment.c(paramFreezerFragmentDebugFragment).addView(d);
  }
  
  public String a()
  {
    return c;
  }
  
  public void a(FreezerFragmentDebugFragment paramFreezerFragmentDebugFragment)
  {
    paramFreezerFragmentDebugFragment.a(c, b);
  }
  
  public void b(FreezerFragmentDebugFragment paramFreezerFragmentDebugFragment)
  {
    b = paramFreezerFragmentDebugFragment.a(c, b, e);
  }
  
  public boolean b()
  {
    return (b == null) || (b.isCompleted());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.debug.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */