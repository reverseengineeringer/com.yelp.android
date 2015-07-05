.class Lcom/yelp/android/ui/activities/cl;
.super Ljava/lang/Object;
.source "ActivityLogin.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/di;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityLogin;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityLogin;)V
    .locals 0

    .prologue
    .line 409
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 3

    .prologue
    const v2, 0x7f07034e

    .line 412
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->c(Lcom/yelp/android/ui/activities/ActivityLogin;)Lcom/yelp/android/ui/dialogs/bn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/dialogs/bn;->dismiss()V

    .line 413
    if-eqz p1, :cond_1

    .line 414
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LogInSuccess:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 417
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.yelp.android.ui.ActivityLogin.showSuccessDlgOnCompletion"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const/16 v1, 0x12c

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showDialog(I)V

    .line 439
    :goto_0
    return-void

    .line 422
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->d(Lcom/yelp/android/ui/activities/ActivityLogin;)V

    goto :goto_0

    .line 424
    :cond_1
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_4

    .line 425
    check-cast p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    .line 426
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_2

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Lcom/yelp/android/ui/activities/ActivityLogin;Ljava/lang/String;)Ljava/lang/String;

    .line 428
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v1, 0x7f070024

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showDialog(I)V

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    .line 430
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->showDialog(I)V

    goto :goto_0

    .line 432
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/ApiException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 436
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/cl;->a:Lcom/yelp/android/ui/activities/ActivityLogin;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
