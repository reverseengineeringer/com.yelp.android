.class Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;
.super Ljava/lang/Object;
.source "WebViewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

.field final synthetic val$title:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 781
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->val$title:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 784
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mShowLoading:Z
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$500(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 785
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$600(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->disableLoading()V

    .line 787
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$700(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 788
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->this$0:Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;

    # getter for: Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;
    invoke-static {v0}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->access$600(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;->val$title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/support/WebViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 790
    :cond_1
    return-void
.end method
