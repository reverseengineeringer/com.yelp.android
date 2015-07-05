.class public Lcom/yelp/android/ui/activities/ActivitySplashLogin;
.super Lcom/yelp/android/ui/activities/support/YelpActivity;
.source "ActivitySplashLogin.java"


# instance fields
.field private a:Landroid/view/View$OnClickListener;

.field private b:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/support/YelpActivity;-><init>()V

    .line 66
    new-instance v0, Lcom/yelp/android/ui/activities/ea;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ea;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/view/View$OnClickListener;

    .line 76
    new-instance v0, Lcom/yelp/android/ui/activities/eb;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/eb;-><init>(Lcom/yelp/android/ui/activities/ActivitySplashLogin;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method public getIri()Lcom/yelp/android/analytics/iris/ViewIri;
    .locals 1

    .prologue
    .line 63
    sget-object v0, Lcom/yelp/android/analytics/iris/ViewIri;->SplashScreenLogin:Lcom/yelp/android/analytics/iris/ViewIri;

    return-object v0
.end method

.method public bridge synthetic getIri()Lcom/yelp/android/analytics/iris/b;
    .locals 1

    .prologue
    .line 19
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->getIri()Lcom/yelp/android/analytics/iris/ViewIri;

    move-result-object v0

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 39
    invoke-super {p0, p1, p2, p3}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 40
    sparse-switch p1, :sswitch_data_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 48
    :sswitch_0
    if-ne p2, v0, :cond_0

    .line 54
    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->setResult(I)V

    .line 55
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->finish()V

    goto :goto_0

    .line 40
    nop

    :sswitch_data_0
    .sparse-switch
        0x3f2 -> :sswitch_0
        0x413 -> :sswitch_0
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 23
    invoke-super {p0, p1}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onCreate(Landroid/os/Bundle;)V

    .line 25
    const v0, 0x7f0300d8

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->setContentView(I)V

    .line 26
    const v0, 0x7f0c0326

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    const v0, 0x7f0c0327

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivitySplashLogin;->a:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 31
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->g()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 32
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/i;->d(Z)V

    .line 35
    :cond_0
    return-void
.end method
