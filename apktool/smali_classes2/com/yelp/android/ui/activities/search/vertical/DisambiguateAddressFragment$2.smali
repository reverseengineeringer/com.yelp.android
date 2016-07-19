.class Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$2;
.super Ljava/lang/Object;
.source "DisambiguateAddressFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DidYouMeanAddressDialogFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V
    .locals 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;

    invoke-virtual {p1}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->d()Lcom/yelp/android/serializable/PlatformDeliveryAddress;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment;->b(Lcom/yelp/android/serializable/PlatformDeliveryAddress;)V

    .line 220
    return-void
.end method
