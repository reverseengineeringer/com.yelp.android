package com.yelp.android.search;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.Context;
import android.content.pm.ProviderInfo;
import android.database.Cursor;
import android.database.MatrixCursor;
import android.net.Uri;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.LocationService;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fw;
import com.yelp.android.debug.Debug;
import com.yelp.android.services.d;
import com.yelp.android.services.x;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import org.apache.http.client.HttpClient;

public class YelpSuggestionProvider
  extends ContentProvider
{
  public static final Uri a = Uri.parse("content://com.yelp.android.search.YelpSuggestionProvider");
  LocationService b;
  HttpClient c;
  Debug d;
  n e;
  
  public void attachInfo(Context paramContext, ProviderInfo paramProviderInfo)
  {
    super.attachInfo(paramContext, paramProviderInfo);
    if (paramContext == null) {
      return;
    }
    if (AppData.d())
    {
      paramProviderInfo = AppData.b();
      b = paramProviderInfo.n();
      e = paramProviderInfo.h();
    }
    for (d = paramProviderInfo.o();; d = new Debug(paramContext, e))
    {
      c = d.a(paramContext, d, e);
      return;
      b = LocationService.c(paramContext);
      e = new n(paramContext, Locale.getDefault(), x.g());
    }
  }
  
  public int delete(Uri paramUri, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
  
  public String getType(Uri paramUri)
  {
    return null;
  }
  
  public Uri insert(Uri paramUri, ContentValues paramContentValues)
  {
    return null;
  }
  
  public boolean onCreate()
  {
    return true;
  }
  
  public Cursor query(Uri paramUri, String[] paramArrayOfString1, String paramString1, String[] paramArrayOfString2, String paramString2)
  {
    if (paramArrayOfString2.length < 1) {
      return null;
    }
    paramUri = paramArrayOfString2[0].toUpperCase(Locale.getDefault());
    if (TextUtils.isEmpty(paramUri)) {
      return null;
    }
    paramArrayOfString1 = new ArrayList();
    paramString1 = b.c();
    if (paramString1 == null) {
      paramUri = new fw(paramUri, null);
    }
    try
    {
      for (;;)
      {
        paramUri = (List)paramUri.executeSynchronously(null, d, false);
        if (paramUri != null) {
          paramArrayOfString1.addAll(paramUri);
        }
        paramUri = new MatrixCursor(new String[] { "_id", "suggest_text_1", "suggest_intent_data" }, 0);
        paramArrayOfString1 = paramArrayOfString1.iterator();
        while (paramArrayOfString1.hasNext())
        {
          paramString1 = (String)paramArrayOfString1.next();
          paramUri.addRow(new Object[] { Integer.toString(paramString1.hashCode()), paramString1, paramString1 });
        }
        paramUri = new fw(paramUri, paramString1, null, null);
      }
      return paramUri;
    }
    catch (YelpException paramUri)
    {
      return null;
    }
  }
  
  public int update(Uri paramUri, ContentValues paramContentValues, String paramString, String[] paramArrayOfString)
  {
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.search.YelpSuggestionProvider
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */