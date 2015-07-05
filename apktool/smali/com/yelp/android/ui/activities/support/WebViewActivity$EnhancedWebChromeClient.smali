.class Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# instance fields
.field private final mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

.field private mFreezeTitle:Z

.field private mShowLoading:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 1

    .prologue
    .line 762
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 759
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    .line 763
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    .line 764
    return-void
.end method

.method static synthetic access$500(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mShowLoading:Z

    return v0
.end method

.method static synthetic access$600(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;
    .locals 1

    .prologue
    .line 757
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    return-object v0
.end method

.method static synthetic access$700(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    return v0
.end method


# virtual methods
.method public freezeTitle()V
    .locals 1

    .prologue
    .line 775
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    .line 776
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 780
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 781
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 792
    return-void
.end method

.method public setVirtualDisableLoadingByTitle(Z)V
    .locals 0

    .prologue
    .line 767
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mShowLoading:Z

    .line 768
    return-void
.end method
