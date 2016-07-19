.class Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;
.super Ljava/lang/Object;
.source "ActivityFullScreenAward.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityFullScreenAward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V
    .locals 0

    .prologue
    .line 433
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 436
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    const v1, 0x7f0f00f6

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    .line 438
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    const v2, 0x7f0f00f5

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ToggleButton;

    .line 442
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->f()Lcom/yelp/android/appdata/c;

    move-result-object v2

    .line 443
    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/c;->e(Z)V

    .line 444
    invoke-virtual {v1}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/yelp/android/appdata/c;->f(Z)V

    .line 447
    iget-object v2, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    const/4 v3, 0x0

    invoke-static {v3, v0, v1}, Lcom/yelp/android/util/p;->a(Landroid/widget/Checkable;Landroid/widget/Checkable;Landroid/widget/Checkable;)Ljava/util/List;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;Ljava/util/List;)Ljava/util/List;

    .line 453
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->a(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/util/d;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 456
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 458
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->b(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 459
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->c(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V

    .line 463
    :cond_0
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/AppData;->q()Lcom/yelp/android/appdata/webrequests/co;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/appdata/webrequests/co;->p()Lcom/yelp/android/serializable/User;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/yelp/android/util/p;->a(Landroid/app/Activity;Lcom/yelp/android/serializable/User;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 469
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->d(Lcom/yelp/android/ui/activities/ActivityFullScreenAward;)V

    .line 474
    :cond_1
    :goto_0
    return-void

    .line 472
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityFullScreenAward$1;->a:Lcom/yelp/android/ui/activities/ActivityFullScreenAward;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityFullScreenAward;->finish()V

    goto :goto_0
.end method
