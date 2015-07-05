.class Lcom/yelp/android/ui/activities/ch;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/m",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 523
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 532
    .line 533
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ci;

    if-eqz v0, :cond_1

    .line 534
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f070457

    .line 540
    :goto_0
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->hideLoadingDialog()V

    .line 541
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v4, 0x7f07034e

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p2, v5, v1

    invoke-virtual {v4, v0, v5}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 542
    return-void

    .line 534
    :cond_0
    const v0, 0x7f070458

    goto :goto_0

    .line 536
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/el;

    if-eqz v0, :cond_3

    .line 537
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0701c8

    goto :goto_0

    :cond_2
    const v0, 0x7f0701c9

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/appdata/webrequests/YelpException;",
            ")V"
        }
    .end annotation

    .prologue
    .line 526
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->hideLoadingDialog()V

    .line 527
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v2, 0x7f07034e

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ch;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 528
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 523
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ch;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/String;)V

    return-void
.end method
