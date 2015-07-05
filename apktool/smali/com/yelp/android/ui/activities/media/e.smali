.class public Lcom/yelp/android/ui/activities/media/e;
.super Landroid/os/AsyncTask;
.source "SaveBitmapToGalleryTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/ui/activities/support/YelpFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/YelpFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 40
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/media/e;->a:Ljava/lang/ref/WeakReference;

    .line 41
    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 45
    aget-object v4, p1, v3

    .line 47
    invoke-static {}, Lcom/yelp/android/util/l;->c()Ljava/io/File;

    move-result-object v5

    .line 48
    if-nez v5, :cond_0

    .line 49
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 81
    :goto_0
    return-object v0

    .line 52
    :cond_0
    const/4 v2, 0x0

    .line 53
    const/4 v0, 0x1

    .line 55
    :try_start_0
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v6, Ljava/io/FileOutputStream;

    invoke-direct {v6, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :try_start_1
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v6, 0x55

    invoke-virtual {v4, v2, v6, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 58
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 64
    if-eqz v1, :cond_1

    .line 65
    :try_start_2
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 73
    :cond_1
    :goto_1
    if-nez v0, :cond_4

    .line 74
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 67
    :catch_0
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    move v0, v3

    .line 71
    goto :goto_1

    .line 59
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 60
    :goto_2
    :try_start_3
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 64
    if-eqz v1, :cond_2

    .line 65
    :try_start_4
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_2
    move v0, v3

    .line 70
    goto :goto_1

    .line 67
    :catch_2
    move-exception v0

    .line 68
    invoke-static {v0}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    move v0, v3

    .line 71
    goto :goto_1

    .line 63
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 64
    :goto_3
    if-eqz v1, :cond_3

    .line 65
    :try_start_5
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 70
    :cond_3
    :goto_4
    throw v0

    .line 67
    :catch_3
    move-exception v1

    .line 68
    invoke-static {v1}, Lcom/yelp/android/util/YelpLog;->error(Ljava/lang/Exception;)V

    goto :goto_4

    .line 77
    :cond_4
    invoke-static {v5}, Lcom/yelp/android/util/l;->a(Ljava/io/File;)Z

    move-result v0

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 81
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 63
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 59
    :catch_4
    move-exception v0

    goto :goto_2
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/yelp/android/ui/activities/media/e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/ui/activities/support/YelpFragment;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpFragment;->j()V

    .line 91
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    const v0, 0x7f07059b

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_1
    const v0, 0x7f07024d

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/util/cr;->a(II)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/e;->a([Landroid/graphics/Bitmap;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yelp/android/ui/activities/media/e;->a(Ljava/lang/Boolean;)V

    return-void
.end method
