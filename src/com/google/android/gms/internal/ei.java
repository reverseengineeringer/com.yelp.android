package com.google.android.gms.internal;

import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.s;
import com.yelp.android.ba.a.e;
import java.util.Map;

@fv
public class ei
  extends eo
{
  private final Map<String, String> a;
  private final Context b;
  private String c;
  private long d;
  private long e;
  private String f;
  private String g;
  
  public ei(ib paramib, Map<String, String> paramMap)
  {
    super(paramib, "createCalendarEvent");
    a = paramMap;
    b = paramib.f();
    c();
  }
  
  private String a(String paramString)
  {
    if (TextUtils.isEmpty((CharSequence)a.get(paramString))) {
      return "";
    }
    return (String)a.get(paramString);
  }
  
  private void c()
  {
    c = a("description");
    f = a("summary");
    d = e("start_ticks");
    e = e("end_ticks");
    g = a("location");
  }
  
  private long e(String paramString)
  {
    paramString = (String)a.get(paramString);
    if (paramString == null) {
      return -1L;
    }
    try
    {
      long l = Long.parseLong(paramString);
      return l;
    }
    catch (NumberFormatException paramString) {}
    return -1L;
  }
  
  public void a()
  {
    if (b == null)
    {
      b("Activity context is not available.");
      return;
    }
    if (!s.e().e(b).f())
    {
      b("This feature is not available on the device.");
      return;
    }
    AlertDialog.Builder localBuilder = s.e().d(b);
    localBuilder.setTitle(s.h().a(a.e.create_calendar_title, "Create calendar event"));
    localBuilder.setMessage(s.h().a(a.e.create_calendar_message, "Allow Ad to create a calendar event?"));
    localBuilder.setPositiveButton(s.h().a(a.e.accept, "Accept"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = b();
        s.e().a(ei.a(ei.this), paramAnonymousDialogInterface);
      }
    });
    localBuilder.setNegativeButton(s.h().a(a.e.decline, "Decline"), new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        b("Operation denied by user.");
      }
    });
    localBuilder.create().show();
  }
  
  @TargetApi(14)
  Intent b()
  {
    Intent localIntent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
    localIntent.putExtra("title", c);
    localIntent.putExtra("eventLocation", g);
    localIntent.putExtra("description", f);
    if (d > -1L) {
      localIntent.putExtra("beginTime", d);
    }
    if (e > -1L) {
      localIntent.putExtra("endTime", e);
    }
    localIntent.setFlags(268435456);
    return localIntent;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ei
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */