.class final Lcom/yelp/android/webimageview/ImageLoader$2;
.super Landroid/content/BroadcastReceiver;
.source "ImageLoader.java"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 158
    :goto_0
    return-void

    .line 153
    :cond_0
    const-string/jumbo v0, "noConnectivity"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 154
    # getter for: Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->access$000()Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->pause()V

    goto :goto_0

    .line 156
    :cond_1
    # getter for: Lcom/yelp/android/webimageview/ImageLoader;->executor:Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;
    invoke-static {}, Lcom/yelp/android/webimageview/ImageLoader;->access$000()Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/webimageview/ImageLoader$PausableThreadPoolExecutor;->resume()V

    goto :goto_0
.end method
