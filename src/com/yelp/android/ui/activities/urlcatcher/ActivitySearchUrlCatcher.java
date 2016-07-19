package com.yelp.android.ui.activities.urlcatcher;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import com.yelp.android.analytics.n;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.BusinessSearchRequest.SearchMode;
import com.yelp.android.appdata.webrequests.core.MetricsManager;
import com.yelp.android.appdata.webrequests.eo;
import com.yelp.android.database.e;
import com.yelp.android.serializable.Category;
import com.yelp.android.serializable.Filter;
import com.yelp.android.serializable.GenericSearchFilter;
import com.yelp.android.serializable.PlatformFilter;
import com.yelp.android.serializable.PlatformGenericSearchFilter;
import com.yelp.android.serializable.ReservationFilter;
import com.yelp.android.serializable.ReservationGenericSearchFilter;
import com.yelp.android.serializable.Sort;
import com.yelp.android.services.f;
import com.yelp.android.ui.activities.reservations.c;
import com.yelp.android.ui.activities.search.SearchBusinessesByList;
import com.yelp.android.ui.activities.support.YelpUrlCatcherActivity;
import com.yelp.android.ui.util.ae;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;

public class ActivitySearchUrlCatcher
  extends YelpUrlCatcherActivity
{
  private static int a(String paramString, int paramInt)
  {
    try
    {
      int i = Integer.valueOf(paramString).intValue();
      return i;
    }
    catch (NumberFormatException paramString) {}
    return paramInt;
  }
  
  private void a(Uri paramUri, Filter paramFilter)
  {
    paramUri = a("attribs_filter", paramUri);
    if (!TextUtils.isEmpty(paramUri))
    {
      paramUri = paramUri.split(",");
      if (paramUri.length > 0)
      {
        int j = paramUri.length;
        int i = 0;
        while (i < j)
        {
          paramFilter.a(new GenericSearchFilter(paramUri[i], true, false));
          i += 1;
        }
      }
    }
  }
  
  private void b(Uri paramUri, Filter paramFilter)
  {
    String str = a("ytp_st", paramUri);
    paramUri = a("ytp_loc", paramUri);
    if (TextUtils.equals(str, "pickup")) {
      paramFilter.a(new PlatformGenericSearchFilter(new PlatformFilter("pickup", null), true));
    }
    do
    {
      return;
      if (TextUtils.equals(str, "delivery_default"))
      {
        paramFilter.a(new PlatformGenericSearchFilter(new PlatformFilter("delivery_current_location", null), true));
        return;
      }
    } while ((!TextUtils.equals(str, "delivery")) || (TextUtils.isEmpty(paramUri)));
    paramFilter.a(new PlatformGenericSearchFilter(new PlatformFilter("delivery", paramUri), true));
  }
  
  private void c(Uri paramUri, Filter paramFilter)
  {
    Object localObject1 = a("rez_covers", paramUri);
    Object localObject2 = a("rez_date", paramUri);
    paramUri = a("rez_time", paramUri);
    if ((StringUtils.d((String)localObject1)) && (StringUtils.d((String)localObject2)) && (StringUtils.d(paramUri))) {
      return;
    }
    int i = Math.min(a((String)localObject1, 2), 20);
    localObject1 = Calendar.getInstance();
    if (!StringUtils.d((String)localObject2)) {}
    try
    {
      ((Calendar)localObject1).setTime(new SimpleDateFormat("yyyy-MM-dd", Locale.US).parse((String)localObject2));
      if (StringUtils.d(paramUri)) {}
    }
    catch (ParseException localParseException1)
    {
      for (;;)
      {
        try
        {
          localObject2 = new SimpleDateFormat("HHmm", Locale.US).parse(paramUri);
          ((Calendar)localObject1).set(11, ((Date)localObject2).getHours());
          ((Calendar)localObject1).set(12, ((Date)localObject2).getMinutes());
          if (!((Calendar)localObject1).after(Calendar.getInstance())) {
            ((Calendar)localObject1).setTime(c.b());
          }
          paramFilter.a(new ReservationGenericSearchFilter(new ReservationFilter(i, ((Calendar)localObject1).getTime()), true));
          return;
          localParseException1 = localParseException1;
          YelpLog.remoteError("SearchUrlInterceptor", "Could not parse search url param rez_date with value: " + paramUri);
        }
        catch (ParseException localParseException2)
        {
          YelpLog.remoteError("SearchUrlInterceptor", "Could not parse search url param rez_time with value: " + paramUri);
          continue;
        }
        f.a((Calendar)localObject1, 15, 19, 23).getTime();
      }
    }
  }
  
  protected boolean a()
  {
    return true;
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Uri localUri;
    eo localeo;
    try
    {
      ae.a(getIntent()).a("android.intent.action.VIEW", "http", "/search").a("android.intent.action.VIEW", "yelp", "/search").a("android.intent.action.VIEW", "yelp4", "/search").a("android.intent.action.VIEW", "yelp4.5", "/search").a(new String[] { "search" }).a();
      localUri = getIntent().getData();
      AppData.b().k().a(new n(localUri));
      localeo = new eo();
      if ((getIntent().getData() != null) && ("hot_new_businesses".equals(getIntent().getData().getLastPathSegment())))
      {
        localeo.a(BusinessSearchRequest.SearchMode.DEFAULT);
        localeo.b(AppData.b().getString(2131165995));
        paramBundle = SearchBusinessesByList.a(this, localeo.a());
        paramBundle.putExtra("yelp:external_request", true);
        startActivity(paramBundle);
        finish();
        return;
      }
    }
    catch (SecurityException paramBundle)
    {
      YelpLog.remoteError(paramBundle);
      finish();
      return;
    }
    paramBundle = a("find_desc", localUri);
    localeo.b(paramBundle);
    localeo.a(a("find_loc", localUri));
    String str = a("cflt", localUri);
    Category localCategory = null;
    if (!TextUtils.isEmpty(str))
    {
      localCategory = AppData.b().j().a(str);
      localeo.a(localCategory);
    }
    if ("1".equalsIgnoreCase(a("check_in_offers", localUri)))
    {
      if (paramBundle == null) {
        break label391;
      }
      label276:
      if (localCategory == null) {
        break label398;
      }
      paramBundle = paramBundle + " " + localCategory.a();
      label308:
      if (!StringUtils.d(paramBundle)) {
        break label401;
      }
    }
    for (;;)
    {
      localeo.b(paramBundle + getString(2131165617));
      paramBundle = new Filter(Sort.fromQueryParameter(a("sortby", localUri)));
      a(localUri, paramBundle);
      b(localUri, paramBundle);
      c(localUri, paramBundle);
      localeo.a(paramBundle);
      break;
      label391:
      paramBundle = "";
      break label276;
      label398:
      break label308;
      label401:
      paramBundle = paramBundle + " ";
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.urlcatcher.ActivitySearchUrlCatcher
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */