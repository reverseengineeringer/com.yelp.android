.class Lcom/yelp/android/ui/activities/tips/WriteTip$a;
.super Ljava/lang/Object;
.source "WriteTip.java"

# interfaces
.implements Lcom/yelp/android/appdata/webrequests/core/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/tips/WriteTip;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/tips/WriteTip;


# direct methods
.method private constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V
    .locals 0

    .prologue
    .line 389
    iput-object p1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/yelp/android/ui/activities/tips/WriteTip;Lcom/yelp/android/ui/activities/tips/WriteTip$1;)V
    .locals 0

    .prologue
    .line 389
    invoke-direct {p0, p1}, Lcom/yelp/android/ui/activities/tips/WriteTip$a;-><init>(Lcom/yelp/android/ui/activities/tips/WriteTip;)V

    return-void
.end method

.method private a(I)V
    .locals 1

    .prologue
    .line 402
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->hideLoadingDialog()V

    .line 403
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/yelp/android/ui/util/as;->a(II)V

    .line 404
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->finish()V

    .line 405
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
    .line 409
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 410
    const-string/jumbo v1, "tip_deleted"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 411
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/4 v2, -0x1

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->setResult(ILandroid/content/Intent;)V

    .line 412
    const v0, 0x7f0705e3

    invoke-direct {p0, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a(I)V

    .line 418
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/tips/WriteTip;->b(Lcom/yelp/android/ui/activities/tips/WriteTip;)Lcom/yelp/android/serializable/Tip;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.tips.delete"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 421
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
    .line 394
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->hideLoadingDialog()V

    .line 395
    iget-object v0, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->e(Lcom/yelp/android/ui/activities/tips/WriteTip;)Landroid/widget/EditText;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 396
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 397
    const-string/jumbo v1, "bundle message for dialogs"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    invoke-virtual {p2, v2}, Lcom/yelp/android/appdata/webrequests/YelpException;->getMessage(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a:Lcom/yelp/android/ui/activities/tips/WriteTip;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/ui/activities/tips/WriteTip;->showDialog(ILandroid/os/Bundle;)Z

    .line 399
    return-void
.end method

.method public synthetic onSuccess(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 389
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/tips/WriteTip$a;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V

    return-void
.end method
