.class Lcom/yelp/android/ui/activities/eu;
.super Lcom/yelp/android/appdata/webrequests/j;
.source "CheckInDialog.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/appdata/webrequests/j",
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
    .line 353
    iput-object p1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-direct {p0}, Lcom/yelp/android/appdata/webrequests/j;-><init>()V

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

    .line 357
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->i(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 358
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0, p2}, Lcom/yelp/android/ui/activities/CheckInDialog;->a(Lcom/yelp/android/ui/activities/CheckInDialog;Lcom/yelp/android/serializable/YelpCheckIn;)Lcom/yelp/android/serializable/YelpCheckIn;

    .line 359
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/services/ShareService$ShareObjectType;->CHECKIN:Lcom/yelp/android/services/ShareService$ShareObjectType;

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/CheckInDialog;->d(Lcom/yelp/android/ui/activities/CheckInDialog;)Ljava/util/LinkedList;

    move-result-object v4

    invoke-static {v1, v2, v3, v4, v5}, Lcom/yelp/android/services/ShareService;->a(Landroid/content/Context;Lcom/yelp/android/services/ShareService$ShareObjectType;Ljava/lang/String;Ljava/util/Collection;Z)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/ew;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->j(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/ew;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/yelp/android/ui/activities/ew;->a(Lcom/yelp/android/serializable/YelpCheckIn;)V

    .line 369
    :cond_1
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/i;->o()I

    move-result v0

    .line 370
    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->i()Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;->NO_ALERTS:Lcom/yelp/android/appdata/RemoteConfigPreferences$NotificationSchedule;

    if-ne v0, v1, :cond_4

    .line 372
    const v0, 0x7f070558

    const v1, 0x7f07055e

    const v2, 0x7f0703ff

    const v3, 0x7f070436

    invoke-static {v0, v1, v2, v3}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(IIII)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 375
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->k(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 376
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->l(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->b(Landroid/content/DialogInterface$OnClickListener;)V

    .line 377
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->m(Lcom/yelp/android/ui/activities/CheckInDialog;)Landroid/content/DialogInterface$OnCancelListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 378
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "get_notifications"

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    .line 384
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v1, 0x7f07013e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/CheckInDialog;->h(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v5}, Lcom/yelp/android/ui/util/cr;->a(Ljava/lang/CharSequence;I)V

    .line 388
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 389
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->i()Lcom/yelp/android/database/q;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/database/q;->f()Lcom/yelp/android/database/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/database/d;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 394
    :cond_2
    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusiness()Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->getCheckInOffer()Lcom/yelp/android/serializable/Offer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/yelp/android/serializable/YelpCheckIn;->getBusinessId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/CheckInOfferDialog;->a(Landroid/content/Context;Lcom/yelp/android/serializable/Offer;Ljava/lang/String;)V

    .line 398
    :cond_3
    return-void

    .line 380
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->dismiss()V

    goto :goto_0
.end method

.method public a()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 416
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->q(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->p(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/o;

    move-result-object v1

    invoke-virtual {v0, v1, v2, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 417
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

    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->n(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/YelpActivity;->hideLoadingDialog()V

    .line 403
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->n()Lcom/yelp/android/appdata/LocationService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/LocationService;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessageResource()I

    move-result v0

    const v1, 0x7f07001a

    if-ne v0, v1, :cond_0

    .line 405
    iget-object v0, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/CheckInDialog;->o(Lcom/yelp/android/ui/activities/CheckInDialog;)Lcom/yelp/android/ui/activities/support/YelpActivity;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0703e0

    invoke-virtual {v0, v3, v1, v2}, Lcom/yelp/android/ui/activities/support/YelpActivity;->onProvidersRequired(Lcom/yelp/android/ui/activities/support/o;ZI)V

    .line 412
    :goto_0
    return-void

    .line 408
    :cond_0
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    const v2, 0x7f070419

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/CheckInDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/yelp/android/ui/dialogs/AlertDialogFragment;

    move-result-object v0

    .line 410
    iget-object v1, p0, Lcom/yelp/android/ui/activities/eu;->a:Lcom/yelp/android/ui/activities/CheckInDialog;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/CheckInDialog;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/AlertDialogFragment;->a(Landroid/support/v4/app/FragmentManager;)V

    goto :goto_0
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 353
    check-cast p2, Lcom/yelp/android/serializable/YelpCheckIn;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/eu;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Lcom/yelp/android/serializable/YelpCheckIn;)V

    return-void
.end method
