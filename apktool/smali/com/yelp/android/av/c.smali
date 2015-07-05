.class Lcom/yelp/android/av/c;
.super Lcom/yelp/android/util/aa;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/aa",
        "<",
        "Ljava/util/List",
        "<",
        "Lcom/yelp/android/analytics/b;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:[Ljava/lang/Runnable;

.field final synthetic b:Lcom/yelp/android/av/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/av/a;[Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 414
    iput-object p1, p0, Lcom/yelp/android/av/c;->b:Lcom/yelp/android/av/a;

    iput-object p2, p0, Lcom/yelp/android/av/c;->a:[Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/yelp/android/util/aa;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/util/List;)Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List",
            "<",
            "Lcom/yelp/android/analytics/b;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v0, 0x0

    .line 419
    aget-object v1, p1, v0

    monitor-enter v1

    .line 420
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/yelp/android/av/a;->a(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 422
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/yelp/android/av/c;->b:Lcom/yelp/android/av/a;

    invoke-static {v4}, Lcom/yelp/android/av/a;->b(Lcom/yelp/android/av/a;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 424
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 425
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 428
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 432
    :try_start_2
    monitor-exit v1

    .line 433
    :goto_0
    return-object v5

    .line 429
    :catch_0
    move-exception v0

    .line 430
    monitor-exit v1

    goto :goto_0

    .line 432
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 4

    .prologue
    .line 438
    iget-object v1, p0, Lcom/yelp/android/av/c;->a:[Ljava/lang/Runnable;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 439
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 438
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 442
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/av/c;->b:Lcom/yelp/android/av/a;

    invoke-static {v0}, Lcom/yelp/android/av/a;->c(Lcom/yelp/android/av/a;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->getInstance(Landroid/content/Context;)Lcom/google/android/gms/analytics/GoogleAnalytics;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/GoogleAnalytics;->dispatchLocalHits()V

    .line 445
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 414
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/av/c;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 414
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/av/c;->a(Ljava/lang/Void;)V

    return-void
.end method
