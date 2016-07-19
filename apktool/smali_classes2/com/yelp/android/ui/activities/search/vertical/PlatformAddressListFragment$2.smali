.class Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$2;
.super Ljava/lang/Object;
.source "PlatformAddressListFragment.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DisambiguateAddressFragment$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$2;->a:Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;->a(Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment;)Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/activities/search/vertical/PlatformAddressListFragment$a;->a(Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;)V

    .line 183
    return-void
.end method
