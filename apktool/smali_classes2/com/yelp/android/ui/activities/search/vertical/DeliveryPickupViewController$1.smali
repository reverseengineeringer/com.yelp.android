.class Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;
.super Ljava/lang/Object;
.source "DeliveryPickupViewController.java"

# interfaces
.implements Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView$a;


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
    .line 280
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;I)I

    .line 284
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->a()V

    .line 285
    return-void
.end method

.method public b()V
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;I)I

    .line 290
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;->b()V

    .line 291
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupView;

    move-result-object v0

    invoke-static {v0}, Lcom/yelp/android/ui/util/ar;->c(Landroid/view/View;)V

    .line 292
    return-void
.end method

.method public c()V
    .locals 3

    .prologue
    .line 297
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;->c()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->startActivityForResult(Landroid/content/Intent;I)V

    .line 301
    return-void
.end method

.method public d()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 305
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;I)I

    .line 306
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->a(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;Z)Z

    .line 309
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->b(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)Lcom/yelp/android/serializable/PlatformDisambiguatedAddress;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 310
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/ActivitySelectPlatformAddress;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->startActivityForResult(Landroid/content/Intent;I)V

    .line 317
    :goto_0
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController$1;->a:Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;->c(Lcom/yelp/android/ui/activities/search/vertical/DeliveryPickupViewController;)V

    goto :goto_0
.end method
