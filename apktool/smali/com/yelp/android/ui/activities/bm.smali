.class Lcom/yelp/android/ui/activities/bm;
.super Ljava/lang/Object;
.source "ActivityCreateAccount.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/di;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

.field private b:Lcom/yelp/android/av/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V
    .locals 1

    .prologue
    .line 1116
    iput-object p1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    new-instance v0, Lcom/yelp/android/ui/activities/bn;

    invoke-direct {v0, p0}, Lcom/yelp/android/ui/activities/bn;-><init>(Lcom/yelp/android/ui/activities/bm;)V

    iput-object v0, p0, Lcom/yelp/android/ui/activities/bm;->b:Lcom/yelp/android/av/i;

    return-void
.end method


# virtual methods
.method public a(ZLcom/yelp/android/appdata/webrequests/YelpException;)V
    .locals 4

    .prologue
    const v2, 0x7f070576

    .line 1120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->hideLoadingDialog()V

    .line 1121
    if-eqz p1, :cond_1

    .line 1122
    const-string/jumbo v0, "ddxego"

    invoke-static {v0}, Lcom/adjust/sdk/e;->a(Ljava/lang/String;)V

    .line 1123
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->u(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)V

    .line 1124
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->v(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1125
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->c()Lcom/yelp/android/serializable/FacebookUser;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1127
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->a(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Lcom/yelp/android/ui/activities/FacebookConnectManager;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->b:Lcom/yelp/android/av/i;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/FacebookConnectManager;->a(Lcom/yelp/android/av/i;)Lcom/yelp/android/av/h;

    .line 1129
    :cond_0
    new-instance v0, Landroid/app/backup/BackupManager;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-direct {v0, v1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->dataChanged()V

    .line 1130
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->w(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Z

    move-result v3

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/friends/ActivityFindFriends;->a(Landroid/content/Context;ZZ)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->startActivity(Landroid/content/Intent;)V

    .line 1132
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->setResult(I)V

    .line 1133
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->finish()V

    .line 1162
    :goto_0
    return-void

    .line 1135
    :cond_1
    instance-of v0, p2, Lcom/yelp/android/appdata/webrequests/ApiException;

    if-eqz v0, :cond_2

    move-object v0, p2

    .line 1136
    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getServerMessage()Lorg/json/JSONObject;

    move-result-object v0

    .line 1137
    const-string/jumbo v1, "field"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1138
    const-string/jumbo v1, "birthdate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ApiException;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiException;->getResultCode()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 1144
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {p2, v1}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->b(Lcom/yelp/android/ui/activities/ActivityCreateAccount;Ljava/lang/String;)V

    .line 1148
    :cond_2
    invoke-static {}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->d()Lcom/yelp/android/appdata/webrequests/YelpException;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 1149
    const v0, 0x7f070678

    const v1, 0x7f070111

    invoke-static {v0, v1, v2}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(III)Lcom/yelp/android/ui/dialogs/TwoButtonDialog;

    move-result-object v0

    .line 1153
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->x(Lcom/yelp/android/ui/activities/ActivityCreateAccount;)Landroid/content/DialogInterface$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/content/DialogInterface$OnClickListener;)V

    .line 1154
    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/dialogs/TwoButtonDialog;->a(Landroid/support/v4/app/FragmentManager;)V

    .line 1160
    :goto_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getHelper()Lcom/yelp/android/ui/activities/support/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/support/h;->h()V

    goto :goto_0

    .line 1156
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/bm;->a:Lcom/yelp/android/ui/activities/ActivityCreateAccount;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/ActivityCreateAccount;->showInfoDialog(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
