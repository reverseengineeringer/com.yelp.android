.class public final Lcom/yelp/android/ui/util/aq;
.super Lcom/yelp/android/ui/util/ImageProcessingTask;
.source "ImageProcessingTask.java"


# direct methods
.method public constructor <init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0, p1, p2, p3}, Lcom/yelp/android/ui/util/ImageProcessingTask;-><init>(Ljava/io/File;Landroid/content/Intent;Lcom/yelp/android/ui/util/al;)V

    .line 227
    return-void
.end method

.method private a(Landroid/database/Cursor;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    .line 269
    :try_start_0
    const-string/jumbo v0, "_data"

    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v0

    .line 270
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 271
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 273
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 275
    return-object v0

    .line 273
    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    throw v0
.end method


# virtual methods
.method public bridge synthetic a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 223
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;
    .locals 1

    .prologue
    .line 280
    sget-object v0, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->GALLERY:Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    return-object v0
.end method

.method public b(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 231
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const-string/jumbo v0, "_data"

    aput-object v0, v2, v1

    .line 239
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/aq;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 241
    if-eqz v0, :cond_2

    .line 242
    invoke-direct {p0, v0}, Lcom/yelp/android/ui/util/aq;->a(Landroid/database/Cursor;)Ljava/lang/String;

    move-result-object v0

    .line 244
    :goto_0
    if-nez v0, :cond_0

    .line 247
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/util/aq;->a:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/yelp/android/ui/util/aq;->c:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 250
    const/16 v3, 0x1000

    new-array v3, v3, [B

    .line 252
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_1

    .line 253
    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 258
    :catch_0
    move-exception v1

    .line 259
    invoke-virtual {p0}, Lcom/yelp/android/ui/util/aq;->a()Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/ImageInputHelper$ImageSource;->name()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Problem downloading remote image from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/util/aq;->a:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 263
    :cond_0
    :goto_2
    return-object v0

    .line 255
    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V

    .line 256
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 257
    iget-object v1, p0, Lcom/yelp/android/ui/util/aq;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_2

    :cond_2
    move-object v0, v3

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 223
    check-cast p1, [Landroid/content/Context;

    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a([Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 223
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/ImageProcessingTask;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
