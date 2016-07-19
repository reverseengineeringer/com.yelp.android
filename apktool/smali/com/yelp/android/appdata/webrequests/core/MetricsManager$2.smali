.class Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;
.super Lcom/yelp/android/util/q;
.source "MetricsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a([Ljava/lang/Runnable;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/util/q",
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

.field final synthetic b:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;


# direct methods
.method constructor <init>(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;[Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 447
    iput-object p1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->b:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    iput-object p2, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->a:[Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/yelp/android/util/q;-><init>()V

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

    .line 452
    aget-object v1, p1, v0

    monitor-enter v1

    .line 453
    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Ljava/util/List;ZLorg/json/JSONArray;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 455
    :try_start_1
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    iget-object v4, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->b:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-static {v4}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->b(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 457
    invoke-virtual {v2, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V

    .line 461
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 465
    :try_start_2
    monitor-exit v1

    .line 466
    :goto_0
    return-object v5

    .line 462
    :catch_0
    move-exception v0

    .line 463
    monitor-exit v1

    goto :goto_0

    .line 465
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
    .line 471
    iget-object v1, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->a:[Ljava/lang/Runnable;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 472
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    .line 471
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->b:Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    invoke-static {v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->c(Lcom/yelp/android/appdata/webrequests/core/MetricsManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/analytics/c;->a(Landroid/content/Context;)Lcom/google/android/gms/analytics/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/analytics/c;->i()V

    .line 478
    :cond_1
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 447
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->a([Ljava/util/List;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 447
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager$2;->a(Ljava/lang/Void;)V

    return-void
.end method
