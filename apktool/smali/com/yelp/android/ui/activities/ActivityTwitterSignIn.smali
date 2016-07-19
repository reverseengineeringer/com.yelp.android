.class public Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivityTwitterSignIn.java"


# instance fields
.field private a:Landroid/webkit/WebView;

.field private b:Lcom/yelp/android/appdata/webrequests/eu;

.field private c:Lcom/yelp/android/appdata/webrequests/ev;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private final f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 150
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$2;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$2;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    .line 168
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$3;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 50
    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Landroid/webkit/WebView;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    return-object v0
.end method

.method static synthetic a(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    return-object p1
.end method

.method private a()V
    .locals 2

    .prologue
    .line 190
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/eu;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    :goto_0
    return-void

    .line 194
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/eu;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-direct {v0, v1}, Lcom/yelp/android/appdata/webrequests/eu;-><init>(Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/eu;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    return-object p1
.end method

.method private b()V
    .locals 3

    .prologue
    .line 199
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

    .line 200
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 201
    return-void
.end method

.method private c()V
    .locals 4

    .prologue
    .line 205
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ev;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 213
    :goto_0
    return-void

    .line 209
    :cond_0
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ev;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-direct {v0, v1, v2, v3}, Lcom/yelp/android/appdata/webrequests/ev;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/core/c$a;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    .line 212
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/ev;->f([Ljava/lang/Object;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    goto :goto_0
.end method

.method static synthetic c(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    return-void
.end method

.method static synthetic d(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 238
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->TwitterLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/a;
    .locals 1

    .prologue
    .line 23
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    if-eqz p1, :cond_0

    .line 58
    const-string/jumbo v0, "oauth_token"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    .line 59
    const-string/jumbo v0, "oauth_verifier"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    .line 62
    :cond_0
    new-instance v0, Landroid/webkit/WebView;

    invoke-direct {v0, p0}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    .line 63
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    new-instance v1, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn$1;-><init>(Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a:Landroid/webkit/WebView;

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->setContentView(Landroid/view/View;)V

    .line 116
    const v0, 0x7f07060e

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->showLoadingDialog(I)V

    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 121
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    .line 127
    :goto_0
    return-void

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    goto :goto_0

    .line 125
    :cond_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 138
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onPause()V

    .line 139
    const-string/jumbo v0, "GET_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 140
    const-string/jumbo v0, "SAVE_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    invoke-virtual {p0, v0, v1}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->freezeRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;)V

    .line 141
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onResume()V

    .line 132
    const-string/jumbo v0, "GET_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->f:Lcom/yelp/android/appdata/webrequests/ApiRequest$b;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/eu;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b:Lcom/yelp/android/appdata/webrequests/eu;

    .line 133
    const-string/jumbo v0, "SAVE_TOKEN"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->g:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {p0, v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->thawRequest(Ljava/lang/String;Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/ApiRequest$b;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ev;

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c:Lcom/yelp/android/appdata/webrequests/ev;

    .line 134
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 146
    const-string/jumbo v0, "oauth_token"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string/jumbo v0, "oauth_verifier"

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method

.method public onYesNoDialogSelection(ZI)V
    .locals 0

    .prologue
    .line 219
    if-nez p1, :cond_0

    .line 220
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->finish()V

    .line 223
    :cond_0
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 225
    :pswitch_0
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->a()V

    goto :goto_0

    .line 228
    :pswitch_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->c()V

    goto :goto_0

    .line 231
    :pswitch_2
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/ActivityTwitterSignIn;->b()V

    goto :goto_0

    .line 223
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
