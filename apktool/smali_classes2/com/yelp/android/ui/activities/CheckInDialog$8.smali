.class Lcom/yelp/android/ui/activities/CheckInDialog$8;
.super Lcom/yelp/android/appdata/webrequests/k$b;
.source "CheckInDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/CheckInDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/k$b",
        "<",
        "Lcom/yelp/android/serializable/YelpCheckIn;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/CheckInDialog;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/CheckInDialog;)V
    .locals 0

    .prologue
    .line 358
    iput-object p1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/k$b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpCheckIn;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/appdata/webrequests/ApiRequest",
            "<***>;",
            "Lcom/yelp/android/serializable/YelpCheckIn;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->i(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 363
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    .line 365
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpCheckIn;->a(Ljava/util/ArrayList;)V

    .line 370
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->p()Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpCheckIn;->z()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/CheckInDialog;->f(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->k(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/CheckInDialog$a;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 383
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->k(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/CheckInDialog$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/CheckInDialog$a;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 385
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->dismiss()V

    .line 388
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v1, 0x7f0701c0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/CheckInDialog;->c(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->z()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yelp/android/ui/util/as;->a(Ljava/lang/CharSequence;I)V

    .line 393
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 394
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/g;->d()Lcom/yelp/android/database/b;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/b;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 401
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpCheckIn;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpCheckIn;->d()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aJ()Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->k()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 407
    :cond_3
    return-void
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 429
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->o(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->n(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/b$e;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 430
    return v2
.end method

.method public onError(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4
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
    const/4 v3, 0x0

    .line 411
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->l(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 412
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->r()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const v1, 0x7f0700a2

    if-ne v0, v1, :cond_0

    .line 414
    iget-object v0, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->m(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0705fc

    invoke-virtual {v0, v3, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/b$e;ZI)V

    .line 425
    :goto_0
    return-void

    .line 418
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v2, 0x7f07070d

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 423
    iget-object v1, p0, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getChildFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/l;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 358
    check-cast p2, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/CheckInDialog$8;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method
