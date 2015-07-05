.class public Lcom/yelp/android/services/PhotoUploadService;
.super Landroid/app/IntentService;
.source "PhotoUploadService.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 128
    const-string/jumbo v0, "PhotoUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method static synthetic a(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;F)Landroid/app/Notification;
    .locals 1

    .prologue
    .line 54
    invoke-static {p0, p1, p2, p3}, Lcom/yelp/android/services/PhotoUploadService;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;F)Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;F)Landroid/app/Notification;
    .locals 8

    .prologue
    const v7, 0x7f0c0475

    const v6, 0x7f0c0262

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 349
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f03016d

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 351
    const v1, 0x7f0c0476

    const/16 v2, 0x64

    const/high16 v3, 0x42c80000    # 100.0f

    mul-float/2addr v3, p3

    float-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    .line 352
    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    invoke-direct {v1, p0}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setOngoing(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 354
    const v2, 0x1080088

    invoke-virtual {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 355
    const-string/jumbo v2, "caption"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 356
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 357
    invoke-virtual {v0, v6, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 358
    invoke-virtual {v0, v6, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 360
    :cond_0
    const-string/jumbo v2, "entity"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 362
    invoke-virtual {v0, v7, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 363
    invoke-virtual {v0, v7, v4}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    .line 365
    :cond_1
    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContent(Landroid/widget/RemoteViews;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 366
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-static {p0, v5, v0, v2}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 368
    invoke-virtual {v1, p2}, Landroid/support/v4/app/NotificationCompat$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 369
    new-instance v0, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    invoke-direct {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;-><init>(Landroid/support/v4/app/NotificationCompat$Builder;)V

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020078

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    const v1, 0x7f07064c

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigPictureStyle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$BigPictureStyle;->build()Landroid/app/Notification;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 14

    .prologue
    const/4 v9, 0x1

    const/4 v11, 0x0

    .line 133
    if-nez p1, :cond_1

    .line 225
    :cond_0
    :goto_0
    return-void

    .line 136
    :cond_1
    const-string/jumbo v0, "entity_id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    long-to-int v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 137
    const-string/jumbo v0, "photo_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 138
    const-string/jumbo v0, "business_id"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 140
    const-string/jumbo v0, "request"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;

    .line 141
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v5

    .line 142
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getFile()Ljava/io/File;

    move-result-object v6

    .line 144
    const-string/jumbo v1, "android.intent.action.DELETE"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 145
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_2

    .line 146
    invoke-virtual {v6}, Ljava/io/File;->deleteOnExit()V

    .line 147
    const-string/jumbo v0, "Error deleting file for Photo[%s]"

    new-array v1, v9, [Ljava/lang/Object;

    aput-object v6, v1, v11

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;)I

    .line 149
    :cond_2
    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Lcom/yelp/android/services/PhotoUploadService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const-string/jumbo v1, "PhotoUploadListener.notification"

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    .line 153
    new-instance v0, Lcom/yelp/android/serializable/Photo$TempPhoto;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "caption"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 156
    invoke-virtual {v0, v3}, Lcom/yelp/android/serializable/Photo;->setTempId(Ljava/lang/String;)V

    .line 158
    :cond_3
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v2, "com.yelp.android.media.delete"

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    goto/16 :goto_0

    .line 165
    :cond_4
    sget-object v1, Lcom/yelp/android/services/h;->a:[I

    invoke-static {}, Lcom/yelp/android/services/PhotoUploadService$EntityType;->values()[Lcom/yelp/android/services/PhotoUploadService$EntityType;

    move-result-object v7

    const-string/jumbo v8, "entity_type"

    invoke-virtual {p1, v8, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    aget-object v7, v7, v8

    invoke-virtual {v7}, Lcom/yelp/android/services/PhotoUploadService$EntityType;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_0

    .line 173
    const v1, 0x7f07064d

    .line 177
    :goto_1
    const-string/jumbo v7, "testing"

    invoke-virtual {p1, v7, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 178
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    goto/16 :goto_0

    .line 167
    :pswitch_0
    const v1, 0x7f07036f

    .line 168
    goto :goto_1

    .line 170
    :pswitch_1
    const v1, 0x7f070273

    .line 171
    goto :goto_1

    .line 182
    :cond_5
    invoke-static {v6}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 183
    const/4 v8, 0x0

    invoke-static {p0, p1, v7, v8}, Lcom/yelp/android/services/PhotoUploadService;->b(Landroid/content/Context;Landroid/content/Intent;Landroid/graphics/Bitmap;F)Landroid/app/Notification;

    move-result-object v8

    .line 184
    new-array v9, v9, [Ljava/lang/Object;

    const-string/jumbo v10, "entity"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {p0, v1, v9}, Lcom/yelp/android/services/PhotoUploadService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v8, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    .line 185
    invoke-virtual {p0, v2, v8}, Lcom/yelp/android/services/PhotoUploadService;->startForeground(ILandroid/app/Notification;)V

    .line 186
    new-instance v8, Lcom/yelp/android/services/i;

    invoke-direct {v8, p0, v2, p1, v7}, Lcom/yelp/android/services/i;-><init>(Landroid/content/Context;ILandroid/content/Intent;Landroid/graphics/Bitmap;)V

    .line 187
    invoke-virtual {v0, v8}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setCallback(Lcom/yelp/android/appdata/webrequests/m;)V

    .line 188
    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->p()Lorg/apache/http/client/HttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setHttpClient(Lorg/apache/http/client/HttpClient;)V

    .line 191
    new-instance v2, Lcom/yelp/android/serializable/Photo$TempPhoto;

    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v7, "caption"

    invoke-virtual {p1, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v1, v7}, Lcom/yelp/android/serializable/Photo$TempPhoto;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 194
    invoke-virtual {v2, v3}, Lcom/yelp/android/serializable/Photo;->setTempId(Ljava/lang/String;)V

    .line 196
    :cond_6
    new-instance v1, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v3, "com.yelp.android.media.add"

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 199
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    .line 201
    :try_start_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->setupEntity()V

    .line 202
    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v1

    invoke-virtual {v5}, Lcom/yelp/android/appdata/AppData;->o()Lcom/yelp/android/debug/Debug;

    move-result-object v3

    const/4 v5, 0x1

    invoke-virtual {v0, v1, v3, v5}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->executeSynchronouslyWithLocation(Lcom/yelp/android/appdata/bc;Lcom/yelp/android/debug/Debug;Z)Ljava/lang/Object;

    .line 204
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/PhotoUploadRequestBase;->getUploadedPhoto()Lcom/yelp/android/serializable/Photo;

    move-result-object v1

    .line 205
    invoke-virtual {v8, v0, v1}, Lcom/yelp/android/services/i;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V

    .line 206
    if-eqz v1, :cond_0

    .line 207
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->getTempId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/yelp/android/serializable/Photo;->setTempId(Ljava/lang/String;)V

    .line 208
    const-string/jumbo v3, "share types"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v3

    invoke-static {}, Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;->values()[Lcom/yelp/android/appdata/webrequests/ShareRequest$ShareType;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/yelp/android/util/f;->a([I[Ljava/lang/Enum;)Ljava/util/ArrayList;

    move-result-object v3

    .line 210
    invoke-virtual {v2}, Lcom/yelp/android/serializable/Photo;->getTempId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/yelp/android/util/x;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/yelp/android/serializable/Photo;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    sub-long/2addr v12, v10

    invoke-static {v3, v4, v5, v12, v13}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 213
    new-instance v3, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v5, "com.yelp.android.media.update"

    invoke-direct {v3, v1, v5}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Lcom/yelp/android/appdata/webrequests/YelpException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 216
    :catch_0
    move-exception v1

    .line 217
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v10

    invoke-static {v3, v4, v6, v7}, Lcom/yelp/android/util/x;->a(Ljava/lang/String;Ljava/lang/String;J)V

    .line 219
    invoke-virtual {v8, v0, v1}, Lcom/yelp/android/services/i;->onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V

    .line 221
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    const-string/jumbo v3, "com.yelp.android.media.delete"

    invoke-direct {v0, v2, v3}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 223
    invoke-static {p0, v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Object;Ljava/lang/Exception;)V

    goto/16 :goto_0

    .line 165
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
