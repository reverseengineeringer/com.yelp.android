.class final Lcom/yelp/android/ui/activities/camera/k;
.super Landroid/os/AsyncTask;
.source "PreviewPhoto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;)V
    .locals 0

    .prologue
    .line 108
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 109
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/k;->a:Landroid/widget/ImageView;

    .line 110
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/io/File;)Landroid/graphics/Bitmap;
    .locals 14

    .prologue
    .line 115
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    const/4 v0, 0x1

    iput-boolean v0, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 117
    array-length v0, p1

    const/4 v1, 0x0

    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    .line 118
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    .line 119
    invoke-static {v4, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v1

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 131
    if-eqz v1, :cond_0

    if-nez v0, :cond_1

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 134
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 135
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    .line 136
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v0

    .line 138
    :cond_1
    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    iget v5, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v2, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    mul-int/2addr v2, v5

    int-to-double v8, v2

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    int-to-double v12, v0

    mul-double/2addr v10, v12

    int-to-double v0, v1

    mul-double/2addr v0, v10

    div-double v0, v8, v0

    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide v0

    double-to-int v0, v0

    .line 140
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 141
    iput v0, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 142
    const/4 v0, 0x0

    .line 144
    :goto_0
    if-nez v0, :cond_2

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/16 v5, 0x10

    if-ge v2, v5, :cond_2

    .line 146
    :try_start_0
    invoke-static {v4, v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 152
    :goto_1
    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    shl-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_0

    .line 147
    :catch_0
    move-exception v2

    .line 148
    const-string/jumbo v2, "Preview"

    const-string/jumbo v5, "Out of memory error at sample size %d, retrying..."

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v5, v6}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 155
    :cond_2
    :try_start_1
    invoke-static {v3, v0}, Lcom/yelp/android/ui/util/ImageInputHelper;->a(Ljava/io/File;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 162
    :goto_2
    return-object v0

    .line 156
    :catch_1
    move-exception v1

    .line 157
    const-string/jumbo v1, "Preview"

    const-string/jumbo v2, "Exifdata not present on image, not going to rotate, file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-static {v1, v2, v4}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 162
    :cond_3
    const/4 v0, 0x0

    goto :goto_2
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 167
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 168
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/k;->a:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 169
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 104
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/k;->a([Ljava/io/File;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 104
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/k;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
