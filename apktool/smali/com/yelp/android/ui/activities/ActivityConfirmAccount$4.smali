.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/ApiRequest$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/appdata/webrequests/ApiRequest$b",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)V
    .locals 0

    .prologue
    .line 330
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Boolean;)V
    .locals 3

    .prologue
    .line 339
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 340
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 341
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/webrequests/co;->a(Z)V

    .line 342
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->ConfirmEmailDetectedConfirmed:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivity(Landroid/content/Intent;)V

    .line 348
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "embedded_intent_data"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 349
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->setResult(ILandroid/content/Intent;)V

    .line 350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->finish()V

    .line 352
    :cond_1
    return-void
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->hideLoadingDialog()V

    .line 334
    const-string/jumbo v0, "Error checking email confirmation."

    invoke-static {p0, v0}, Lcom/yelp/android/util/YelpLog;->remoteError(Ljava/lang/Object;Ljava/lang/String;)V

    .line 335
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 330
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$4;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Boolean;)V

    return-void
.end method
