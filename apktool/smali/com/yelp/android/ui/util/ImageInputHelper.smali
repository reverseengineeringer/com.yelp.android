.class public Lcom/yelp/android/ui/util/ImageInputHelper;
.super Ljava/lang/Object;
.source "ImageInputHelper.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ParcelCreator"
    }
.end annotation


# instance fields
.field private a:Landroid/util/Pair;
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

.field private b:Ljava/io/File;

.field private c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

.field private final d:Lcom/yelp/android/appdata/n;

.field private final e:I

.field private final f:Ljava/util/Random;

.field private g:Ljava/util/List;
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
.method public constructor <init>(Lcom/yelp/android/appdata/n;I)V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:I

    .line 406
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/appdata/n;

    .line 407
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:Ljava/util/Random;

    .line 408
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    .line 409
    return-void
.end method

.method public static a(Landroid/graphics/Bitmap;FFZ)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    .line 202
    div-float v0, p2, p1

    .line 205
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v0, v2

    cmpg-float v0, v1, v0

    if-gez v0, :cond_1

    .line 206
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

    .line 214
    :goto_0
    if-eq p0, v0, :cond_0

    .line 215
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 220
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

    .line 230
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

    .line 223
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    .line 224
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, p2

    float-to-int v2, v2

    .line 225
    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    float-to-int v3, p1

    float-to-int v4, p2

    invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 227
    if-eq v1, v0, :cond_3

    .line 228
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    :cond_3
    move-object v0, v1

    .line 230
    goto :goto_1
.end method

.method public static a(Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 8

    .prologue
    const/4 v0, 0x0

    const v7, 0x64000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 138
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 139
    iput-boolean v6, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 140
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inPreferQualityOverSpeed:Z

    .line 145
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 146
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 152
    iput v6, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 153
    :goto_0
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    div-int v3, v1, v3

    const/16 v4, 0x190

    if-le v3, v4, :cond_0

    .line 154
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 156
    :cond_0
    iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 164
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

    .line 165
    iget v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v1, v1, 0x2

    iput v1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_1

    :cond_1
    move-object v1, v0

    .line 169
    :cond_2
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 173
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 178
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    mul-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 183
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    if-gt v3, v7, :cond_2

    .line 186
    :try_start_0
    invoke-static {p0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 192
    :goto_2
    return-object v0

    .line 187
    :catch_0
    move-exception v1

    .line 188
    const-string/jumbo v1, "ImageInputHelper"

    const-string/jumbo v2, "Exifdata not present on image, not going to rotate, file: %s"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public static a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 235
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 237
    const-string/jumbo v2, "Orientation"

    invoke-virtual {v0, v2, v6}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 240
    packed-switch v0, :pswitch_data_0

    .line 266
    :goto_0
    :pswitch_0
    return-object p1

    .line 242
    :pswitch_1
    const/16 v0, 0x5a

    .line 245
    :goto_1
    add-int/lit8 v0, v0, 0x5a

    .line 249
    :goto_2
    add-int/lit8 v0, v0, 0x5a

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isMutable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 252
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 253
    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    goto :goto_0

    .line 256
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 257
    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 258
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p1

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, v0

    .line 261
    goto :goto_0

    :pswitch_2
    move v0, v1

    goto :goto_1

    :pswitch_3
    move v0, v1

    goto :goto_2

    .line 240
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

    .prologue
    .line 312
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 313
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 314
    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inDensity:I

    .line 315
    iput p2, v0, Landroid/graphics/BitmapFactory$Options;->inTargetDensity:I

    .line 316
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 318
    invoke-static {p0}, Lcom/yelp/android/util/l;->c(Ljava/lang/String;)Z

    .line 320
    if-nez v0, :cond_0

    .line 321
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to create resized bitmap."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 324
    :cond_0
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/util/Pair;)Landroid/util/Pair;
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    return-object p1
.end method

.method private static a(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 334
    invoke-static {}, Lcom/yelp/android/util/l;->c()Ljava/io/File;

    move-result-object v0

    .line 335
    if-nez v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 337
    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "Unable to file container for resized bitmap."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 339
    :cond_0
    invoke-static {p0, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;Ljava/io/File;)V

    .line 340
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 283
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 284
    iput-boolean v0, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 285
    invoke-static {p0, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 287
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v3, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v2, v3, :cond_1

    .line 288
    :goto_0
    if-eqz v0, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v2, p1, :cond_2

    .line 289
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    .line 295
    :cond_0
    :goto_1
    return-object p0

    .line 287
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 291
    :cond_2
    if-nez v0, :cond_0

    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v0, p1, :cond_0

    .line 292
    iget v0, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {p0, v0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1
.end method

.method private static a(Landroid/graphics/Bitmap;Ljava/io/File;)V
    .locals 3

    .prologue
    .line 349
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 350
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p0, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 351
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 352
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    .line 356
    return-void

    .line 354
    :catchall_0
    move-exception v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    throw v0
.end method


# virtual methods
.method public a(Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)Landroid/os/AsyncTask;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Lcom/yelp/android/ui/util/al;",
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
    .line 615
    new-instance v1, Lcom/yelp/android/ui/util/aj;

    invoke-direct {v1, p0, p2}, Lcom/yelp/android/ui/util/aj;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Lcom/yelp/android/ui/util/al;)V

    .line 616
    sget-object v0, Lcom/yelp/android/ui/util/ai;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    .line 629
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 618
    :pswitch_0
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Intent;)Ljava/io/File;

    move-result-object v2

    .line 619
    if-eqz v2, :cond_0

    .line 620
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/ap;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V

    goto :goto_0

    .line 625
    :cond_0
    :pswitch_1
    new-instance v0, Lcom/yelp/android/ui/util/ap;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/ap;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V

    goto :goto_0

    .line 627
    :pswitch_2
    new-instance v0, Lcom/yelp/android/ui/util/aq;

    iget-object v2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    invoke-direct {v0, v2, p1, v1}, Lcom/yelp/android/ui/util/aq;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V

    goto :goto_0

    .line 616
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
    .line 436
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 437
    invoke-virtual {p2}, Ljava/util/EnumSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 438
    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 440
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
    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->d:Lcom/yelp/android/appdata/n;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    .line 454
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->CAMERA:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    .line 458
    new-instance v4, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/HashMap;->size()I

    move-result v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 460
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

    .line 461
    new-instance v6, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/yelp/android/analytics/iris/EventIri;

    invoke-direct {v6, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$SourceIriPair;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;Lcom/yelp/android/analytics/iris/EventIri;)V

    .line 462
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

    .line 464
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 467
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 468
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

    .line 470
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 473
    :cond_2
    new-instance v0, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;

    invoke-direct {v0}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;-><init>()V

    invoke-static {p1, v4}, Lcom/yelp/android/ui/dialogs/SimpleListDialogFragment;->b(ILjava/util/List;)Lcom/yelp/android/ui/dialogs/ListDialogFragment;

    move-result-object v0

    .line 474
    new-instance v1, Lcom/yelp/android/ui/util/an;

    invoke-direct {v1, p0, p3}, Lcom/yelp/android/ui/util/an;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/ListDialogFragment;->a(Lcom/yelp/android/ui/dialogs/as;)V

    .line 475
    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 638
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    if-eqz v0, :cond_2

    .line 639
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 642
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 643
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 645
    :cond_1
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    .line 647
    :cond_2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    .line 651
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    .line 652
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 653
    return-void
.end method

.method public a(ILandroid/app/PendingIntent;)V
    .locals 2

    .prologue
    .line 420
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 421
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    .line 423
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public a(Landroid/app/Activity;)V
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x1

    .line 573
    .line 577
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x9

    if-lt v0, v2, :cond_6

    move v0, v1

    move v2, v3

    .line 578
    :goto_0
    invoke-static {}, Landroid/hardware/Camera;->getNumberOfCameras()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 579
    new-instance v4, Landroid/hardware/Camera$CameraInfo;

    invoke-direct {v4}, Landroid/hardware/Camera$CameraInfo;-><init>()V

    .line 580
    invoke-static {v0, v4}, Landroid/hardware/Camera;->getCameraInfo(ILandroid/hardware/Camera$CameraInfo;)V

    .line 581
    iget v5, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    .line 591
    :goto_1
    if-eq v0, v3, :cond_2

    .line 592
    invoke-static {p1, v0}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    .line 598
    :goto_2
    if-eqz v0, :cond_4

    .line 599
    iget v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 603
    :goto_3
    return-void

    .line 584
    :cond_0
    iget v4, v4, Landroid/hardware/Camera$CameraInfo;->facing:I

    if-nez v4, :cond_1

    move v2, v0

    .line 578
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 593
    :cond_2
    if-eq v2, v3, :cond_3

    .line 594
    invoke-static {p1, v2}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;I)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 596
    :cond_3
    invoke-static {p1}, Lcom/yelp/android/ui/activities/camera/TakePhoto;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 601
    :cond_4
    const v0, 0x7f070250

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    goto :goto_3

    :cond_5
    move v0, v3

    goto :goto_1

    :cond_6
    move v2, v3

    move v0, v3

    goto :goto_1
.end method

.method public a(Landroid/app/Activity;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    if-nez v0, :cond_0

    .line 521
    new-instance v0, Ljava/io/File;

    invoke-static {p1}, Lcom/yelp/android/util/f;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "%s-%s.jpg"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->f:Ljava/util/Random;

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    .line 526
    :try_start_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 531
    :cond_0
    :goto_0
    sget-object v0, Lcom/yelp/android/ui/util/ai;->a:[I

    invoke-virtual {p2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 563
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "%s is not a valid ImageSource"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p2, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 533
    :pswitch_0
    new-instance v0, Lcom/yelp/android/ui/activities/FacebookConnectManager;

    const v2, 0x7f070521

    move-object v3, p1

    check-cast v3, Lcom/yelp/android/ui/activities/fg;

    sget-object v4, Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;->DEFAULT_READ:Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;

    const/16 v5, 0xb

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/yelp/android/ui/activities/FacebookConnectManager;-><init>(Landroid/app/Activity;ILcom/yelp/android/ui/activities/fg;Lcom/yelp/android/ui/activities/FacebookConnectManager$FbPermissionSet;I)V

    .line 536
    check-cast p1, Lcom/yelp/android/ui/util/ak;

    invoke-interface {p1, v0}, Lcom/yelp/android/ui/util/ak;->d(Lcom/yelp/android/ui/activities/FacebookConnectManager;)V

    .line 537
    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->e()V

    .line 566
    :goto_1
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 567
    return-void

    .line 543
    :pswitch_1
    const/16 v0, 0x9

    invoke-static {v0}, Lcom/yelp/android/appdata/n;->a(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 544
    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Landroid/app/Activity;)V

    goto :goto_1

    .line 548
    :cond_1
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 549
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 550
    const-string/jumbo v2, "output"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 551
    iget v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:I

    invoke-virtual {p1, v1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 554
    :pswitch_3
    sget-object v0, Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;->PHOTO:Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;

    const/4 v1, 0x0

    invoke-static {p1, v0, v6, v6, v1}, Lcom/yelp/android/ui/activities/gallery/ActivityChooseFromGallery;->a(Landroid/content/Context;Lcom/yelp/android/ui/util/MediaStoreUtil$MediaType;ZZLjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 560
    iget v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->e:I

    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 527
    :catch_0
    move-exception v0

    goto :goto_0

    .line 531
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
    .line 486
    const-string/jumbo v0, "key.source"

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 487
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 488
    const-string/jumbo v0, "key.path"

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    if-eqz v0, :cond_1

    .line 491
    const-string/jumbo v1, "key.good.file"

    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    const-string/jumbo v1, "key.good.bitmap"

    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/os/Parcelable;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 494
    :cond_1
    return-void
.end method

.method public b(Landroid/app/Activity;)Lcom/yelp/android/ui/util/an;
    .locals 1

    .prologue
    .line 708
    new-instance v0, Lcom/yelp/android/ui/util/an;

    invoke-direct {v0, p0, p1}, Lcom/yelp/android/ui/util/an;-><init>(Lcom/yelp/android/ui/util/ImageInputHelper;Landroid/app/Activity;)V

    return-object v0
.end method

.method public b(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 502
    if-eqz p1, :cond_1

    .line 503
    const-string/jumbo v0, "key.source"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    .line 504
    const-string/jumbo v0, "key.path"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 505
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 506
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->b:Ljava/io/File;

    .line 508
    :cond_0
    const-string/jumbo v0, "key.good.file"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 509
    const-string/jumbo v0, "key.good.bitmap"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 510
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 511
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    .line 514
    :cond_1
    return-void
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

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
    .line 693
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->c:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public e()Ljava/io/File;
    .locals 1

    .prologue
    .line 701
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    if-eqz v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageInputHelper;->a:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/io/File;

    .line 704
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
