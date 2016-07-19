.class Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ForceDirtySessionCallback"
.end annotation


# instance fields
.field mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 873
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 874
    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->mIntent:Landroid/content/Intent;

    .line 875
    return-void
.end method


# virtual methods
.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 879
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Force dirty session request failed."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 880
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 881
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 882
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 869
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method

.method public onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 886
    const-string/jumbo v0, "WEBVIEW"

    const-string/jumbo v1, "Force dirty session request successfully sent."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/yelp/android/appdata/AppData;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 887
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 888
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$ForceDirtySessionCallback;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 889
    return-void
.end method
