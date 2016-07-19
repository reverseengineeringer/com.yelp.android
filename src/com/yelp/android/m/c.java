package com.yelp.android.m;

import android.app.Notification;
import android.app.Notification.Builder;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.Build.VERSION;
import android.os.SystemClock;
import android.support.v4.app.aa.a;
import android.support.v4.app.w;
import android.widget.RemoteViews;
import com.yelp.android.j.a.d;
import com.yelp.android.j.a.f;
import com.yelp.android.j.a.g;
import com.yelp.android.j.a.h;
import com.yelp.android.j.a.i;
import java.text.NumberFormat;
import java.util.List;

public class c
{
  private static int a(int paramInt)
  {
    if (paramInt <= 3) {
      return a.h.notification_template_big_media_narrow;
    }
    return a.h.notification_template_big_media;
  }
  
  private static RemoteViews a(Context paramContext, aa.a parama)
  {
    if (parama.c() == null) {}
    for (int i = 1;; i = 0)
    {
      paramContext = new RemoteViews(paramContext.getPackageName(), a.h.notification_media_action);
      paramContext.setImageViewResource(a.f.action0, parama.a());
      if (i == 0) {
        paramContext.setOnClickPendingIntent(a.f.action0, parama.c());
      }
      if (Build.VERSION.SDK_INT >= 15) {
        paramContext.setContentDescription(a.f.action0, parama.b());
      }
      return paramContext;
    }
  }
  
