.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;
.super Landroid/content/BroadcastReceiver;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->aq()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 3254
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 3257
    invoke-static {p2}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Intent;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/ReviewBroadcast;

    .line 3258
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->d()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v4}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3294
    :goto_0
    return-void

    .line 3263
    :cond_0
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->e()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/ui/activities/reviews/ReviewState;)V

    .line 3264
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/serializable/YelpBusiness;->a(I)V

    .line 3267
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/panels/businesspage/b;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/yelp/android/ui/panels/businesspage/b;->b(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 3270
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->e()Lcom/yelp/android/ui/activities/reviews/ReviewState;

    move-result-object v3

    .line 3271
    invoke-virtual {v0}, Lcom/yelp/android/serializable/ReviewBroadcast;->f()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v0, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    :cond_1
    move v0, v2

    .line 3274
    :goto_1
    sget-object v4, Lcom/yelp/android/ui/activities/reviews/ReviewState;->FINISHED_RECENTLY:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v4, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lcom/yelp/android/ui/activities/reviews/ReviewState;->DRAFTED:Lcom/yelp/android/ui/activities/reviews/ReviewState;

    invoke-virtual {v4, v3}, Lcom/yelp/android/ui/activities/reviews/ReviewState;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 3277
    :cond_2
    :goto_2
    if-eqz v0, :cond_4

    .line 3278
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 3279
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->s(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3281
    :cond_3
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->n(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/d;->clear()V

    .line 3282
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 3285
    :cond_4
    if-eqz v2, :cond_6

    .line 3286
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 3287
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->m(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3289
    :cond_5
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->r(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/activities/reviewpage/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/reviewpage/e;->clear()V

    .line 3290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Z)Z

    .line 3291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Ljava/lang/String;)V

    .line 3293
    :cond_6
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$28;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->p(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V

    goto/16 :goto_0

    :cond_7
    move v0, v1

    .line 3271
    goto :goto_1

    :cond_8
    move v2, v1

    .line 3274
    goto :goto_2
.end method
