.class public Lcom/yelp/android/ui/util/ImageInputHelper;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/ImageInputHelper$1;,
        Lcom/yelp/android/ui/util/ImageInputHelper$d;,
        Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;,
        Lcom/yelp/android/ui/util/ImageInputHelper$b;,
        Lcom/yelp/android/ui/util/ImageInputHelper$a;,
        Lcom/yelp/android/ui/util/ImageInputHelper$c;,
        Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    }
.end annotation


# static fields
.field private static final a:[Ljava/lang/String;


# instance fields
.field private b:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair",
            "<",
            "Ljava/io/File;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/io/File;

.field private d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field private final e:Lcom/yelp/android/appdata/f;

.field private final f:I

.field private final g:Ljava/util/Random;

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/app/PendingIntent;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "GPSAltitude"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "Model"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "GPSLatitude"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "GPSLatitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "GPSLongitude"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string/jumbo v2, "GPSLongitudeRef"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "Make"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "Orientation"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "ExposureTime"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string/jumbo v2, "Flash"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "ISOSpeedRatings"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string/jumbo v2, "GPSTimeStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "FocalLength"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string/jumbo v2, "WhiteBalance"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string/jumbo v2, "GPSDateStamp"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string/jumbo v2, "GPSProcessingMethod"

    aput-object v2, v0, v1

    sput-object v0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/yelp/android/appdata/f;I)V
    .locals 1

    .prologue
    .line 439
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    iput p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:I

    .line 441
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:Lcom/yelp/android/appdata/f;

    .line 442
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/Random;

    .line 443
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    .line 444
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 199
    div-float v0, p2, p1

    .line 202
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 203
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    add-float/2addr v0, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    float-to-int v1, p2

    invoke-static {p0, v0, v1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 217
    :goto_0
    if-eq p0, v0, :cond_0

    .line 218
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 223
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, p1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, p2

    if-nez v1, :cond_2

    .line 238
    :goto_1
    return-object v0

    .line 210
    :cond_1
    float-to-int v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p1

    add-float/2addr v1, v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p0, v0, v1, p3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 226
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    .line 227
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    .line 228
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 235
    if-eq v1, v0, :cond_3

    .line 236
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v1

    .line 238
    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v7, 0x64000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 133
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 134
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 135
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 140
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 141
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 147
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 148
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v3, v1, v3

    const/16 v4, 0x190

    if-le v3, v4, :cond_0

    .line 149
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 151
    :cond_0
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 161
    :goto_1
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v1, v3

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int/2addr v3, v4

    mul-int/2addr v1, v3

    mul-int/lit8 v1, v1, 0x4

    if-le v1, v7, :cond_1

    .line 162
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 166
    :cond_2
    if-eqz v1, :cond_3

    .line 167
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 175
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 180
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-gt v3, v7, :cond_2

    .line 183
    :try_start_0
    invoke-static {p0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 189
    :goto_2
    return-object v0

    .line 184
    :catch_0
    move-exception v1

    .line 185
    const-string/jumbo v1, "ImageInputHelper"

    const-string/jumbo v2, "Exifdata not present on image, not going to rotate, file: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 243
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 245
    const-string/jumbo v2, "Orientation"

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 249
    packed-switch v0, :pswitch_data_0

    .line 282
    :goto_0
    :pswitch_0
    return-object p1

    .line 251
    :pswitch_1
    const/16 v0, 0x5a

    .line 254
    :goto_1
    add-int/lit8 v0, v0, 0x5a

    .line 258
    :goto_2
    add-int/lit8 v0, v0, 0x5a

    .line 259
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 261
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 262
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 265
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 266
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 267
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 277
    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    move v0, v1

    goto :goto_2

    .line 249
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

.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 332
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 333
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 334
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 335
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 337
    invoke-static {p0}, Lcom/yelp/android/util/e;->c(Ljava/lang/String;)Z

    .line 339
    if-nez v0, :cond_0

    .line 340
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create resized bitmap."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 343
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .prologue
    .line 61
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 355
    invoke-static {}, Lcom/yelp/android/util/e;->c()Ljava/io/File;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 358
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create file container for resized bitmap."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 360
    :cond_0
    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 362
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 363
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 364
    sget-object v3, Lcom/yelp/android/ui/util/ImageInputHelper;->a:[Ljava/lang/String;

    array-length v4, v3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v4, :cond_2

    aget-object v5, v3, v0

    .line 365
    invoke-virtual {p1, v5}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 366
    if-eqz v6, :cond_1

    .line 367
    invoke-virtual {v2, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 372
    :cond_2
    const-string/jumbo v0, "DateTime"

    const-string/jumbo v3, ""

    invoke-virtual {v2, v0, v3}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    invoke-virtual {v2}, Landroid/media/ExifInterface;->saveAttributes()V

    .line 375
    return-object v1
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    .line 299
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 300
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 301
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 303
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 304
    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v4, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v3, v4, :cond_1

    .line 305
    :goto_0
    if-eqz v0, :cond_2

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v3, p1, :cond_2

    .line 306
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object p0

    .line 314
    :cond_0
    :goto_1
    return-object p0

    .line 304
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 309
    :cond_2
    if-nez v0, :cond_0

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, p1, :cond_0

    .line 310
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;Landroid/media/ExifInterface;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 385
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 386
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 387
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 389
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 391
    return-void

    .line 389
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/yelp/android/ui/util/ImageInputHelper$c;",
            ")",
            "Landroid/os/AsyncTask",
            "<",
            "Landroid/content/Context;",
            "Ljava/lang/Void;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 646
    new-instance v1, Lcom/yelp/android/ui/util/ImageInputHelper$a;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/util/ImageInputHelper$a;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V

    .line 647
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$1;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 660
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 649
    :pswitch_0
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;)Ljava/io/File;

    move-result-object v2

    .line 650
    if-eqz v2, :cond_0

    .line 651
    new-instance v0, Lcom/yelp/android/ui/util/ImageProcessingTask$a;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask$a;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V

    goto :goto_0

    .line 656
    :cond_0
    :pswitch_1
    new-instance v0, Lcom/yelp/android/ui/util/ImageProcessingTask$a;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask$a;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V

    goto :goto_0

    .line 658
    :pswitch_2
    new-instance v0, Lcom/yelp/android/ui/util/ImageProcessingTask$b;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask$b;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V

    goto :goto_0

    .line 647
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public a(ILjava/util/EnumSet;Landroid/app/Activity;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/yelp/android/ui/dialogs/ListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 471
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 472
    invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 473
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 475
    :cond_0
    invoke-virtual {p0, p1, v1, p3}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(ILjava/util/HashMap;Landroid/app/Activity;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    return-object v0
.end method

.method public a(ILjava/util/HashMap;Landroid/app/Activity;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<",
            "Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;",
            "Lcom/yelp/android/analytics/iris/EventIri;",
            ">;",
            "Landroid/app/Activity;",
            ")",
            "Lcom/yelp/android/ui/dialogs/ListDialogFragment;"
        }
    .end annotation

    .prologue
    .line 488
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:Lcom/yelp/android/appdata/f;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/f;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 489
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 492
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 493
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 495
    invoke-virtual {p2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 496
    new-instance v6, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v6, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 497
    new-instance v1, Landroid/util/Pair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iget v0, v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->res:I

    invoke-virtual {v3, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 500
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 503
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 504
    new-instance v5, Landroid/util/Pair;

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v3, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-direct {v5, v1, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 507
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 510
    :cond_2
    invoke-static {p1, v4}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 511
    new-instance v1, Lcom/yelp/android/ui/util/ImageInputHelper$d;

    invoke-direct {v1, p0, p3}, Lcom/yelp/android/ui/util/ImageInputHelper$d;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/ListDialogFragment$a;)V

    .line 512
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 669
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 671
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 673
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 674
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 676
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    .line 678
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    .line 682
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    .line 683
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 684
    return-void
.end method

.method public a(ILandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 455
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 456
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    .line 458
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->h:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 459
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 611
    .line 614
    const/4 v0, 0x0

    move v1, v2

    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 615
    new-instance v3, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v3}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 616
    invoke-static {v0, v3}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 617
    iget v4, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 626
    :goto_1
    if-eq v0, v2, :cond_2

    .line 627
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 633
    :goto_2
    iget v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 634
    return-void

    .line 620
    :cond_0
    iget v3, v3, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v3, :cond_1

    move v1, v0

    .line 614
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 628
    :cond_2
    if-eq v1, v2, :cond_3

    .line 629
    invoke-static {p1, v1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 631
    :cond_3
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    :cond_4
    move v0, v2

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 557
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    if-nez v0, :cond_0

    .line 558
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/yelp/android/util/d;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "%s-%s.jpg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    .line 566
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 571
    :cond_0
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$1;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 602
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s is not a valid ImageSource"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :pswitch_0
    new-instance v1, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v2, 0x7f07051c

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/ui/activities/FacebookConnectManager$a;

    sget-object v3, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    invoke-direct {v1, p1, v2, v0, v3}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/FacebookConnectManager$a;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;)V

    .line 579
    check-cast p1, Lcom/yelp/android/ui/util/ImageInputHelper$b;

    invoke-interface {p1, v1}, Lcom/yelp/android/ui/util/ImageInputHelper$b;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 580
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 605
    :goto_1
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 606
    return-void

    .line 583
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 586
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 587
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 588
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 589
    iget v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 592
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const/4 v1, 0x0

    invoke-static {p1, v0, v6, v6, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 599
    iget v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 567
    :catch_0
    move-exception v0

    goto :goto_0

    .line 571
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 523
    const-string/jumbo v0, "key.source"

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 525
    const-string/jumbo v0, "key.path"

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 527
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 528
    const-string/jumbo v1, "key.good.file"

    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    const-string/jumbo v1, "key.good.bitmap"

    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 531
    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/ImageInputHelper$d;
    .locals 1

    .prologue
    .line 738
    new-instance v0, Lcom/yelp/android/ui/util/ImageInputHelper$d;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper$d;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/app/Activity;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 539
    if-eqz p1, :cond_1

    .line 540
    const-string/jumbo v0, "key.source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 541
    const-string/jumbo v0, "key.path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 542
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 543
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Ljava/io/File;

    .line 545
    :cond_0
    const-string/jumbo v0, "key.good.file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 546
    const-string/jumbo v0, "key.good.bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 547
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 548
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    .line 551
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 719
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 727
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    .prologue
    .line 731
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 732
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 734
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
