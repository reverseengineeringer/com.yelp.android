.class Lcom/yelp/android/ui/activities/ActivityMyOffers$1;
.super Landroid/content/BroadcastReceiver;
.source "ActivityMyOffers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/ActivityMyOffers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/ActivityMyOffers;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/ActivityMyOffers;)V
    .locals 0

    .prologue
    .line 151
    iput-object p1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 154
    const-string/jumbo v0, "offer"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Offer;

    .line 155
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->l()Lcom/yelp/android/serializable/Offer$OfferState;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/serializable/Offer$OfferState;->USED:Lcom/yelp/android/serializable/Offer$OfferState;

    if-ne v1, v2, :cond_2

    .line 156
    :cond_0
    if-eqz v0, :cond_1

    .line 157
    iget-object v1, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers;

    invoke-virtual {v0}, Lcom/yelp/android/serializable/Offer;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a(Ljava/lang/String;)V

    .line 159
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->a(Lcom/yelp/android/ui/activities/ActivityMyOffers;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/activities/ActivityMyOffers$1;->a:Lcom/yelp/android/ui/activities/ActivityMyOffers;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/ActivityMyOffers;->finish()V

    .line 163
    :cond_2
    return-void
.end method
