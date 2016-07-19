.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;
.super Lcom/yelp/android/services/OfferChangeListener;
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
    .line 3350
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/services/OfferChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 3353
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/OfferChangeListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 3354
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 3355
    const-string/jumbo v1, "business_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3357
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3358
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Offer$OfferState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Offer$OfferState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3361
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Offer;)V

    .line 3362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 3377
    :cond_1
    :goto_0
    return-void

    .line 3364
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->a(Lcom/yelp/android/serializable/Offer;)V

    .line 3367
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 3368
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 3369
    const-string/jumbo v2, "offer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 3370
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3374
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$33;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0
.end method