  private static RemoteViews a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt1, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, int paramInt2, boolean paramBoolean2)
  {
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), paramInt2);
    paramInt2 = 0;
    int i = 0;
    if ((paramBitmap != null) && (Build.VERSION.SDK_INT >= 16))
    {
      localRemoteViews.setImageViewBitmap(a.f.icon, paramBitmap);
      if (paramCharSequence1 != null) {
        localRemoteViews.setTextViewText(a.f.title, paramCharSequence1);
      }
      if (paramCharSequence2 != null)
      {
        localRemoteViews.setTextViewText(a.f.text, paramCharSequence2);
        paramInt2 = 1;
      }
      if (paramCharSequence3 == null) {
        break label298;
      }
      localRemoteViews.setTextViewText(a.f.info, paramCharSequence3);
      localRemoteViews.setViewVisibility(a.f.info, 0);
      paramInt1 = 1;
      label98:
      paramInt2 = i;
      if (paramCharSequence4 != null)
      {
        paramInt2 = i;
        if (Build.VERSION.SDK_INT >= 16)
        {
          localRemoteViews.setTextViewText(a.f.text, paramCharSequence4);
          if (paramCharSequence2 == null) {
            break label390;
          }
          localRemoteViews.setTextViewText(a.f.text2, paramCharSequence2);
          localRemoteViews.setViewVisibility(a.f.text2, 0);
          paramInt2 = 1;
        }
      }
      label154:
      if ((paramInt2 != 0) && (Build.VERSION.SDK_INT >= 16))
      {
        if (paramBoolean2)
        {
          float f = paramContext.getResources().getDimensionPixelSize(a.d.notification_subtext_size);
          localRemoteViews.setTextViewTextSize(a.f.text, 0, f);
        }
        localRemoteViews.setViewPadding(a.f.line1, 0, 0, 0, 0);
      }
      if (paramLong != 0L)
      {
        if (!paramBoolean1) {
          break label407;
        }
        localRemoteViews.setViewVisibility(a.f.chronometer, 0);
        localRemoteViews.setLong(a.f.chronometer, "setBase", SystemClock.elapsedRealtime() - System.currentTimeMillis() + paramLong);
        localRemoteViews.setBoolean(a.f.chronometer, "setStarted", true);
      }
      label260:
      paramInt2 = a.f.line3;
      if (paramInt1 == 0) {
        break label431;
      }
    }
    label298:
    label390:
    label407:
    label431:
    for (paramInt1 = 0;; paramInt1 = 8)
    {
      localRemoteViews.setViewVisibility(paramInt2, paramInt1);
      return localRemoteViews;
      localRemoteViews.setViewVisibility(a.f.icon, 8);
      break;
      if (paramInt1 > 0)
      {
        if (paramInt1 > paramContext.getResources().getInteger(a.g.status_bar_notification_info_maxnum)) {
          localRemoteViews.setTextViewText(a.f.info, paramContext.getResources().getString(a.i.status_bar_notification_info_overflow));
        }
        for (;;)
        {
          localRemoteViews.setViewVisibility(a.f.info, 0);
          paramInt1 = 1;
          break;
          paramCharSequence1 = NumberFormat.getIntegerInstance();
          localRemoteViews.setTextViewText(a.f.info, paramCharSequence1.format(paramInt1));
        }
      }
      localRemoteViews.setViewVisibility(a.f.info, 8);
      paramInt1 = paramInt2;
      break label98;
      localRemoteViews.setViewVisibility(a.f.text2, 8);
      paramInt2 = i;
      break label154;
      localRemoteViews.setViewVisibility(a.f.time, 0);
      localRemoteViews.setLong(a.f.time, "setTime", paramLong);
      break label260;
    }
  }
  
  private static <T extends aa.a> RemoteViews a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, boolean paramBoolean2, PendingIntent paramPendingIntent)
  {
    int i = Math.min(paramList.size(), 5);
    paramCharSequence1 = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, a(i), false);
    paramCharSequence1.removeAllViews(a.f.media_actions);
    if (i > 0)
    {
      paramInt = 0;
      while (paramInt < i)
      {
        paramCharSequence2 = a(paramContext, (aa.a)paramList.get(paramInt));
        paramCharSequence1.addView(a.f.media_actions, paramCharSequence2);
        paramInt += 1;
      }
    }
    if (paramBoolean2)
    {
      paramCharSequence1.setViewVisibility(a.f.cancel_action, 0);
      paramCharSequence1.setInt(a.f.cancel_action, "setAlpha", paramContext.getResources().getInteger(a.g.cancel_button_image_alpha));
      paramCharSequence1.setOnClickPendingIntent(a.f.cancel_action, paramPendingIntent);
      return paramCharSequence1;
    }
    paramCharSequence1.setViewVisibility(a.f.cancel_action, 8);
    return paramCharSequence1;
  }
  
  private static <T extends aa.a> RemoteViews a(Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, int[] paramArrayOfInt, boolean paramBoolean2, PendingIntent paramPendingIntent)
  {
    paramCharSequence1 = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, a.h.notification_template_media, true);
    int j = paramList.size();
    int i;
    if (paramArrayOfInt == null)
    {
      paramInt = 0;
      paramCharSequence1.removeAllViews(a.f.media_actions);
      if (paramInt > 0) {
        i = 0;
      }
    }
    else
    {
      for (;;)
      {
        if (i >= paramInt) {
          break label152;
        }
        if (i >= j)
        {
          throw new IllegalArgumentException(String.format("setShowActionsInCompactView: action %d out of bounds (max %d)", new Object[] { Integer.valueOf(i), Integer.valueOf(j - 1) }));
          paramInt = Math.min(paramArrayOfInt.length, 3);
          break;
        }
        paramCharSequence2 = a(paramContext, (aa.a)paramList.get(paramArrayOfInt[i]));
        paramCharSequence1.addView(a.f.media_actions, paramCharSequence2);
        i += 1;
      }
    }
    label152:
    if (paramBoolean2)
    {
      paramCharSequence1.setViewVisibility(a.f.end_padder, 8);
      paramCharSequence1.setViewVisibility(a.f.cancel_action, 0);
      paramCharSequence1.setOnClickPendingIntent(a.f.cancel_action, paramPendingIntent);
      paramCharSequence1.setInt(a.f.cancel_action, "setAlpha", paramContext.getResources().getInteger(a.g.cancel_button_image_alpha));
      return paramCharSequence1;
    }
    paramCharSequence1.setViewVisibility(a.f.end_padder, 0);
    paramCharSequence1.setViewVisibility(a.f.cancel_action, 8);
    return paramCharSequence1;
  }
  
  public static <T extends aa.a> void a(Notification paramNotification, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, boolean paramBoolean2, PendingIntent paramPendingIntent)
  {
    bigContentView = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, paramList, paramBoolean2, paramPendingIntent);
    if (paramBoolean2) {
      flags |= 0x2;
    }
  }
  
  public static <T extends aa.a> void a(w paramw, Context paramContext, CharSequence paramCharSequence1, CharSequence paramCharSequence2, CharSequence paramCharSequence3, int paramInt, Bitmap paramBitmap, CharSequence paramCharSequence4, boolean paramBoolean1, long paramLong, List<T> paramList, int[] paramArrayOfInt, boolean paramBoolean2, PendingIntent paramPendingIntent)
  {
    paramContext = a(paramContext, paramCharSequence1, paramCharSequence2, paramCharSequence3, paramInt, paramBitmap, paramCharSequence4, paramBoolean1, paramLong, paramList, paramArrayOfInt, paramBoolean2, paramPendingIntent);
    paramw.a().setContent(paramContext);
    if (paramBoolean2) {
      paramw.a().setOngoing(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.m.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */