.class Lcom/yelp/android/services/push/s;
.super Landroid/os/AsyncTask;
.source "PushNotificationWithImageHandler.java"


# annotations
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
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/yelp/android/services/push/r;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/yelp/android/services/push/r;)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 96
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/yelp/android/services/push/s;->a:Ljava/lang/ref/WeakReference;

    .line 98
    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 108
    iget-object v0, p0, Lcom/yelp/android/services/push/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/r;

    .line 109
    if-nez v0, :cond_0

    move-object v0, v1

    .line 126
    :goto_0
    return-object v0

    .line 113
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/services/push/r;->d()Ljava/lang/String;

    move-result-object v2

    .line 114
    invoke-virtual {v0}, Lcom/yelp/android/services/push/r;->b()Ljava/lang/String;

    move-result-object v0

    .line 115
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    move-object v0, v1

    .line 116
    goto :goto_0

    .line 120
    :cond_2
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "PhotoLikePushNotificationHandler Bitmap error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, v0}, Lcom/yelp/android/util/YelpLog;->e(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 126
    goto :goto_0
.end method

.method protected a(Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/yelp/android/services/push/s;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/services/push/r;

    .line 132
    if-eqz v0, :cond_0

    .line 133
    if-nez p1, :cond_1

    .line 134
    invoke-static {v0}, Lcom/yelp/android/services/push/r;->a(Lcom/yelp/android/services/push/r;)V

    .line 140
    :cond_0
    :goto_0
    return-void

    .line 137
    :cond_1
    invoke-static {v0, p1}, Lcom/yelp/android/services/push/r;->a(Lcom/yelp/android/services/push/r;Landroid/graphics/Bitmap;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/push/s;->a([Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 91
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/push/s;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
