package com.yelp.android.services.push;

import android.app.IntentService;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.support.v4.app.x.b;
import android.support.v4.app.x.c;
import android.text.TextUtils;
import com.yelp.android.appdata.AppData;
import com.yelp.android.services.g;
import com.yelp.android.ui.KahunaNotificationCatcherActivity;
import com.yelp.android.ui.activities.RootActivity;
import com.yelp.android.util.YelpLog;
import java.io.IOException;
import java.net.URL;
import java.net.URLConnection;

public class SendKahunaNotificationService
  extends IntentService
{
  public SendKahunaNotificationService()
  {
    super("SendKahunaNotificationService");
  }
  
  public static Intent a(Intent paramIntent)
  {
    return (Intent)paramIntent.getParcelableExtra("launch_intent");
  }
  
  private void a(String paramString1, String paramString2, Bitmap paramBitmap)
  {
    DefaultPushNotificationHandler localDefaultPushNotificationHandler = new DefaultPushNotificationHandler(AppData.b(), Notifier.NotificationType.Unknown, null, null);
    if (!TextUtils.isEmpty(paramString2))
    {
      Intent localIntent = new Intent(AppData.b(), KahunaNotificationCatcherActivity.class);
      localIntent.putExtra("launch_intent", localDefaultPushNotificationHandler.a(Uri.parse(paramString2), Notifier.NotificationType.Unknown));
      localIntent.setData(Uri.parse(paramString2));
      paramString2 = localIntent;
      if (paramBitmap != null) {
        break label158;
      }
    }
    label158:
    for (paramBitmap = new x.c().a(paramString1);; paramBitmap = new x.b().a(paramString1).a(paramBitmap))
    {
      paramString2 = localDefaultPushNotificationHandler.a(paramString1, paramString1, 0, paramBitmap, null, 24, PendingIntent.getActivity(AppData.b(), 0, paramString2, 0));
      ((NotificationManager)AppData.b().getSystemService("notification")).notify("kahuna", g.a(paramString1, paramString1.hashCode()), paramString2);
      return;
      paramString2 = new Intent(AppData.b(), RootActivity.class);
      paramString2.setFlags(268435456);
      break;
    }
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    String str1 = paramIntent.getStringExtra("message");
    String str2 = paramIntent.getStringExtra("payload_url");
    String str3 = paramIntent.getStringExtra("image_url");
    if (str3 != null) {}
    for (;;)
    {
      try
      {
        a(str1, str2, BitmapFactory.decodeStream(new URL(str3).openConnection().getInputStream()));
        KahunaPushNotificationReceiver.a(paramIntent);
        return;
      }
      catch (IOException localIOException)
      {
        YelpLog.e(this, "PhotoLikePushNotificationHandler Bitmap error: " + localIOException.toString(), localIOException);
        continue;
      }
      a(localIOException, str2, null);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.SendKahunaNotificationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */