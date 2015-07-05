package com.google.android.gms.internal;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.provider.CalendarContract.Events;
import android.text.TextUtils;
import com.google.android.gms.R.string;
import java.util.Map;

@ey
public class dh
{
  private final Context mContext;
  private final gu mo;
  private final Map<String, String> rd;
  private String re;
  private long rf;
  private long rg;
  private String rh;
  private String ri;
  
  public dh(gu paramgu, Map<String, String> paramMap)
  {
    mo = paramgu;
    rd = paramMap;
    mContext = paramgu.dI();
    bQ();
  }
  
  private String A(String paramString)
  {
    if (TextUtils.isEmpty((CharSequence)rd.get(paramString))) {
      return "";
    }
    return (String)rd.get(paramString);
  }
  
  private void bQ()
  {
    re = A("description");
    rh = A("summary");
    rf = gi.O((String)rd.get("start"));
    rg = gi.O((String)rd.get("end"));
    ri = A("location");
  }
  
  Intent createIntent()
  {
    Intent localIntent = new Intent("android.intent.action.EDIT").setData(CalendarContract.Events.CONTENT_URI);
    localIntent.putExtra("title", rh);
    localIntent.putExtra("eventLocation", ri);
    localIntent.putExtra("description", re);
    localIntent.putExtra("beginTime", rf);
    localIntent.putExtra("endTime", rg);
    localIntent.setFlags(268435456);
    return localIntent;
  }
  
  public void execute()
  {
    if (!new bl(mContext).bt())
    {
      gr.W("This feature is not available on this version of the device.");
      return;
    }
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(mContext);
    localBuilder.setTitle(ga.c(R.string.create_calendar_title, "Create calendar event"));
    localBuilder.setMessage(ga.c(R.string.create_calendar_message, "Allow Ad to create a calendar event?"));
    localBuilder.setPositiveButton(ga.c(R.string.accept, "Accept"), new dh.1(this));
    localBuilder.setNegativeButton(ga.c(R.string.decline, "Decline"), new dh.2(this));
    localBuilder.create().show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */