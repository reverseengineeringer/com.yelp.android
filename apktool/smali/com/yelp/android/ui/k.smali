.class public Lcom/yelp/android/ui/k;
.super Ljava/lang/Object;
.source "MenuGlobal.java"


# direct methods
.method public static a(Landroid/support/v7/app/ActionBarActivity;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/support/v7/app/ActionBarActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f100013

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 25
    return-void
.end method

.method public static a(Ljava/lang/Object;Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 28
    const v0, 0x7f0c0507

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 29
    const v0, 0x7f0c0506

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 30
    if-eqz v0, :cond_0

    .line 31
    instance-of v1, p0, Lcom/yelp/android/ui/p;

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 33
    :cond_0
    return-void
.end method

.method private static a(Landroid/app/Activity;I)Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 40
    .line 41
    sparse-switch p1, :sswitch_data_0

    move v0, v1

    .line 84
    :cond_0
    :goto_0
    return v0

    .line 51
    :sswitch_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string/jumbo v3, "yelp:external_request"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 53
    invoke-virtual {p0}, Landroid/app/Activity;->isTaskRoot()Z

    move-result v2

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string/jumbo v4, "yelp:return_to_biz_id"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 56
    if-eqz v1, :cond_2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 57
    invoke-static {p0, v3}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 65
    const-string/jumbo v2, "yelp:external_request"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 66
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 67
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 71
    :cond_1
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 68
    :cond_2
    if-nez v2, :cond_3

    if-eqz v1, :cond_1

    .line 69
    :cond_3
    invoke-static {p0}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 74
    :sswitch_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 75
    const-class v2, Lcom/yelp/android/ui/activities/ActivityConfig;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 76
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 79
    :sswitch_2
    instance-of v1, p0, Lcom/yelp/android/ui/p;

    if-eqz v1, :cond_0

    .line 80
    check-cast p0, Lcom/yelp/android/ui/p;

    invoke-interface {p0}, Lcom/yelp/android/ui/p;->a_()V

    goto :goto_0

    .line 41
    nop

    :sswitch_data_0
    .sparse-switch
        0x102002c -> :sswitch_0
        0x7f0c0506 -> :sswitch_2
        0x7f0c0508 -> :sswitch_1
    .end sparse-switch
.end method

.method public static a(Landroid/app/Activity;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 36
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {p0, v0}, Lcom/yelp/android/ui/k;->a(Landroid/app/Activity;I)Z

    move-result v0

    return v0
.end method
