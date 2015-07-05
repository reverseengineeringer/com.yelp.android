.class Lcom/yelp/android/ui/activities/support/WebViewActivity$1;
.super Landroid/webkit/WebViewClient;
.source "WebViewActivity.java"


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 281
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Loading:- %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 283
    return-void
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 287
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Finished[%s]:"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p2, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 288
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 289
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "key.is_platform_flow"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 293
    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity;->mHaveSentPlatformTiming:Z
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$100(Lcom/yelp/android/ui/activities/support/WebViewActivity;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # setter for: Lcom/yelp/android/ui/activities/support/WebViewActivity;->mHaveSentPlatformTiming:Z
    invoke-static {v0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$102(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)Z

    .line 295
    sget-object v0, Lcom/yelp/android/analytics/iris/TimingIri;->PlatformWebViewInitLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity;->mStartTimeMilliseconds:J
    invoke-static {v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$200(Lcom/yelp/android/ui/activities/support/WebViewActivity;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/TimingIri;J)V

    .line 298
    :cond_0
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 1

    .prologue
    .line 261
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 262
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 267
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "Error[%s](%s): %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p4, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 269
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Error[%s](%s): %s"

    new-array v2, v7, [Ljava/lang/Object;

    aput-object p4, v2, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    aput-object p3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "Error[%s]:"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 276
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Error[%s]:"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p3, v2, v3

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 277
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 302
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, p2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->shouldOverrideDomain(Ljava/lang/String;)Z

    move-result v0

    .line 303
    if-eqz v0, :cond_0

    .line 304
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 305
    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v2, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 307
    :cond_0
    return v0
.end method
