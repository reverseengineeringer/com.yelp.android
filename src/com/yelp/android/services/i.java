package com.yelp.android.services;

import android.app.Notification;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.BitmapFactory;
import android.graphics.Canvas;
import android.graphics.ColorMatrix;
import android.graphics.ColorMatrixColorFilter;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.net.Uri;
import android.support.v4.app.NotificationCompat.BigPictureStyle;
import android.support.v4.app.NotificationCompat.Builder;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.PhotoUploadRequestBase;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.ep;
import com.yelp.android.serializable.User;
import com.yelp.android.ui.activities.camera.RetryPhoto;
import java.io.File;

class i
  extends ep<Float, Object>
{
  private final Context a;
  private final int b;
  private final Intent c;
  private final NotificationManager d;
  private final Bitmap e;
  
  public i(Context paramContext, int paramInt, Intent paramIntent, Bitmap paramBitmap)
  {
    a = paramContext.getApplicationContext();
    b = paramInt;
    c = paramIntent;
    d = ((NotificationManager)paramContext.getSystemService("notification"));
    e = paramBitmap;
  }
  
  private Notification a(PhotoUploadRequestBase<?> paramPhotoUploadRequestBase, YelpException paramYelpException)
  {
    NotificationCompat.Builder localBuilder = new NotificationCompat.Builder(a);
    Object localObject1 = new Intent(c);
    ((Intent)localObject1).setData(Uri.fromFile(paramPhotoUploadRequestBase.getFile()));
    ((Intent)localObject1).putExtra("entity_id", b);
    localObject1 = PendingIntent.getService(a, 0, (Intent)localObject1, 1073741824);
    localBuilder.addAction(2130838103, a.getText(2131166752), (PendingIntent)localObject1);
    Object localObject2 = new Intent(c);
    ((Intent)localObject2).putExtra("entity_id", b);
    ((Intent)localObject2).setAction("android.intent.action.DELETE");
    localObject1 = paramPhotoUploadRequestBase.getFile();
    ((Intent)localObject2).setData(Uri.fromFile(((File)localObject1).getAbsoluteFile()));
    localObject2 = PendingIntent.getService(a, 0, (Intent)localObject2, 1073741824);
    localBuilder.addAction(2130838212, a.getText(2131165456), (PendingIntent)localObject2);
    localBuilder.setWhen(System.currentTimeMillis());
    localBuilder.setLights(-65536, 100, 100);
    localBuilder.setDeleteIntent((PendingIntent)localObject2);
    localBuilder.setAutoCancel(true);
    localBuilder.setSmallIcon(17301579);
    paramPhotoUploadRequestBase = RetryPhoto.a(a, paramPhotoUploadRequestBase.getFile(), c);
    paramPhotoUploadRequestBase.setData(Uri.fromFile(((File)localObject1).getAbsoluteFile()));
    localBuilder.setContentIntent(PendingIntent.getActivity(a, 0, paramPhotoUploadRequestBase, 1073741824));
    localBuilder.setTicker(a.getText(2131165777));
    localBuilder.setContentText(paramYelpException.getMessage(a));
    localBuilder.setContentTitle(a.getText(2131165777));
    try
    {
      paramPhotoUploadRequestBase = e.copy(Bitmap.Config.ARGB_8888, true);
      localObject1 = new Canvas(paramPhotoUploadRequestBase);
      localObject2 = new Matrix();
      Paint localPaint = new Paint();
      ColorMatrix localColorMatrix = new ColorMatrix();
      localColorMatrix.setSaturation(0.0F);
      localPaint.setColorFilter(new ColorMatrixColorFilter(localColorMatrix));
      ((Canvas)localObject1).drawBitmap(paramPhotoUploadRequestBase, (Matrix)localObject2, localPaint);
      localBuilder.setLargeIcon(paramPhotoUploadRequestBase);
      paramPhotoUploadRequestBase = new NotificationCompat.BigPictureStyle(localBuilder).bigPicture(paramPhotoUploadRequestBase).bigLargeIcon(BitmapFactory.decodeResource(a.getResources(), 2130837624)).setBigContentTitle(a.getText(2131165777)).setSummaryText(paramYelpException.getMessage(a)).build();
      return paramPhotoUploadRequestBase;
    }
    catch (Exception paramPhotoUploadRequestBase) {}
    return localBuilder.build();
  }
  
  private void a(ApiRequest<?, ?, ?> paramApiRequest)
  {
    if ((paramApiRequest instanceof PhotoUploadRequestBase)) {
      ((PhotoUploadRequestBase)paramApiRequest).getFile().delete();
    }
  }
  
  public void a(Float paramFloat)
  {
    paramFloat = PhotoUploadService.a(a, c, e, paramFloat.floatValue());
    d.notify("PhotoUploadListener.notification", b, paramFloat);
  }
  
  public boolean a()
  {
    return true;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    d.cancel("PhotoUploadListener.notification", b);
    d.notify("PhotoUploadListener.notification", b, a((PhotoUploadRequestBase)paramApiRequest, paramYelpException));
    e.recycle();
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Object paramObject)
  {
    d.cancel("PhotoUploadListener.notification", b);
    e.recycle();
    AppData.b().m().s().addPhotoCount(1);
    a(paramApiRequest);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */