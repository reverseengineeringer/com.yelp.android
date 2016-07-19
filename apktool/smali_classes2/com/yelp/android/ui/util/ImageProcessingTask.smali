.class public abstract Lcom/yelp/android/ui/util/ImageProcessingTask;
.super Landroid/os/AsyncTask;
.source "ImageProcessingTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/ui/util/ImageProcessingTask$a;,
        Lcom/yelp/android/ui/util/ImageProcessingTask$b;,
        Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/Context;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field protected final a:Landroid/content/Intent;

.field protected final b:Lcom/yelp/android/ui/util/ImageInputHelper$c;

.field protected final c:Ljava/io/File;

.field private d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/ImageInputHelper$c;)V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 70
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->a:Landroid/content/Intent;

    .line 71
    iput-object p3, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    .line 73
    return-void
.end method

.method public static a(Ljava/lang/String;ILcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 186
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 188
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 191
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 192
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(III)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 196
    invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 197
    if-nez v0, :cond_0

    .line 198
    new-instance v0, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;

    const-string/jumbo v2, "Could not resample image from path: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    throw v0

    .line 204
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 209
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p1, :cond_2

    .line 210
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 212
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v3, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v5, v3, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 219
    :cond_2
    invoke-static {p0}, Lcom/yelp/android/ui/util/aq;->a(Ljava/lang/String;)I

    move-result v2

    .line 220
    if-eqz v2, :cond_3

    .line 221
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 224
    :cond_3
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private static a(III)Landroid/graphics/BitmapFactory$Options;
    .locals 4

    .prologue
    .line 163
    .line 164
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 166
    if-le p1, p0, :cond_0

    .line 167
    int-to-float v0, p2

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 171
    :goto_0
    int-to-float v2, p0

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 172
    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 173
    return-object v1

    .line 169
    :cond_0
    int-to-float v0, p2

    int-to-float v2, p0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private static b(III)I
    .locals 2

    .prologue
    .line 178
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 180
    const/4 v1, 0x1

    div-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    .line 127
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 128
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v2

    .line 130
    if-eqz v2, :cond_0

    .line 131
    const/4 v0, 0x0

    array-length v3, v2

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :cond_0
    if-nez v0, :cond_1

    .line 135
    const/16 v0, 0x64

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;ILcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 137
    :cond_1
    return-object v0
.end method

.method protected varargs a([Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 77
    const/4 v0, 0x0

    .line 78
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 80
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 81
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 82
    new-instance v1, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;

    const-string/jumbo v2, "Could not retrieve ImageLocation"

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;-><init>(Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    :catch_0
    move-exception v1

    .line 88
    const-string/jumbo v2, "Error loading photo"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->d:Ljava/lang/Exception;

    .line 92
    :goto_0
    return-object v0

    .line 85
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0
.end method

.method public abstract a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 3

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/ImageInputHelper$c;->a(Ljava/io/File;)V

    .line 102
    :goto_0
    return-void

    .line 100
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/ImageInputHelper$c;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/yelp/android/ui/util/ImageInputHelper$c;->a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 150
    const/16 v0, 0x3e8

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;ILcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    const-string/jumbo v1, "ImageInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Final image has dims: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/yelp/android/appdata/BaseYelpApplication;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(Landroid/graphics/Bitmap;)V

    .line 160
    return-void
.end method

.method public abstract b(Landroid/content/Context;)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 106
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 107
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 108
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 109
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 110
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    :cond_0
    return-void

    .line 113
    :catch_0
    move-exception v0

    .line 115
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 117
    const-string/jumbo v1, "ImageInputHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Error saving gallery image to temp location: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 121
    throw v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 35
    check-cast p1, [Landroid/content/Context;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
