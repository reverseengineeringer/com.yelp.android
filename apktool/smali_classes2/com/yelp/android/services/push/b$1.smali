.class Lcom/yelp/android/services/push/b$1;
.super Landroid/os/AsyncTask;
.source "GcmManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/services/push/b;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/services/push/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/services/push/b;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 84
    .line 86
    :try_start_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/gcm/a;->a(Landroid/content/Context;)Lcom/google/android/gms/gcm/a;

    move-result-object v2

    .line 88
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    sget-object v5, Lcom/yelp/android/services/push/b;->a:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/google/android/gms/gcm/a;->a([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    const-string/jumbo v3, "GcmManager"

    invoke-static {v3, v2}, Lcom/yelp/android/util/YelpLog;->i(Ljava/lang/Object;Ljava/lang/String;)I

    .line 91
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/yelp/android/appdata/c;->a(Z)V

    .line 92
    iget-object v3, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-virtual {v3, v2}, Lcom/yelp/android/services/push/b;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    .line 93
    :catch_0
    move-exception v2

    .line 94
    const-string/jumbo v3, "GcmManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unable to register GCM, error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 97
    const-string/jumbo v3, "SERVICE_NOT_AVAILABLE"

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    const v3, 0x7f0706e9

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/AppData;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/yelp/android/au/a;->a(Ljava/lang/Throwable;)V

    move v0, v1

    .line 104
    goto :goto_0
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    .prologue
    .line 112
    iget-object v0, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/services/push/b;->a(Lcom/yelp/android/services/push/b;Z)Z

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v0}, Lcom/yelp/android/services/push/b;->a(Lcom/yelp/android/services/push/b;)I

    move-result v0

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 114
    iget-object v0, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v0}, Lcom/yelp/android/services/push/b;->c(Lcom/yelp/android/services/push/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v1}, Lcom/yelp/android/services/push/b;->b(Lcom/yelp/android/services/push/b;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v0}, Lcom/yelp/android/services/push/b;->c(Lcom/yelp/android/services/push/b;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v1}, Lcom/yelp/android/services/push/b;->b(Lcom/yelp/android/services/push/b;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    invoke-static {v2}, Lcom/yelp/android/services/push/b;->d(Lcom/yelp/android/services/push/b;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 116
    iget-object v0, p0, Lcom/yelp/android/services/push/b$1;->a:Lcom/yelp/android/services/push/b;

    const-wide/16 v2, 0x2

    invoke-static {v0, v2, v3}, Lcom/yelp/android/services/push/b;->a(Lcom/yelp/android/services/push/b;J)J

    .line 118
    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 81
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/push/b$1;->a([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 81
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/yelp/android/services/push/b$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method
