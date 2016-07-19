.class Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 854
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 857
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$100(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 858
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$200(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 860
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 861
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$200(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 863
    :cond_1
    return-void
.end method
