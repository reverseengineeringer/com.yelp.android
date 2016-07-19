package com.yelp.android.services;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Parcelable.Creator;
import android.text.Html;
import com.yelp.android.analytics.g.a;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.serializable.LocalIssue;
import com.yelp.android.util.YelpLog;

public class LocalIssueShareFormatter
  extends ShareFormatter<LocalIssue>
{
  public static final Parcelable.Creator<LocalIssueShareFormatter> CREATOR = new LocalIssueShareFormatter.1();
  private final String a = AppData.b().getString(2131166670);
  private e.a b;
  
  public LocalIssueShareFormatter(LocalIssue paramLocalIssue)
  {
    super(paramLocalIssue);
  }
  
  protected Uri a()
  {
    return Uri.parse(((LocalIssue)c()).a());
  }
  
  public String a(Context paramContext)
  {
    if (b == null) {
      YelpLog.remoteError(this, "Package Information is null. Make sure you call #formatData first.");
    }
    while (!b.c()) {
      return paramContext.getString(2131165626, new Object[] { a, ((LocalIssue)c()).e() });
    }
    return paramContext.getString(2131165626, new Object[] { paramContext.getString(2131165980), ((LocalIssue)c()).e() });
  }
  
  public void a(Context paramContext, e.a parama, Intent paramIntent)
  {
    b = parama;
    if (b.e())
    {
      paramIntent.putExtra("android.intent.extra.SUBJECT", paramContext.getString(2131166670));
      paramIntent.putExtra("android.intent.extra.TEXT", Html.fromHtml(paramContext.getString(2131165626, new Object[] { e.a(a, a().toString()), ((LocalIssue)c()).e() })));
      return;
    }
    super.a(paramContext, b, paramIntent);
  }
  
  public g.a b()
  {
    return new g.a().a(EventIri.LocalIssueShare);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.LocalIssueShareFormatter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */