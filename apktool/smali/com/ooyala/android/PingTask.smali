.class Lcom/ooyala/android/PingTask;
.super Landroid/os/AsyncTask;
.source "NetUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/net/URL;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 9
    check-cast p1, [Ljava/net/URL;

    invoke-virtual {p0, p1}, Lcom/ooyala/android/PingTask;->doInBackground([Ljava/net/URL;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/net/URL;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 17
    array-length v2, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v0, p1, v1

    .line 19
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    check-cast v0, Ljava/net/HttpURLConnection;

    .line 20
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->connect()V

    .line 21
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 22
    :catch_0
    move-exception v0

    .line 23
    const-class v0, Lcom/ooyala/android/NetUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "Ping failed!!!"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 26
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected onPostExecute()V
    .locals 0

    .prologue
    .line 12
    return-void
.end method
