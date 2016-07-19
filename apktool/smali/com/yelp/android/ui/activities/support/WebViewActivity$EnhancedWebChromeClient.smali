.class Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;
.super Landroid/webkit/WebChromeClient;
.source "WebViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/support/WebViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EnhancedWebChromeClient"
.end annotation


# instance fields
.field private final mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

.field private mFreezeTitle:Z

.field private mShowLoading:Z


# direct methods
.method public constructor <init>(Lcom/yelp/android/ui/activities/support/WebViewActivity;)V
    .locals 1

    .prologue
    .line 834
    invoke-direct {p0}, Landroid/webkit/WebChromeClient;-><init>()V

    .line 831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    .line 835
    iput-object p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    .line 836
    return-void
.end method

.method static synthetic access$100(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mShowLoading:Z

    return v0
.end method

.method static synthetic access$200(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Lcom/yelp/android/ui/activities/support/WebViewActivity;
    .locals 1

    .prologue
    .line 828
    iget-object v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mActivity:Lcom/yelp/android/ui/activities/support/WebViewActivity;

    return-object v0
.end method

.method static synthetic access$300(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;)Z
    .locals 1

    .prologue
    .line 828
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    return v0
.end method


# virtual methods
.method public freezeTitle()V
    .locals 1

    .prologue
    .line 847
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mFreezeTitle:Z

    .line 848
    return-void
.end method

.method public onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 852
    invoke-super {p0, p1, p2}, Landroid/webkit/WebChromeClient;->onReceivedTitle(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 853
    new-instance v0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;

    invoke-direct {v0, p0, p2}, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient$1;-><init>(Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;Ljava/lang/String;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v0, v2, v3}, Landroid/webkit/WebView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 866
    return-void
.end method

.method public setVirtualDisableLoadingByTitle(Z)V
    .locals 0

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/yelp/android/ui/activities/support/WebViewActivity$EnhancedWebChromeClient;->mShowLoading:Z

    .line 840
    return-void
.end method
