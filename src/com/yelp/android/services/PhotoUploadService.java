package com.yelp.android.services;

import android.app.IntentService;
import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Parcelable;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.Builder;
import android.text.TextUtils;
import android.widget.RemoteViews;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.PhotoUploadRequestBase;
import com.yelp.android.appdata.webrequests.ShareRequest.ShareType;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.Photo.TempPhoto;
import com.yelp.android.ui.util.ImageInputHelper;
import com.yelp.android.util.ObjectDirtyEvent;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;
import com.yelp.android.util.x;
import java.io.File;

public class PhotoUploadService
  extends IntentService
{
  public PhotoUploadService()
  {
    super("PhotoUploadService");
  }
  
  private static Notification b(Context paramContext, Intent paramIntent, Bitmap paramBitmap, float paramFloat)
  {
    RemoteViews localRemoteViews = new RemoteViews(paramContext.getPackageName(), 2130903405);
    localRemoteViews.setProgressBar(2131494006, 100, (int)(100.0F * paramFloat), false);
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(paramContext);
    localBuilder.setOngoing(true);
    localBuilder.setSmallIcon(17301640);
    String str = paramIntent.getStringExtra("caption");
    if (!TextUtils.isEmpty(str))
    {
      localRemoteViews.setTextViewText(2131493474, str);
      localRemoteViews.setViewVisibility(2131493474, 0);
    }
    paramIntent = paramIntent.getStringExtra("entity");
    if (!TextUtils.isEmpty(paramIntent))
    {
      localRemoteViews.setTextViewText(2131494005, paramIntent);
      localRemoteViews.setViewVisibility(2131494005, 0);
    }
    localBuilder.setContent(localRemoteViews);
    localBuilder.setContentIntent(PendingIntent.getActivity(paramContext, 1, new Intent(), 268435456));
    localBuilder.setLargeIcon(paramBitmap);
    return new NotificationCompat.BigPictureStyle(localBuilder).bigLargeIcon(BitmapFactory.decodeResource(paramContext.getResources(), 2130837624)).bigPicture(paramBitmap).setBigContentTitle(paramContext.getText(2131166796)).build();
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (paramIntent == null) {}
    for (;;)
    {
      return;
      int j = paramIntent.getIntExtra("entity_id", (int)(System.currentTimeMillis() * 1000L));
      Object localObject1 = paramIntent.getStringExtra("photo_id");
      String str = paramIntent.getStringExtra("business_id");
      PhotoUploadRequestBase localPhotoUploadRequestBase = (PhotoUploadRequestBase)paramIntent.getParcelableExtra("request");
      AppData localAppData = AppData.b();
      File localFile = localPhotoUploadRequestBase.getFile();
      if (TextUtils.equals("android.intent.action.DELETE", paramIntent.getAction()))
      {
        if (!localFile.delete())
        {
          localFile.deleteOnExit();
          YelpLog.e(this, String.format("Error deleting file for Photo[%s]", new Object[] { localFile }));
        }
        ((NotificationManager)getSystemService("notification")).cancel("PhotoUploadListener.notification", j);
        paramIntent = new Photo.TempPhoto(Uri.fromFile(localFile).toString(), paramIntent.getStringExtra("caption"));
        if (!TextUtils.isEmpty((CharSequence)localObject1)) {
          paramIntent.setTempId((String)localObject1);
        }
        new ObjectDirtyEvent(paramIntent, "com.yelp.android.media.delete").a(this);
        return;
      }
      int i;
      switch (h.a[PhotoUploadService.EntityType.values()[paramIntent.getIntExtra("entity_type", 0)].ordinal()])
      {
      default: 
        i = 2131166797;
      }
      while (paramIntent.getBooleanExtra("testing", false))
      {
        localFile.delete();
        return;
        i = 2131166063;
        continue;
        i = 2131165811;
      }
      Object localObject2 = ImageInputHelper.a(localFile);
      Object localObject3 = b(this, paramIntent, (Bitmap)localObject2, 0.0F);
      tickerText = getString(i, new Object[] { paramIntent.getStringExtra("entity") });
      startForeground(j, (Notification)localObject3);
      localObject2 = new i(this, j, paramIntent, (Bitmap)localObject2);
      localPhotoUploadRequestBase.setCallback((m)localObject2);
      localPhotoUploadRequestBase.setHttpClient(localAppData.p());
      localObject3 = new Photo.TempPhoto(Uri.fromFile(localFile).toString(), paramIntent.getStringExtra("caption"));
      if (!TextUtils.isEmpty((CharSequence)localObject1)) {
        ((Photo)localObject3).setTempId((String)localObject1);
      }
      new ObjectDirtyEvent((Parcelable)localObject3, "com.yelp.android.media.add").a(this);
      long l = System.currentTimeMillis();
      try
      {
        localPhotoUploadRequestBase.setupEntity();
        localPhotoUploadRequestBase.executeSynchronouslyWithLocation(localAppData.m(), localAppData.o(), true);
        localObject1 = localPhotoUploadRequestBase.getUploadedPhoto();
        ((i)localObject2).onSuccess(localPhotoUploadRequestBase, localObject1);
        if (localObject1 != null)
        {
          ((Photo)localObject1).setTempId(((Photo)localObject3).getTempId());
          x.a(f.a(paramIntent.getIntArrayExtra("share types"), ShareRequest.ShareType.values()), ((Photo)localObject3).getTempId());
          x.a(localFile.getAbsolutePath(), str, ((Photo)localObject1).getId(), System.currentTimeMillis() - l);
          new ObjectDirtyEvent((Parcelable)localObject1, "com.yelp.android.media.update").a(this);
          return;
        }
      }
      catch (YelpException paramIntent)
      {
        x.a(localFile.getAbsolutePath(), str, System.currentTimeMillis() - l);
        ((i)localObject2).onError(localPhotoUploadRequestBase, paramIntent);
        new ObjectDirtyEvent((Parcelable)localObject3, "com.yelp.android.media.delete").a(this);
        YelpLog.error(this, paramIntent);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.PhotoUploadService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */