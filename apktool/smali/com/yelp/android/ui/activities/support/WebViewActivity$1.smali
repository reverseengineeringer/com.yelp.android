.class Lcom/yelp/android/ui/activities/support/WebViewActivity$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;->confirmAndFinish()V
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
    .line 609
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 612
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v2}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendCancelIrisIfNeeded(Z)V

    .line 613
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->getIntentForLeavingWebView()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(ILandroid/content/Intent;)V

    .line 614
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 615
    return-void
.end method
