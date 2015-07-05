.class Lcom/yelp/android/ui/activities/camera/h;
.super Landroid/os/AsyncTask;
.source "CameraWrangler.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<[B",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V
    .locals 0

    .prologue
    .line 484
    iput-object p1, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Lcom/yelp/android/ui/activities/camera/c;)V
    .locals 0

    .prologue
    .line 484
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/camera/h;-><init>(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)V

    return-void
.end method


# virtual methods
.method protected varargs a([[B)Ljava/io/File;
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 488
    const/4 v2, 0x0

    .line 490
    :try_start_0
    array-length v1, p1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    .line 491
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "PhotoFlushTask expects one image only."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    :catch_0
    move-exception v1

    move-object v2, v0

    .line 502
    :goto_0
    :try_start_1
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "Out of memory, could not save image"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 508
    if-eqz v2, :cond_0

    .line 510
    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 513
    :cond_0
    :goto_1
    return-object v0

    .line 493
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/yelp/android/util/l;->c()Ljava/io/File;
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    .line 494
    if-nez v1, :cond_2

    .line 508
    if-eqz v0, :cond_0

    .line 510
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 511
    :catch_1
    move-exception v1

    .line 512
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Could not close output image file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 497
    :cond_2
    :try_start_5
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 498
    const/4 v3, 0x0

    :try_start_6
    aget-object v3, p1, v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    .line 499
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/FileDescriptor;->sync()V
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_8
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_7
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 508
    if-eqz v2, :cond_3

    .line 510
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2

    :cond_3
    :goto_2
    move-object v0, v1

    .line 513
    goto :goto_1

    .line 511
    :catch_2
    move-exception v0

    .line 512
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Could not close output image file"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 511
    :catch_3
    move-exception v1

    .line 512
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Could not close output image file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 504
    :catch_4
    move-exception v1

    move-object v2, v0

    .line 505
    :goto_3
    :try_start_8
    const-string/jumbo v3, "Camera"

    const-string/jumbo v4, "Could not save image"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 508
    if-eqz v2, :cond_0

    .line 510
    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_1

    .line 511
    :catch_5
    move-exception v1

    .line 512
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Could not close output image file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 508
    :catchall_0
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_4
    if-eqz v2, :cond_4

    .line 510
    :try_start_a
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    .line 513
    :cond_4
    :goto_5
    throw v0

    .line 511
    :catch_6
    move-exception v1

    .line 512
    const-string/jumbo v2, "Camera"

    const-string/jumbo v3, "Could not close output image file"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 508
    :catchall_1
    move-exception v0

    goto :goto_4

    .line 504
    :catch_7
    move-exception v1

    goto :goto_3

    .line 501
    :catch_8
    move-exception v1

    goto/16 :goto_0
.end method

.method protected a(Ljava/io/File;)V
    .locals 3

    .prologue
    .line 520
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->b(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/camera/a;

    .line 521
    iget-object v2, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-interface {v0, v2, p1}, Lcom/yelp/android/ui/activities/camera/a;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Ljava/io/File;)V

    goto :goto_0

    .line 523
    :cond_0
    if-eqz p1, :cond_1

    .line 524
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->c(Lcom/yelp/android/ui/activities/camera/CameraWrangler;)Landroid/hardware/Camera;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/camera/h;->a:Lcom/yelp/android/ui/activities/camera/CameraWrangler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/camera/CameraWrangler;->a(Lcom/yelp/android/ui/activities/camera/CameraWrangler;Z)Z

    .line 529
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 484
    check-cast p1, [[B

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/h;->a([[B)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 484
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/camera/h;->a(Ljava/io/File;)V

    return-void
.end method
