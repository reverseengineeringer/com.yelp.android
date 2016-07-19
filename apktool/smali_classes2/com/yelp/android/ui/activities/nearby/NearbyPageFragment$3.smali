.class Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;
.super Ljava/lang/Object;
.source "NearbyPageFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)V
    .locals 0

    .prologue
    .line 716
    iput-object p1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 719
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->NearbyLocalIssueClick:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 720
    iget-object v0, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment$3;->a:Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->b(Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;)Lcom/yelp/android/serializable/LocalIssue;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Landroid/content/Context;Lcom/yelp/android/serializable/LocalIssue;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/nearby/NearbyPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 723
    return-void
.end method
