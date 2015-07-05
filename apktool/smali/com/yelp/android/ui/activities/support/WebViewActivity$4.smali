.class Lcom/yelp/android/ui/activities/support/WebViewActivity$4;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/support/b;


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 655
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 702
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onCancel"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 703
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x1

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 704
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(I)V

    .line 705
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 706
    return-void
.end method

.method public onDone(Lorg/json/JSONObject;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 659
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onDone"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 660
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(I)V

    .line 662
    const-string/jumbo v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 663
    const-string/jumbo v1, "subtitle"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 664
    const-string/jumbo v2, "has_details"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 667
    :try_start_0
    const-string/jumbo v3, "url"

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 675
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 676
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL sent with onDone"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 677
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 678
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 698
    :goto_0
    return-void

    .line 668
    :catch_0
    move-exception v0

    .line 669
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Unexpected result from onDone"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v7}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 671
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0

    .line 682
    :cond_0
    new-instance v4, Landroid/content/Intent;

    const-string/jumbo v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 683
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 684
    const-string/jumbo v3, "com.yelp.android.webview_done"

    invoke-virtual {v4, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 685
    const-string/jumbo v3, "com.yelp.android.webview_title"

    invoke-virtual {v4, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 686
    const-string/jumbo v0, "com.yelp.android.webview_subtitle"

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 687
    const-string/jumbo v0, "com.yelp.android.webview_has_details"

    invoke-virtual {v4, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 689
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformConfirmedIrisIfNeeded()V
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$400(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V

    .line 691
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 692
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {v0, v1, v4}, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;Landroid/content/Intent;)V

    .line 694
    new-instance v1, Lcom/yelp/android/appdata/webrequests/ch;

    const-string/jumbo v2, "webview_done"

    invoke-direct {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/ch;-><init>(Ljava/lang/String;Lcom/yelp/android/av/i;)V

    .line 697
    new-array v0, v6, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/yelp/android/appdata/webrequests/ch;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method public onError(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 710
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/4 v1, 0x1

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 711
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onError"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 712
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 713
    return-void
.end method

.method public onLoaderHide(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 723
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLoaderHide"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 724
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 725
    return-void
.end method

.method public onLoaderShow(Lorg/json/JSONObject;)V
    .locals 2

    .prologue
    .line 717
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLoaderShow"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 718
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->enableLoading()V

    .line 719
    return-void
.end method

.method public onLogin(Lorg/json/JSONObject;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 729
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const-string/jumbo v1, "onLogin"

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->toastIfDebug(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$000(Lcom/yelp/android/ui/activities/support/WebViewActivity;Ljava/lang/String;)V

    .line 732
    :try_start_0
    const-string/jumbo v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 741
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL sent with onLogin"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 743
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 744
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 753
    :goto_0
    return-void

    .line 733
    :catch_0
    move-exception v0

    .line 734
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "No URL included in result from onLogin"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 736
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 737
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    goto :goto_0

    .line 748
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 749
    const-string/jumbo v2, "redirect_url"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 750
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 752
    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$4;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    const/16 v2, 0x413

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
