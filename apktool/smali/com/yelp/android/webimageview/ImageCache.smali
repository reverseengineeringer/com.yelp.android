.class public Lcom/yelp/android/webimageview/ImageCache;
.super Ljava/lang/Object;
.source "ImageCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/webimageview/ImageCache$EfficientOptionsFactory;,
        Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;,
        Lcom/yelp/android/webimageview/ImageCache$ExternalStorageWrapper;
    }
.end annotation


# static fields
.field private static final CACHE_CLEAR_FREQUENCY:I = 0x4b

.field private static final COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static final FILE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final FILE_COMPARATOR_FALLBACK:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private static final MAX_EXTERNAL:I = 0x500000

.field private static final MAX_INTERNAL:I = 0x100000

.field private static final MEGABYTE_IN_BYTES:I = 0x100000

.field private static final OPTIONS:Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;

.field private static final TAG:Ljava/lang/String; = "DroidFu.ImageCache"


# instance fields
.field private final mCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;

.field mExternalCacheDir:Ljava/io/File;

.field private mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

.field private mInMemoryCacheMissCount:I

.field final mInternalCacheDir:Ljava/io/File;

.field final mPermanentCacheDir:Ljava/io/File;

.field mSecondLevelCacheDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageCache;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 83
    sget-object v0, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    new-instance v0, Lcom/yelp/android/webimageview/ImageCache$EfficientOptionsFactory;

    invoke-direct {v0, v2}, Lcom/yelp/android/webimageview/ImageCache$EfficientOptionsFactory;-><init>(Lcom/yelp/android/webimageview/ImageCache$1;)V

    :goto_0
    sput-object v0, Lcom/yelp/android/webimageview/ImageCache;->OPTIONS:Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;

    .line 454
    new-instance v0, Lcom/yelp/android/webimageview/ImageCache$2;

    invoke-direct {v0}, Lcom/yelp/android/webimageview/ImageCache$2;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageCache;->FILE_COMPARATOR:Ljava/util/Comparator;

    .line 462
    new-instance v0, Lcom/yelp/android/webimageview/ImageCache$3;

    invoke-direct {v0}, Lcom/yelp/android/webimageview/ImageCache$3;-><init>()V

    sput-object v0, Lcom/yelp/android/webimageview/ImageCache;->FILE_COMPARATOR_FALLBACK:Ljava/util/Comparator;

    return-void

    .line 83
    :cond_0
    new-instance v0, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;

    invoke-direct {v0, v2}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;-><init>(Lcom/yelp/android/webimageview/ImageCache$1;)V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;II)V
    .locals 3

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p1, p0, Lcom/yelp/android/webimageview/ImageCache;->mContext:Landroid/content/Context;

    .line 106
    new-instance v0, Lcom/yelp/common/collect/MapMaker;

    invoke-direct {v0}, Lcom/yelp/common/collect/MapMaker;-><init>()V

    invoke-virtual {v0, p2}, Lcom/yelp/common/collect/MapMaker;->initialCapacity(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/yelp/common/collect/MapMaker;->concurrencyLevel(I)Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->softValues()Lcom/yelp/common/collect/MapMaker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/common/collect/MapMaker;->makeMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mCache:Ljava/util/concurrent/ConcurrentMap;

    .line 108
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/permanent_images"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mPermanentCacheDir:Ljava/io/File;

    .line 110
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "/droidfu/imagecache"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mInternalCacheDir:Ljava/io/File;

    .line 112
    invoke-virtual {p0, p1}, Lcom/yelp/android/webimageview/ImageCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 113
    invoke-virtual {p0, p1}, Lcom/yelp/android/webimageview/ImageCache;->registerForExternalStorageUpdates(Landroid/content/Context;)V

    .line 114
    return-void
.end method

.method static clearDirectory(Ljava/io/File;J)V
    .locals 7

    .prologue
    .line 409
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 410
    if-eqz v1, :cond_1

    array-length v0, v1

    if-lez v0, :cond_1

    .line 411
    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 412
    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    cmp-long v4, v4, p1

    if-gez v4, :cond_0

    .line 413
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_0

    .line 414
    invoke-virtual {v3}, Ljava/io/File;->deleteOnExit()V

    .line 411
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 419
    :cond_1
    return-void
.end method

.method public static getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    .locals 5

    .prologue
    .line 431
    :try_start_0
    invoke-static {p0}, Lcom/yelp/android/webimageview/ImageCache$ExternalStorageWrapper;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 433
    :goto_0
    return-object v0

    .line 432
    :catch_0
    move-exception v0

    .line 433
    new-instance v0, Ljava/io/File;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string/jumbo v4, "Android"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string/jumbo v4, "data"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string/jumbo v4, "cache"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private incrementAndTrim()V
    .locals 2

    .prologue
    .line 333
    sget-object v0, Lcom/yelp/android/webimageview/ImageCache;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->trimCache()V

    .line 335
    sget-object v0, Lcom/yelp/android/webimageview/ImageCache;->COUNTER:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method assertExternalMountWritable()Z
    .locals 6

    .prologue
    .line 167
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "cache.dir"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 170
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    move-result v1

    .line 171
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    and-int/2addr v0, v1

    .line 175
    :goto_0
    return v0

    .line 172
    :catch_0
    move-exception v0

    .line 173
    const/4 v0, 0x0

    goto :goto_0
.end method

.method checkExternalFreeSpace()Z
    .locals 4

    .prologue
    .line 178
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 179
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x500000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 340
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 341
    return-void
.end method

.method public get(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 2

    .prologue
    .line 196
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 199
    if-eqz v0, :cond_0

    .line 204
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getBitmap(Ljava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6

    .prologue
    .line 215
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 217
    invoke-virtual {p0, v2}, Lcom/yelp/android/webimageview/ImageCache;->get(Ljava/lang/Object;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    if-nez v0, :cond_1

    .line 219
    iget-object v3, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    monitor-enter v3

    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/webimageview/ImageCache;->getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 221
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_0

    .line 222
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mPermanentCacheDir:Ljava/io/File;

    invoke-virtual {p0, v1, v2}, Lcom/yelp/android/webimageview/ImageCache;->getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 224
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 227
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    sget-object v4, Lcom/yelp/android/webimageview/ImageCache;->OPTIONS:Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;

    invoke-virtual {v4}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 228
    if-nez v0, :cond_2

    .line 230
    const/4 v0, 0x0

    monitor-exit v3

    .line 242
    :cond_1
    :goto_0
    return-object v0

    .line 233
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Ljava/io/File;->setLastModified(J)Z

    .line 238
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v2, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    :cond_3
    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;
    .locals 2

    .prologue
    .line 344
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 345
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method

.method final isUsingExternalCache()Z
    .locals 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/yelp/android/webimageview/ImageCache;->put(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 284
    invoke-direct {p0}, Lcom/yelp/android/webimageview/ImageCache;->incrementAndTrim()V

    .line 288
    if-eqz p3, :cond_0

    .line 289
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mPermanentCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 290
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mPermanentCacheDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/webimageview/ImageCache;->getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    .line 297
    :goto_0
    :try_start_0
    new-instance v2, Lcom/yelp/android/webimageview/FileWritingInputStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, p2, v1}, Lcom/yelp/android/webimageview/FileWritingInputStream;-><init>(Ljava/io/InputStream;Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 313
    const/4 v1, 0x0

    :try_start_1
    sget-object v3, Lcom/yelp/android/webimageview/ImageCache;->OPTIONS:Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;

    invoke-virtual {v3}, Lcom/yelp/android/webimageview/ImageCache$OptionsFactory;->getOptions()Landroid/graphics/BitmapFactory$Options;

    move-result-object v3

    invoke-static {v2, v1, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 315
    invoke-virtual {v2}, Lcom/yelp/android/webimageview/FileWritingInputStream;->close()V

    .line 317
    if-nez v1, :cond_3

    .line 318
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 320
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->isUsingExternalCache()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 321
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Lcom/yelp/android/webimageview/ImageCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 322
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->isUsingExternalCache()Z

    move-result v0

    if-nez v0, :cond_4

    .line 323
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/webimageview/ImageCache;->put(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 329
    :goto_1
    return-object v0

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 293
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    invoke-virtual {p0, v0, p1}, Lcom/yelp/android/webimageview/ImageCache;->getImageFile(Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0

    .line 298
    :catch_0
    move-exception v0

    .line 300
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->isUsingExternalCache()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 301
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1}, Lcom/yelp/android/webimageview/ImageCache;->updateExternalStorageState(Landroid/content/Context;)V

    .line 302
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->isUsingExternalCache()Z

    move-result v1

    if-nez v1, :cond_1

    .line 303
    invoke-virtual {p0, p1, p2, p3}, Lcom/yelp/android/webimageview/ImageCache;->put(Ljava/lang/String;Ljava/io/InputStream;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    .line 305
    :cond_1
    throw v0

    .line 308
    :cond_2
    throw v0

    .line 315
    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Lcom/yelp/android/webimageview/FileWritingInputStream;->close()V

    throw v0

    .line 327
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    move-object v0, v1

    .line 329
    goto :goto_1
.end method

.method registerForExternalStorageUpdates(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/yelp/android/webimageview/ImageCache$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/webimageview/ImageCache$1;-><init>(Lcom/yelp/android/webimageview/ImageCache;)V

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    .line 126
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 127
    const-string/jumbo v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "android.intent.action.MEDIA_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 129
    const-string/jumbo v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalStorageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 133
    return-void
.end method

.method public trimCache()V
    .locals 14

    .prologue
    const/4 v0, 0x0

    .line 355
    iget-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    .line 356
    iget-object v5, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    monitor-enter v5

    .line 357
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 358
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 359
    if-eqz v6, :cond_4

    .line 362
    :try_start_1
    sget-object v1, Lcom/yelp/android/webimageview/ImageCache;->FILE_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 363
    const-string/jumbo v1, "DroidFu.ImageCache"

    const-string/jumbo v2, "Sorting by oldest last"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    :goto_0
    const-wide/16 v2, 0x0

    .line 373
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    const-wide/32 v10, 0x5265c00

    sub-long/2addr v8, v10

    .line 375
    array-length v7, v6

    move v4, v0

    :goto_1
    if-ge v4, v7, :cond_3

    aget-object v10, v6, v4

    .line 376
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->isUsingExternalCache()Z

    move-result v1

    if-eqz v1, :cond_1

    const/high16 v1, 0x500000

    .line 377
    :goto_2
    int-to-long v12, v1

    cmp-long v1, v2, v12

    if-gez v1, :cond_2

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v12

    cmp-long v1, v8, v12

    if-lez v1, :cond_2

    .line 379
    invoke-virtual {v10}, Ljava/io/File;->length()J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-wide v10

    add-long/2addr v2, v10

    .line 375
    :cond_0
    :goto_3
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_1

    .line 364
    :catch_0
    move-exception v1

    .line 366
    :try_start_3
    sget-object v1, Lcom/yelp/android/webimageview/ImageCache;->FILE_COMPARATOR_FALLBACK:Ljava/util/Comparator;

    invoke-static {v6, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 367
    const-string/jumbo v1, "DroidFu.ImageCache"

    const-string/jumbo v2, "Purging files by file name comparision rather than age"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 368
    :catch_1
    move-exception v1

    .line 369
    :try_start_4
    const-string/jumbo v1, "DroidFu.ImageCache"

    const-string/jumbo v2, "Tried to purge cache in a smart order, but failed ... going to purge randomly"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 398
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 376
    :cond_1
    const/high16 v1, 0x100000

    goto :goto_2

    .line 383
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 385
    :try_start_5
    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    .line 388
    invoke-virtual {v10}, Ljava/io/File;->deleteOnExit()V

    goto :goto_3

    .line 392
    :cond_3
    const-string/jumbo v1, "DroidFu.ImageCache"

    const-string/jumbo v4, "Purged %d files and left with %d bytes on disk"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v6, v7

    const/4 v0, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v6, v0

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/32 v2, 0x240c8400

    sub-long/2addr v0, v2

    .line 397
    iget-object v2, p0, Lcom/yelp/android/webimageview/ImageCache;->mPermanentCacheDir:Ljava/io/File;

    invoke-static {v2, v0, v1}, Lcom/yelp/android/webimageview/ImageCache;->clearDirectory(Ljava/io/File;J)V

    .line 398
    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 399
    return-void
.end method

.method updateExternalStorageState(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 136
    const-string/jumbo v0, "mounted"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 137
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 138
    invoke-static {p1}, Lcom/yelp/android/webimageview/ImageCache;->getExternalCacheDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 139
    if-eqz v0, :cond_1

    .line 140
    new-instance v1, Ljava/io/File;

    const-string/jumbo v2, "images"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 147
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 148
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->useInternalCacheDir()V

    .line 163
    :goto_0
    return-void

    .line 142
    :cond_1
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->useInternalCacheDir()V

    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->checkExternalFreeSpace()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->assertExternalMountWritable()Z

    move-result v0

    if-nez v0, :cond_4

    .line 154
    :cond_3
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->useInternalCacheDir()V

    goto :goto_0

    .line 156
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mExternalCacheDir:Ljava/io/File;

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    .line 158
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mInternalCacheDir:Ljava/io/File;

    const-wide v2, 0x7fffffffffffffffL

    invoke-static {v0, v2, v3}, Lcom/yelp/android/webimageview/ImageCache;->clearDirectory(Ljava/io/File;J)V

    goto :goto_0

    .line 161
    :cond_5
    invoke-virtual {p0}, Lcom/yelp/android/webimageview/ImageCache;->useInternalCacheDir()V

    goto :goto_0
.end method

.method useInternalCacheDir()V
    .locals 1

    .prologue
    .line 183
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mInternalCacheDir:Ljava/io/File;

    iput-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    .line 184
    iget-object v0, p0, Lcom/yelp/android/webimageview/ImageCache;->mSecondLevelCacheDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 185
    return-void
.end method
