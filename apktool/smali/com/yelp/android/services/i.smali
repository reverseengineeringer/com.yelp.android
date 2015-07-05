.class Lcom/yelp/android/services/i;
.super Lcom/yelp/android/appdata/webrequests/ep;
.source "PhotoUploadService.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/ep",
        "<",
        "Ljava/lang/Float;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private final c:Landroid/content/Intent;

.field private final d:Landroid/app/NotificationManager;

.field private final e:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/content/Intent;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 236
    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/ep;-><init>()V

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    .line 238
    iput p2, p0, Lcom/yelp/android/services/i;->b:I

    .line 239
    iput-object p3, p0, Lcom/yelp/android/services/i;->c:Landroid/content/Intent;

    .line 240
    const-string/jumbo v0, "notification"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/yelp/android/services/i;->d:Landroid/app/NotificationManager;

    .line 242
    iput-object p4, p0, Lcom/yelp/android/services/i;->e:Landroid/graphics/Bitmap;

    .line 243
    return-void
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;Lcom/yelp/android/appdata/webrequests/YelpException;)Landroid/app/Notification;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase",
            "<*>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")",
            "Landroid/app/Notification;"
        }
    .end annotation

    .prologue
    const/16 v10, 0x64

    const/4 v9, 0x1

    const v8, 0x7f070251

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 268
    new-instance v0, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v1, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/services/i;->c:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 271
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 272
    const-string/jumbo v2, "entity_id"

    iget v3, p0, Lcom/yelp/android/services/i;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    iget-object v2, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 275
    const v2, 0x7f020257

    iget-object v3, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    const v4, 0x7f070620

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v2, v3, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 278
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/services/i;->c:Landroid/content/Intent;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 279
    const-string/jumbo v2, "entity_id"

    iget v3, p0, Lcom/yelp/android/services/i;->b:I

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 280
    const-string/jumbo v2, "android.intent.action.DELETE"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 281
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getFile()Ljava/io/File;

    move-result-object v2

    .line 282
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v3

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 283
    iget-object v3, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-static {v3, v6, v1, v7}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 285
    const v3, 0x7f0202c4

    iget-object v4, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    const v5, 0x7f070110

    invoke-virtual {v4, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v0, v3, v4, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 287
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v0, v4, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setWhen(J)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 288
    const/high16 v3, -0x10000

    invoke-virtual {v0, v3, v10, v10}, Landroid/support/v4/app/NotificationCompat$Builder;->setLights(III)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 289
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 291
    invoke-virtual {v0, v9}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 292
    const v1, 0x108004b

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 293
    iget-object v1, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getFile()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/services/i;->c:Landroid/content/Intent;

    invoke-static {v1, v3, v4}, Lcom/yelp/android/ui/activities/camera/RetryPhoto;->a(Landroid/content/Context;Ljava/io/File;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 295
    iget-object v2, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-static {v2, v6, v1, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 297
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 298
    iget-object v1, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 299
    iget-object v1, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 300
    iget-object v1, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {v1, v8}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 302
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/services/i;->e:Landroid/graphics/Bitmap;

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 303
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 304
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3}, Landroid/graphics/Matrix;-><init>()V

    .line 305
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 306
    new-instance v5, Landroid/graphics/ColorMatrix;

    invoke-direct {v5}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 307
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 308
    new-instance v6, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v6, v5}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    .line 309
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 310
    invoke-virtual {v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 311
    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 312
    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v2, v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {v2, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020078

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    const v3, 0x7f070251

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->build()Landroid/app/Notification;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 319
    :goto_0
    return-object v0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;)V"
        }
    .end annotation

    .prologue
    .line 254
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    if-eqz v0, :cond_0

    .line 255
    check-cast p1, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    .line 256
    invoke-virtual {p1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 258
    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 4

    .prologue
    .line 262
    iget-object v0, p0, Lcom/yelp/android/services/i;->a:Landroid/content/Context;

    iget-object v1, p0, Lcom/yelp/android/services/i;->c:Landroid/content/Intent;

    iget-object v2, p0, Lcom/yelp/android/services/i;->e:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/services/PhotoUploadService;->a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;F)Landroid/app/Notification;

    move-result-object v0

    .line 264
    iget-object v1, p0, Lcom/yelp/android/services/i;->d:Landroid/app/NotificationManager;

    const-string/jumbo v2, "PhotoUploadListener.notification"

    iget v3, p0, Lcom/yelp/android/services/i;->b:I

    invoke-virtual {v1, v2, v3, v0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 265
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 227
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/i;->a(Ljava/lang/Float;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 325
    const/4 v0, 0x1

    return v0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    iget-object v0, p0, Lcom/yelp/android/services/i;->d:Landroid/app/NotificationManager;

    const-string/jumbo v1, "PhotoUploadListener.notification"

    iget v2, p0, Lcom/yelp/android/services/i;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 248
    iget-object v0, p0, Lcom/yelp/android/services/i;->d:Landroid/app/NotificationManager;

    const-string/jumbo v1, "PhotoUploadListener.notification"

    iget v2, p0, Lcom/yelp/android/services/i;->b:I

    check-cast p1, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/services/i;->a(Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;Lcom/yelp/android/appdata/webrequests/YelpException;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    .line 250
    iget-object v0, p0, Lcom/yelp/android/services/i;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 251
    return-void
.end method

.method public onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lcom/yelp/android/services/i;->d:Landroid/app/NotificationManager;

    const-string/jumbo v1, "PhotoUploadListener.notification"

    iget v2, p0, Lcom/yelp/android/services/i;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 331
    iget-object v0, p0, Lcom/yelp/android/services/i;->e:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 333
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->s()Lcom/yelp/android/serializable/User;

    move-result-object v0

    .line 334
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/User;->addPhotoCount(I)V

    .line 335
    invoke-direct {p0, p1}, Lcom/yelp/android/services/i;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 336
    return-void
.end method
