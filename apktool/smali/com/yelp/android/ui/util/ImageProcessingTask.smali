.class abstract Lcom/yelp/android/ui/util/ImageProcessingTask;
.super Landroid/os/AsyncTask;
.source "ImageProcessingTask.java"


# annotations
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

.field protected final b:Lcom/yelp/android/ui/util/al;

.field protected final c:Ljava/io/File;

.field private d:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 69
    iput-object p2, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->a:Landroid/content/Intent;

    .line 70
    iput-object p3, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/al;

    .line 71
    iput-object p1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    .line 72
    return-void
.end method

.method private a(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 181
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 182
    iput-boolean v6, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 183
    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 186
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 187
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v0, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v3, v0, p2}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(III)I

    move-result v0

    iput v0, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 191
    invoke-static {p1, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 192
    if-nez v0, :cond_0

    .line 193
    new-instance v0, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;

    const-string/jumbo v2, "Could not resample image from path: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;-><init>(Lcom/yelp/android/ui/util/ImageProcessingTask;Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    throw v0

    .line 199
    :cond_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 204
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-gt v2, p2, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-le v2, p2, :cond_2

    .line 205
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3, p2}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(III)Landroid/graphics/BitmapFactory$Options;

    move-result-object v2

    .line 207
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

    .line 214
    :cond_2
    invoke-static {p1}, Lcom/yelp/android/ui/util/co;->a(Ljava/lang/String;)I

    move-result v2

    .line 215
    if-eqz v2, :cond_3

    .line 216
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    .line 219
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
    .line 159
    .line 160
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 162
    if-le p1, p0, :cond_0

    .line 163
    int-to-float v0, p2

    int-to-float v2, p1

    div-float/2addr v0, v2

    .line 167
    :goto_0
    int-to-float v2, p0

    mul-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 168
    int-to-float v2, p1

    mul-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 169
    return-object v1

    .line 165
    :cond_0
    int-to-float v0, p2

    int-to-float v2, p0

    div-float/2addr v0, v2

    goto :goto_0
.end method

.method private static b(III)I
    .locals 2

    .prologue
    .line 174
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 176
    const/4 v1, 0x1

    div-int/2addr v0, p2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 123
    const/4 v0, 0x0

    .line 124
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 125
    new-instance v2, Landroid/media/ExifInterface;

    invoke-direct {v2, v1}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 126
    invoke-virtual {v2}, Landroid/media/ExifInterface;->getThumbnail()[B

    move-result-object v2

    .line 127
    if-eqz v2, :cond_0

    .line 128
    const/4 v0, 0x0

    array-length v3, v2

    invoke-static {v2, v0, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 131
    :cond_0
    if-nez v0, :cond_1

    .line 132
    const/16 v0, 0x64

    invoke-direct {p0, v1, v0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 134
    :cond_1
    return-object v0
.end method

.method protected varargs a([Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    .line 76
    const/4 v0, 0x0

    .line 77
    const/4 v1, 0x0

    aget-object v1, p1, v1

    .line 79
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 80
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    new-instance v1, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;

    const-string/jumbo v2, "Could not retrieve ImageLocation"

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/yelp/android/ui/util/ImageProcessingTask$ImageProcessingException;-><init>(Lcom/yelp/android/ui/util/ImageProcessingTask;Ljava/lang/String;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :catch_0
    move-exception v1

    .line 87
    const-string/jumbo v2, "Error loading photo"

    invoke-static {p0, v2, v1}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 88
    iput-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->d:Ljava/lang/Exception;

    .line 91
    :goto_0
    return-object v0

    .line 84
    :cond_0
    :try_start_1
    invoke-virtual {p0, v2}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;)V

    .line 85
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
    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->d:Ljava/lang/Exception;

    if-eqz v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/al;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/util/al;->a(Ljava/io/File;)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->b:Lcom/yelp/android/ui/util/al;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {p0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-interface {v0, p1, v1, v2}, Lcom/yelp/android/ui/util/al;->a(Landroid/graphics/Bitmap;Ljava/io/File;Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;)Z

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 147
    const/16 v0, 0x3e8

    invoke-direct {p0, p1, v0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 149
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

    .line 154
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/util/ImageProcessingTask;->b(Landroid/graphics/Bitmap;)V

    .line 155
    return-void
.end method

.method public abstract b(Landroid/content/Context;)Ljava/lang/String;
.end method

.method protected b(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    .line 105
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 106
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 108
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V

    .line 109
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 114
    iget-object v1, p0, Lcom/yelp/android/ui/util/ImageProcessingTask;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 116
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

    .line 118
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
