.class Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;
.super Ljava/lang/Object;
.source "DeliveryPickupViewController.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V
    .locals 0

    .prologue
    .line 339
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V
    .locals 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$3;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->d(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;

    move-result-object v0

    new-instance v1, Lcom/yelp/android/serializable/PlatformFilter;

    const-string/jumbo v2, "delivery"

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/yelp/android/serializable/PlatformFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$a;->a(Lcom/yelp/android/serializable/PlatformFilter;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method
