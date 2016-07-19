.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 365
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .prologue
    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 395
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Z)V

    .line 397
    invoke-static {}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->a()Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;

    move-result-object v0

    .line 399
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const-string/jumbo v2, "account_confirmed_dialog"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 401
    new-instance v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;-><init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;)V

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AccountConfirmedDialog;->a(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 429
    return-void
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
    const/4 v2, 0x0

    .line 368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 370
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_1

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x192

    if-ne v0, v1, :cond_1

    .line 374
    invoke-virtual {p0, v2, v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    .line 389
    :cond_0
    :goto_0
    return-void

    .line 375
    :cond_1
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_2

    check-cast p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0x194

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "just_logged_in"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 387
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->c(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 365
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
