.class Lcom/yelp/android/ui/activities/tips/WriteTip$8;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/tips/WriteTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 451
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8

    .prologue
    const/16 v7, 0x12c

    .line 456
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    .line 457
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->TipSave:Lcom/yelp/android/analytics/iris/EventIri;

    const-string/jumbo v2, "source"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/tips/WriteTip;->f(Lcom/yelp/android/ui/activities/tips/WriteTip;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/lang/String;Ljava/lang/Object;)V

    .line 458
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->d(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/appdata/webrequests/ApiRequest;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/ApiRequest;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 462
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0c002b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 463
    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->e(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 465
    const-string/jumbo v3, "bundle message for dialogs"

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f070488

    :goto_1
    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0, v7, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 465
    :cond_1
    const v0, 0x7f070438

    goto :goto_1

    .line 473
    :cond_2
    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->e(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    if-le v2, v0, :cond_3

    .line 474
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 475
    const-string/jumbo v3, "bundle message for dialogs"

    const v4, 0x7f0705ef

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-virtual {v1, v4, v5}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0, v7, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showDialog(ILandroid/os/Bundle;)Z

    goto :goto_0

    .line 482
    :cond_3
    sget-object v0, Lcom/yelp/android/ui/activities/tips/WriteTip$2;->a:[I

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->g(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/activities/tips/WriteTip$TipAction;->ordinal()I

    move-result v2

    aget v0, v0, v2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    .line 487
    :pswitch_0
    const/4 v0, 0x0

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->h(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;

    move-result-object v2

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->i(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/ToggleButton;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v0

    .line 490
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    const-class v3, Lcom/yelp/android/ui/activities/ActivityRetryTipShare;

    invoke-static {v1, v2, v0, v3}, Lcom/yelp/android/util/p;->a(Landroid/content/Context;Lcom/yelp/android/serializable/User;Ljava/util/List;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 496
    if-eqz v0, :cond_4

    .line 497
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$8;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v2, 0x66

    invoke-virtual {v1, v0, v2}, Lcom/yelp/android/ui/activities/tips/WriteTip;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 484
    :pswitch_1
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b()V

    goto/16 :goto_0

    .line 499
    :cond_4
    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b()V

    goto/16 :goto_0

    .line 482
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
