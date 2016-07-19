.class public Lcom/yelp/android/webimageview/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;,
        Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;
    }
.end annotation


# static fields
.field public static final BITMAP_EXTRA:Ljava/lang/String; = "droidfu:extra_bitmap"

.field private static final COMPARE:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/yelp/android/webimageview/ImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_POOL_SIZE:I = 0x2

.field public static final HANDLER_MESSAGE_ID:I

.field public static final RECEIVER:Landroid/content/BroadcastReceiver;

.field private static REQUESTS:Lcom/yelp/android/webimageview/ReferenceWatcher;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/webimageview/ReferenceWatcher",
            "<",
            "Lcom/yelp/android/webimageview/ImageLoader;",
            ">;"
        }
    .end annotation
.end field

.field private static executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

.field public static imageCache:Lcom/yelp/android/webimageview/ImageCache;

.field private static numAttempts:I


# instance fields
.field public final cachePermanently:Z

.field private handler:Landroid/os/Handler;

.field public final imageUrl:Ljava/lang/String;

.field private mFollowCrossRedirects:Z

.field private mPriority:J

.field private mReqHeight:I

.field private mReqWidth:I

.field private mResponse:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 78
    const/4 v0, 0x3

    sput v0, Lcom/yelp/android/webimageview/ImageLoader;->numAttempts:I

    .line 146
    new-instance v0, Lcom/yelp/android/webimageview/ImageLoader$2;

    invoke-direct {v0}, Lcom/yelp/android/webimageview/ImageLoader$2;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageLoader;->RECEIVER:Landroid/content/BroadcastReceiver;

    .line 290
    new-instance v0, Lcom/yelp/android/webimageview/ImageLoader$3;

    invoke-direct {v0}, Lcom/yelp/android/webimageview/ImageLoader$3;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageLoader;->COMPARE:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 306
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 307
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 308
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/webimageview/ImageLoader;->cachePermanently:Z

    .line 309
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/yelp/android/webimageview/ImageLoaderHandler;

    invoke-direct {v0, p2}, Lcom/yelp/android/webimageview/ImageLoaderHandler;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, p1, v0, p3}, Lcom/yelp/android/webimageview/ImageLoader;-><init>(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 313
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    .line 317
    iput-object p2, p0, Lcom/yelp/android/webimageview/ImageLoader;->handler:Landroid/os/Handler;

    .line 318
    iput-boolean p3, p0, Lcom/yelp/android/webimageview/ImageLoader;->cachePermanently:Z

    .line 319
    return-void
.end method

.method static synthetic access$000()Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    return-object v0
.end method

.method static synthetic access$100(Lcom/yelp/android/webimageview/ImageLoader;)J
    .locals 2

    .prologue
    .line 66
    iget-wide v0, p0, Lcom/yelp/android/webimageview/ImageLoader;->mPriority:J

    return-wide v0
.end method

.method private applyExifFileAttributes(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 449
    :try_start_0
    new-instance v0, Landroid/media/ExifInterface;

    invoke-direct {v0, p1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 455
    const-string/jumbo v2, "Orientation"

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 458
    packed-switch v0, :pswitch_data_0

    .line 484
    :goto_0
    :pswitch_0
    return-object p2

    .line 460
    :pswitch_1
    const/16 v0, 0x5a

    .line 463
    :goto_1
    add-int/lit8 v0, v0, 0x5a

    .line 467
    :goto_2
    add-int/lit8 v0, v0, 0x5a

    .line 468
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 470
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 471
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 474
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 475
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 476
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p2

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 478
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    move-object p2, v0

    .line 479
    goto :goto_0

    .line 450
    :catch_0
    move-exception v0

    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    move v0, v1

    goto :goto_2

    .line 458
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static calculateInSampleSize(Ljava/lang/String;II)I
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 425
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 426
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 427
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 429
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 430
    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 432
    if-gt v2, p2, :cond_0

    if-le v1, p1, :cond_1

    .line 435
    :cond_0
    int-to-float v0, v2

    int-to-float v2, p2

    div-float/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 436
    int-to-float v1, v1

    int-to-float v2, p1

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 440
    if-ge v0, v1, :cond_2

    .line 442
    :cond_1
    :goto_0
    return v0

    :cond_2
    move v0, v1

    .line 440
    goto :goto_0
.end method

.method public static clearCache()V
    .locals 1

    .prologue
    .line 276
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageCache;->clear()V

    .line 277
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageCache;->trimCache()V

    .line 278
    return-void
.end method

.method public static getImageFile(Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 326
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    sget-object v1, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    iget-object v1, v1, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    invoke-virtual {v0, v1, p0}, Lcom/yelp/android/webimageview/ImageCache;->getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static final getSnapShot()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lcom/yelp/android/webimageview/ImageLoader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->REQUESTS:Lcom/yelp/android/webimageview/ReferenceWatcher;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ReferenceWatcher;->getSnapShotAndClean()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized initialize(Landroid/content/Context;Ljava/lang/Thread$UncaughtExceptionHandler;)V
    .locals 9

    .prologue
    .line 111
    const-class v8, Lcom/yelp/android/webimageview/ImageLoader;

    monitor-enter v8

    :try_start_0
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    if-nez v0, :cond_0

    .line 112
    new-instance v0, Lcom/yelp/android/webimageview/ReferenceWatcher;

    invoke-direct {v0}, Lcom/yelp/android/webimageview/ReferenceWatcher;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageLoader;->REQUESTS:Lcom/yelp/android/webimageview/ReferenceWatcher;

    .line 114
    new-instance v7, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;

    const/16 v0, 0x64

    const/16 v1, 0x18

    sget-object v2, Lcom/yelp/android/webimageview/ImageLoader;->COMPARE:Ljava/util/Comparator;

    invoke-direct {v7, v0, v1, v2}, Lcom/yelp/android/webimageview/ImageLoader$BoundPriorityBlockingQueue;-><init>(IILjava/util/Comparator;)V

    .line 117
    new-instance v1, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    const/4 v2, 0x2

    const/4 v3, 0x2

    const-wide/16 v4, 0x12c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct/range {v1 .. v7}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/PriorityBlockingQueue;)V

    sput-object v1, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    .line 118
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    new-instance v1, Lcom/yelp/android/webimageview/ImageLoader$1;

    invoke-direct {v1, p1}, Lcom/yelp/android/webimageview/ImageLoader$1;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->setThreadFactory(Ljava/util/concurrent/ThreadFactory;)V

    .line 140
    :cond_0
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    if-nez v0, :cond_1

    .line 141
    new-instance v0, Lcom/yelp/android/webimageview/ImageCache;

    const/16 v1, 0x19

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/webimageview/ImageCache;-><init>(Landroid/content/Context;II)V

    sput-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    .line 143
    :cond_1
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->RECEIVER:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string/jumbo v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit v8

    return-void

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit v8

    throw v0
.end method

.method public static preload(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 168
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0, p0}, Lcom/yelp/android/webimageview/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 169
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    new-instance v1, Lcom/yelp/android/webimageview/ImageLoader;

    invoke-direct {v1, p0}, Lcom/yelp/android/webimageview/ImageLoader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 171
    :cond_0
    return-void
.end method

.method public static setMaxDownloadAttempts(I)V
    .locals 0

    .prologue
    .line 96
    sput p0, Lcom/yelp/android/webimageview/ImageLoader;->numAttempts:I

    .line 97
    return-void
.end method

.method public static setThreadPoolSize(I)V
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    invoke-virtual {v0, p0}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->setMaximumPoolSize(I)V

    .line 88
    return-void
.end method

.method public static start(Ljava/lang/String;IILcom/yelp/android/webimageview/ImageLoaderHandler;ZZ)V
    .locals 4

    .prologue
    .line 246
    new-instance v1, Lcom/yelp/android/webimageview/ImageLoader;

    invoke-direct {v1, p0, p3, p4}, Lcom/yelp/android/webimageview/ImageLoader;-><init>(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V

    .line 247
    iget-wide v2, p3, Lcom/yelp/android/webimageview/ImageLoaderHandler;->priority:J

    iput-wide v2, v1, Lcom/yelp/android/webimageview/ImageLoader;->mPriority:J

    .line 248
    iput p1, v1, Lcom/yelp/android/webimageview/ImageLoader;->mReqWidth:I

    .line 249
    iput p2, v1, Lcom/yelp/android/webimageview/ImageLoader;->mReqHeight:I

    .line 250
    iput-boolean p5, v1, Lcom/yelp/android/webimageview/ImageLoader;->mFollowCrossRedirects:Z

    .line 251
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0, p0}, Lcom/yelp/android/webimageview/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 252
    if-nez v2, :cond_1

    .line 254
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    invoke-virtual {v0, v1}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 264
    :cond_0
    :goto_0
    return-void

    .line 255
    :cond_1
    instance-of v0, p3, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;

    if-eqz v0, :cond_2

    .line 256
    check-cast p3, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;

    invoke-virtual {p3}, Lcom/yelp/android/webimageview/WebImageView$WebImageLoaderHandler;->getImageView()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/webimageview/WebImageView;

    .line 257
    if-eqz v0, :cond_0

    .line 258
    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/yelp/android/webimageview/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 259
    invoke-virtual {v1, v2}, Lcom/yelp/android/webimageview/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 262
    :cond_2
    invoke-virtual {v1, v2}, Lcom/yelp/android/webimageview/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method public static start(Ljava/lang/String;Landroid/widget/ImageView;Z)V
    .locals 3

    .prologue
    .line 188
    new-instance v0, Lcom/yelp/android/webimageview/ImageLoader;

    invoke-direct {v0, p0, p1, p2}, Lcom/yelp/android/webimageview/ImageLoader;-><init>(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    .line 189
    sget-object v1, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    monitor-enter v1

    .line 190
    :try_start_0
    sget-object v2, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v2, p0}, Lcom/yelp/android/webimageview/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 191
    if-nez v2, :cond_0

    .line 193
    sget-object v2, Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    invoke-virtual {v2, v0}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    .line 199
    :goto_0
    monitor-exit v1

    .line 200
    return-void

    .line 194
    :cond_0
    instance-of v0, p1, Lcom/yelp/android/webimageview/WebImageView;

    if-eqz v0, :cond_1

    .line 195
    check-cast p1, Lcom/yelp/android/webimageview/WebImageView;

    const/4 v0, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/yelp/android/webimageview/WebImageView;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    goto :goto_0

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 197
    :cond_1
    :try_start_1
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public static start(Ljava/lang/String;Lcom/yelp/android/webimageview/ImageLoaderHandler;Z)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 219
    move-object v0, p0

    move v2, v1

    move-object v3, p1

    move v4, p2

    move v5, v1

    invoke-static/range {v0 .. v5}, Lcom/yelp/android/webimageview/ImageLoader;->start(Ljava/lang/String;IILcom/yelp/android/webimageview/ImageLoaderHandler;ZZ)V

    .line 220
    return-void
.end method

.method public static trimCache()V
    .locals 1

    .prologue
    .line 285
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    if-eqz v0, :cond_0

    .line 286
    sget-object v0, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageCache;->trimCache()V

    .line 288
    :cond_0
    return-void
.end method


# virtual methods
.method public getResponse()I
    .locals 1

    .prologue
    .line 322
    iget v0, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    return v0
.end method

.method public notifyImageLoaded(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 416
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 417
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 418
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 419
    const-string/jumbo v2, "droidfu:extra_bitmap"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 420
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 421
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 422
    return-void
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 331
    sget-object v2, Lcom/yelp/android/webimageview/ImageLoader;->REQUESTS:Lcom/yelp/android/webimageview/ReferenceWatcher;

    invoke-virtual {v2, p0}, Lcom/yelp/android/webimageview/ReferenceWatcher;->watch(Ljava/lang/Object;)V

    .line 333
    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    const-string/jumbo v3, "file"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 334
    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 335
    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 336
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 337
    iget v4, p0, Lcom/yelp/android/webimageview/ImageLoader;->mReqWidth:I

    if-lez v4, :cond_0

    iget v4, p0, Lcom/yelp/android/webimageview/ImageLoader;->mReqHeight:I

    if-lez v4, :cond_0

    .line 338
    iget v4, p0, Lcom/yelp/android/webimageview/ImageLoader;->mReqWidth:I

    iget v5, p0, Lcom/yelp/android/webimageview/ImageLoader;->mReqHeight:I

    invoke-static {v2, v4, v5}, Lcom/yelp/android/webimageview/ImageLoader;->calculateInSampleSize(Ljava/lang/String;II)I

    move-result v4

    iput v4, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 340
    :cond_0
    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 341
    invoke-direct {p0, v2, v3}, Lcom/yelp/android/webimageview/ImageLoader;->applyExifFileAttributes(Ljava/lang/String;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 342
    invoke-virtual {p0, v2}, Lcom/yelp/android/webimageview/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    .line 413
    :cond_1
    :goto_0
    return-void

    .line 345
    :cond_2
    const/4 v2, 0x1

    .line 347
    sget-object v3, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    iget-object v4, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/yelp/android/webimageview/ImageCache;->getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 348
    if-nez v6, :cond_d

    move v4, v2

    .line 349
    :goto_1
    sget v2, Lcom/yelp/android/webimageview/ImageLoader;->numAttempts:I

    if-gt v4, v2, :cond_d

    .line 350
    const/4 v9, 0x0

    .line 353
    :try_start_0
    new-instance v3, Ljava/net/URL;

    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 354
    const/4 v2, 0x0

    move v7, v2

    move-object v2, v3

    move-object v3, v5

    :goto_2
    const/4 v8, 0x3

    if-ge v7, v8, :cond_3

    .line 355
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v3

    .line 356
    instance-of v2, v3, Ljava/net/HttpURLConnection;

    if-nez v2, :cond_4

    .line 383
    :cond_3
    invoke-virtual {v3}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 384
    if-nez v2, :cond_9

    .line 399
    if-eqz v2, :cond_1

    .line 401
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 402
    :catch_0
    move-exception v2

    goto :goto_0

    .line 360
    :cond_4
    :try_start_2
    move-object v0, v3

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 361
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    iput v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    .line 362
    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    const/16 v8, 0x12c

    if-lt v2, v8, :cond_3

    .line 366
    iget-boolean v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mFollowCrossRedirects:Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v2, :cond_5

    .line 399
    if-eqz v5, :cond_1

    .line 401
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 402
    :catch_1
    move-exception v2

    goto :goto_0

    .line 370
    :cond_5
    :try_start_4
    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    const/16 v8, 0x12d

    if-eq v2, v8, :cond_6

    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    const/16 v8, 0x12e

    if-eq v2, v8, :cond_6

    iget v2, p0, Lcom/yelp/android/webimageview/ImageLoader;->mResponse:I

    const/16 v8, 0x133

    if-ne v2, v8, :cond_7

    .line 373
    :cond_6
    invoke-virtual {v3}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v8

    .line 374
    if-nez v8, :cond_8

    .line 399
    if-eqz v5, :cond_1

    .line 401
    :try_start_5
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    .line 402
    :catch_2
    move-exception v2

    goto :goto_0

    .line 399
    :cond_7
    if-eqz v5, :cond_1

    .line 401
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_0

    .line 402
    :catch_3
    move-exception v2

    goto :goto_0

    .line 354
    :cond_8
    add-int/lit8 v2, v7, 0x1

    move v7, v2

    move-object v2, v8

    goto :goto_2

    .line 387
    :cond_9
    :try_start_7
    sget-object v3, Lcom/yelp/android/webimageview/ImageLoader;->imageCache:Lcom/yelp/android/webimageview/ImageCache;

    iget-object v7, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    iget-boolean v8, p0, Lcom/yelp/android/webimageview/ImageLoader;->cachePermanently:Z

    invoke-virtual {v3, v7, v2, v8}, Lcom/yelp/android/webimageview/ImageCache;->put(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v3

    .line 399
    if-eqz v2, :cond_c

    .line 401
    :try_start_8
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    move-object v2, v3

    .line 410
    :goto_3
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/yelp/android/webimageview/ImageLoader;->handler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 411
    invoke-virtual {p0, v2}, Lcom/yelp/android/webimageview/ImageLoader;->notifyImageLoaded(Landroid/graphics/Bitmap;)V

    goto/16 :goto_0

    .line 402
    :catch_4
    move-exception v2

    move-object v2, v3

    .line 404
    goto :goto_3

    .line 389
    :catch_5
    move-exception v2

    move-object v3, v5

    .line 390
    :goto_4
    :try_start_9
    const-class v2, Lcom/yelp/android/webimageview/ImageLoader;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "download for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/yelp/android/webimageview/ImageLoader;->imageUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " failed (attempt "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 393
    const-wide/16 v8, 0x7d0

    :try_start_a
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 397
    :goto_5
    add-int/lit8 v2, v4, 0x1

    .line 399
    if-eqz v3, :cond_a

    .line 401
    :try_start_b
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    :cond_a
    :goto_6
    move v4, v2

    .line 407
    goto/16 :goto_1

    .line 399
    :catchall_0
    move-exception v2

    move-object v3, v5

    :goto_7
    if-eqz v3, :cond_b

    .line 401
    :try_start_c
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    .line 404
    :cond_b
    :goto_8
    throw v2

    .line 394
    :catch_6
    move-exception v2

    goto :goto_5

    .line 402
    :catch_7
    move-exception v3

    goto :goto_6

    :catch_8
    move-exception v3

    goto :goto_8

    .line 399
    :catchall_1
    move-exception v3

    move-object v10, v3

    move-object v3, v2

    move-object v2, v10

    goto :goto_7

    :catchall_2
    move-exception v2

    goto :goto_7

    .line 389
    :catch_9
    move-exception v3

    move-object v3, v2

    goto :goto_4

    :cond_c
    move-object v2, v3

    goto :goto_3

    :cond_d
    move-object v2, v6

    goto :goto_3
.end method
