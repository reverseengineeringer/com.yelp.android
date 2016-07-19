.class Lcom/yelp/android/ui/activities/support/WebViewActivity$3;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/JavaScriptEventInterface$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 693
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 757
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onCancel"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 758
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 759
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(I)V

    .line 760
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 761
    return-void
.end method

.method public onDone(Lorg/json/JSONObject;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 697
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onDone"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 698
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(I)V

    .line 700
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 701
    const-string/jumbo v1, "subtitle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 702
    const-string/jumbo v2, "has_details"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 705
    :try_start_0
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 713
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 714
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL sent with onDone"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 715
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v9}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 716
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 753
    :goto_0
    return-void

    .line 706
    :catch_0
    move-exception v0

    .line 707
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Unexpected result from onDone"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 708
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v9}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 709
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0

    .line 720
    :cond_0
    :try_start_1
    const-string/jumbo v4, "order_value"

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 721
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v4

    const-string/jumbo v5, "order_value"

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(D)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_2

    .line 730
    :cond_1
    :goto_1
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 731
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 733
    const-string/jumbo v3, "title"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 734
    const-string/jumbo v3, "com.yelp.android.webview_done"

    invoke-virtual {v4, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    const-string/jumbo v3, "com.yelp.android.webview_title"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 736
    const-string/jumbo v0, "com.yelp.android.webview_subtitle"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 737
    const-string/jumbo v0, "com.yelp.android.webview_has_details"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 739
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendConfirmedIrisIfNeeded()V

    .line 741
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 742
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;Landroid/content/Intent;)V

    .line 744
    new-instance v1, Lcom/yelp/android/appdata/webrequests/bz;

    const-string/jumbo v2, "webview_done"

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/bz;-><init>(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    .line 748
    new-array v0, v8, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/bz;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto/16 :goto_0

    .line 726
    :catch_1
    move-exception v4

    .line 727
    :goto_2
    const-string/jumbo v4, "We couldn\'t show the Facebook AppInviteDialog."

    invoke-static {p0, v4}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 750
    :cond_2
    const-string/jumbo v0, "com.yelp.android.webview_done"

    invoke-virtual {v4, v0, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 751
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 726
    :catch_2
    move-exception v4

    goto :goto_2
.end method

.method public onError(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 765
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 766
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onError"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 767
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 768
    return-void
.end method

.method public onIframeReady(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 823
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onIframeReady"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 824
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->onIframeReady()V

    .line 825
    return-void
.end method

.method public onLoaderHide(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 778
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLoaderHide"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 779
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 780
    return-void
.end method

.method public onLoaderShow(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLoaderShow"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 773
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 774
    return-void
.end method

.method public onLogin(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    .line 784
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLogin"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 787
    :try_start_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 796
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 797
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL sent with onLogin"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 798
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 799
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 813
    :goto_0
    return-void

    .line 788
    :catch_0
    move-exception v0

    .line 789
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL included in result from onLogin"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 791
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 792
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0

    .line 803
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 804
    const-string/jumbo v2, "redirect_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 805
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const v3, 0x7f070398

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v5}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntent()Landroid/content/Intent;

    move-result-object v5

    const-string/jumbo v6, "extra.business_name"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 812
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/16 v2, 0x418

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public onOpportunityReady(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 817
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onOpportunityReady"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 818
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$3;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->onOpportunityReady()V

    .line 819
    return-void
.end method
