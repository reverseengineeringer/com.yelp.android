.class Lcom/yelp/android/ui/activities/businesspage/ay;
.super Lcom/yelp/android/services/OfferChangeListener;
.source "BusinessPageFragment.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)V
    .locals 0

    .prologue
    .line 2333
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-direct {p0}, Lcom/yelp/android/services/OfferChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 2336
    invoke-super {p0, p1, p2}, Lcom/yelp/android/services/OfferChangeListener;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 2337
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 2338
    const-string/jumbo v1, "business_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 2340
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2341
    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getState()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->REMOVED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Offer$OfferState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->getState()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    invoke-virtual {v1, v2}, Lcom/yelp/android/serializable/Offer$OfferState;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2343
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/yelp/android/serializable/YelpBusiness;->setCheckInOffer(Lcom/yelp/android/serializable/Offer;)V

    .line 2344
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 2359
    :cond_1
    :goto_0
    return-void

    .line 2346
    :cond_2
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/yelp/android/serializable/YelpBusiness;->setCheckInOffer(Lcom/yelp/android/serializable/Offer;)V

    .line 2349
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2350
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

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

    .line 2351
    const-string/jumbo v2, "offer"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 2352
    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->b(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 2356
    :cond_4
    iget-object v0, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/ay;->a:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->c(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0
.end method
