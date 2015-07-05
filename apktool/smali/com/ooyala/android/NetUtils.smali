.class Lcom/ooyala/android/NetUtils;
.super Ljava/lang/Object;
.source "NetUtils.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ping(Ljava/net/URL;)V
    .locals 3

    .prologue
    .line 32
    if-nez p0, :cond_0

    .line 34
    :goto_0
    return-void

    .line 33
    :cond_0
    new-instance v0, Lcom/ooyala/android/PingTask;

    invoke-direct {v0}, Lcom/ooyala/android/PingTask;-><init>()V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/net/URL;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1}, Lcom/ooyala/android/PingTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method
