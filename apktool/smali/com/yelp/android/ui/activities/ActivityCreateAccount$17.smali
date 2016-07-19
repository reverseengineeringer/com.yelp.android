.class Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/co$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityCreateAccount;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private b:Lcom/yelp/android/appdata/webrequests/core/c$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 1

    .prologue
    .line 1448
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1501
    new-instance v0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17$1;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17$1;-><init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->b:Lcom/yelp/android/appdata/webrequests/core/c$a;

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4

    .prologue
    const v3, 0x7f07057e

    const/4 v2, 0x1

    .line 1452
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1453
    if-nez p1, :cond_1

    .line 1454
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->l()Lcom/yelp/android/analytics/adjust/AdjustManager;

    move-result-object v0

    sget-object v1, Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;->SIGNED_UP:Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;

    invoke-virtual {v0, v1}, Lcom/yelp/android/analytics/adjust/AdjustManager;->a(Lcom/yelp/android/analytics/adjust/AdjustManager$YelpAdjustEvent;)V

    .line 1455
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 1456
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/yelp/android/appdata/c;->k(Z)V

    .line 1459
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1460
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1462
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->b:Lcom/yelp/android/appdata/webrequests/core/c$a;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/appdata/webrequests/core/c$a;)Lcom/yelp/android/appdata/webrequests/core/c;

    .line 1464
    :cond_0
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1465
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setResult(I)V

    .line 1466
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->finish()V

    .line 1499
    :goto_0
    return-void

    .line 1468
    :cond_1
    instance-of v0, p1, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 1469
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getServerMessage()Lorg/json/JSONObject;

    move-result-object v0

    .line 1470
    const-string/jumbo v1, "field"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1471
    const-string/jumbo v1, "birthdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {p1, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)V

    .line 1482
    :cond_2
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->e()Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 1483
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Z)Z

    .line 1484
    const v0, 0x7f070656

    const v1, 0x7f07018f

    invoke-static {v0, v1, v3}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(III)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 1489
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->y(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1490
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/support/v4/app/l;)V

    .line 1497
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getHelper()Lcom/yelp/android/ui/activities/support/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/b;->h()V

    goto :goto_0

    .line 1492
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1, v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityCreateAccount$17;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {p1, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
