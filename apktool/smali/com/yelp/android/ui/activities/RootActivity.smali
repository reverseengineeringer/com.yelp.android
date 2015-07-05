.class public Lcom/yelp/android/ui/activities/RootActivity;
.super Landroid/app/Activity;
.source "RootActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 80
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/ui/activities/RootActivity;->startActivity(Landroid/content/Intent;)V

    .line 81
    invoke-virtual {p0}, Lcom/yelp/android/ui/activities/RootActivity;->finish()V

    .line 82
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 70
    const/16 v0, 0x32c

    if-ne p1, v0, :cond_0

    .line 71
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->a()V

    .line 73
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/16 v3, 0x32c

    .line 32
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    .line 35
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v1

    .line 36
    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->o()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 41
    const-class v1, Lcom/yelp/android/ui/activities/ActivitySplashLogin;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 42
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 43
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 44
    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 64
    :goto_0
    return-void

    .line 46
    :cond_0
    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/i;->n()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/yelp/android/ui/activities/ActivitySplashFindFriends;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0, v3}, Lcom/yelp/android/ui/activities/RootActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 63
    :cond_1
    invoke-direct {p0}, Lcom/yelp/android/ui/activities/RootActivity;->a()V

    goto :goto_0
.end method
