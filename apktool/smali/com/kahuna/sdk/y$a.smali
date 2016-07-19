.class Lcom/kahuna/sdk/y$a;
.super Landroid/os/AsyncTask;
.source "PushNotificationsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/kahuna/sdk/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/kahuna/sdk/x;


# direct methods
.method public constructor <init>(Lcom/kahuna/sdk/x;)V
    .locals 0

    .prologue
    .line 376
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 377
    iput-object p1, p0, Lcom/kahuna/sdk/y$a;->a:Lcom/kahuna/sdk/x;

    .line 378
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 9

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 382
    if-eqz p1, :cond_0

    aget-object v0, p1, v4

    invoke-static {v0}, Lcom/kahuna/sdk/w;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 420
    :cond_1
    return-object v0

    .line 389
    :cond_2
    const/4 v0, 0x3

    move v3, v0

    move-object v2, v1

    move-object v0, v1

    .line 390
    :goto_0
    if-lez v3, :cond_1

    .line 391
    sget-boolean v0, Lcom/kahuna/sdk/l;->a:Z

    if-eqz v0, :cond_3

    .line 392
    const-string/jumbo v0, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Starting attempt to download backgroud push image. Remaining retries: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_3
    :try_start_0
    new-instance v0, Ljava/net/URL;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-direct {v0, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 395
    const-string/jumbo v5, "Kahuna"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Beginning download of background image url: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    .line 397
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 407
    if-eqz v2, :cond_7

    .line 409
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move v8, v3

    move-object v3, v2

    move v2, v8

    .line 415
    :goto_1
    if-nez v0, :cond_1

    .line 418
    add-int/lit8 v2, v2, -0x1

    move v8, v2

    move-object v2, v3

    move v3, v8

    goto :goto_0

    .line 410
    :catch_0
    move-exception v5

    .line 411
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move v8, v3

    move-object v3, v2

    move v2, v8

    .line 412
    goto :goto_1

    .line 398
    :catch_1
    move-exception v0

    .line 399
    :try_start_2
    const-string/jumbo v3, "Kahuna"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Error downloading Push Background Image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    const-string/jumbo v0, "Kahuna"

    const-string/jumbo v3, "Will not retry downloading image."

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 407
    if-eqz v2, :cond_6

    .line 409
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    move-object v3, v2

    move-object v0, v1

    move v2, v4

    .line 412
    goto :goto_1

    .line 410
    :catch_2
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v2

    move-object v0, v1

    move v2, v4

    .line 412
    goto :goto_1

    .line 403
    :catch_3
    move-exception v0

    .line 404
    :try_start_4
    const-string/jumbo v5, "Kahuna"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Exception downloading Push Background Image: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 407
    if-eqz v2, :cond_5

    .line 409
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    move-object v0, v1

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    .line 412
    goto :goto_1

    .line 410
    :catch_4
    move-exception v0

    .line 411
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    .line 412
    goto :goto_1

    .line 407
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_4

    .line 409
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 412
    :cond_4
    :goto_2
    throw v0

    .line 410
    :catch_5
    move-exception v1

    .line 411
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_5
    move-object v0, v1

    move-object v8, v2

    move v2, v3

    move-object v3, v8

    goto/16 :goto_1

    :cond_6
    move-object v3, v2

    move-object v0, v1

    move v2, v4

    goto/16 :goto_1

    :cond_7
    move v8, v3

    move-object v3, v2

    move v2, v8

    goto/16 :goto_1
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/kahuna/sdk/y$a;->a:Lcom/kahuna/sdk/x;

    invoke-virtual {v0, p1}, Lcom/kahuna/sdk/x;->a(Landroid/graphics/Bitmap;)V

    .line 426
    iget-object v0, p0, Lcom/kahuna/sdk/y$a;->a:Lcom/kahuna/sdk/x;

    invoke-static {v0}, Lcom/kahuna/sdk/y;->a(Lcom/kahuna/sdk/x;)V

    .line 427
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/y$a;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/kahuna/sdk/y$a;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
