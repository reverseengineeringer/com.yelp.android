.class Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;
.super Ljava/lang/Object;
.source "ActivityConfirmAccount.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a(Lcom/yelp/android/appdata/webrequests/ApiRequest;Ljava/lang/Void;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;)V
    .locals 0

    .prologue
    .line 402
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 409
    const/high16 v0, 0x4010000

    .line 412
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 414
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->b(Lcom/yelp/android/ui/activities/ActivityConfirmAccount;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivity(Landroid/content/Intent;)V

    .line 426
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v0, v0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->finish()V

    .line 427
    return-void

    .line 418
    :cond_1
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->isTaskRoot()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5$1;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/ActivityConfirmAccount$5;->a:Lcom/yelp/android/ui/activities/ActivityConfirmAccount;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/ActivityNearby;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityConfirmAccount;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
