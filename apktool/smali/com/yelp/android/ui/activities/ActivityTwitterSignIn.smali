.class public Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityTwitterSignIn.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/yelp/android/appdata/webrequests/gd;

.field private c:Lcom/yelp/android/appdata/webrequests/ge;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Lcom/yelp/android/appdata/webrequests/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/m",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/av/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 139
    new-instance v0, Lcom/yelp/android/ui/activities/ef;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ef;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/m;

    .line 153
    new-instance v0, Lcom/yelp/android/ui/activities/eg;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/eg;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/av/i;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 48
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 49
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/gd;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/gd;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/gd;-><init>(Lcom/yelp/android/appdata/webrequests/m;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/gd;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 186
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "https://api.twitter.com/oauth/authenticate?oauth_token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 188
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 192
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ge;->isFetching()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    :goto_0
    return-void

    .line 196
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ge;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/av/i;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ge;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/av/i;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ge;->execute([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 224
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TwitterLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 54
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    if-eqz p1, :cond_0

    .line 57
    const-string/jumbo v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    .line 58
    const-string/jumbo v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    .line 61
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    .line 62
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yelp/android/ui/activities/ee;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ee;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 104
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->setContentView(Landroid/view/View;)V

    .line 105
    const v0, 0x7f070622

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showLoadingDialog(I)V

    .line 109
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 110
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    .line 116
    :goto_0
    return-void

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 112
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    goto :goto_0

    .line 114
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 128
    const-string/jumbo v0, "GET_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 129
    const-string/jumbo v0, "SAVE_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 130
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 120
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 121
    const-string/jumbo v0, "GET_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/m;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/gd;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/gd;

    .line 122
    const-string/jumbo v0, "SAVE_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/av/i;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/m;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ge;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ge;

    .line 123
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    const-string/jumbo v0, "oauth_token"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string/jumbo v0, "oauth_verifier"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->finish()V

    .line 209
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 220
    :goto_0
    return-void

    .line 211
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a()V

    goto :goto_0

    .line 214
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    goto :goto_0

    .line 217
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    goto :goto_0

    .line 209
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
