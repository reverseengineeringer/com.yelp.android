.class Lcom/yelp/android/ui/activities/support/WebViewActivity$2;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 0

    .prologue
    .line 559
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 562
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    # invokes: Lcom/yelp/android/ui/activities/support/WebViewActivity;->sendPlatformCancelIrisIfNeeded(Z)V
    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity;Z)V

    .line 563
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setResult(I)V

    .line 564
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$2;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->finish()V

    .line 565
    return-void
.end method
