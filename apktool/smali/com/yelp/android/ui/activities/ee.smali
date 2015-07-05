.class Lcom/yelp/android/ui/activities/ee;
.super Landroid/webkit/WebViewClient;
.source "ActivityTwitterSignIn.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 100
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->hideLoadingDialog()V

    .line 101
    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 94
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const v1, 0x7f070622

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showLoadingDialog(I)V

    .line 95
    return-void
.end method

.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v0, 0x1

    .line 65
    const-string/jumbo v1, "yelp:///twitter_oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 66
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const v2, 0x7f070622

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showLoadingDialog(I)V

    .line 67
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Landroid/webkit/WebView;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 68
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 69
    const-string/jumbo v2, "oauth_token"

    invoke-virtual {v1, v2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 74
    iget-object v3, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const v3, 0x7f070243

    const v4, 0x7f070500

    const v5, 0x7f070111

    const/4 v6, 0x2

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showYesNoDialog(IIII)V

    .line 79
    :cond_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    const-string/jumbo v3, "oauth_verifier"

    invoke-virtual {v1, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    .line 88
    :goto_0
    return v0

    .line 82
    :cond_1
    const-string/jumbo v1, "https://api.twitter.com/oauth"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const/4 v0, 0x0

    goto :goto_0

    .line 87
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ee;->a:Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "android.intent.action.VIEW"

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
