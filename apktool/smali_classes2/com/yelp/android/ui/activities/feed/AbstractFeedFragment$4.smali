.class Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;
.super Ljava/lang/Object;
.source "AbstractFeedFragment.java"

# interfaces
.implements Lcom/yelp/android/util/c$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)V
    .locals 0

    .prologue
    .line 551
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 3

    .prologue
    .line 554
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/yelp/android/serializable/YelpBusiness;->a(Z)V

    .line 555
    new-instance v0, Lcom/yelp/android/util/ObjectDirtyEvent;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->l(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    const-string/jumbo v2, "com.yelp.android.business.update"

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/util/ObjectDirtyEvent;-><init>(Landroid/os/Parcelable;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/ObjectDirtyEvent;->a(Landroid/content/Context;)V

    .line 559
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment$4;->a:Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;->a(Lcom/yelp/android/ui/activities/feed/AbstractFeedFragment;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 560
    return-void
.end method
