.class Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;
.super Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;
.source "BusinessPageFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->N()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;ZZ)V
    .locals 0

    .prologue
    .line 2070
    iput-object p1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    iput-boolean p3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->a:Z

    iput-boolean p4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->b:Z

    invoke-direct {p0, p1, p2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$h;-><init>(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;Lcom/yelp/android/analytics/iris/EventIri;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 2074
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->a:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->b:Z

    if-eqz v0, :cond_0

    .line 2075
    const v0, 0x7f07048e

    .line 2082
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->k(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/ui/util/z;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/ui/util/z;->d()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2084
    new-instance v2, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;

    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v3

    invoke-virtual {v3}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x14

    invoke-direct {v2, v3, v4}, Lcom/yelp/android/appdata/webrequests/BusinessMediaRequest;-><init>(Ljava/lang/String;I)V

    .line 2089
    iget-object v3, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v3}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-static {v4}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->e(Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v4

    invoke-static {v3, v4, v1, v2, v0}, Lcom/yelp/android/ui/activities/mediagrid/ActivityBusinessMediaGrid;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Ljava/util/ArrayList;Lcom/yelp/android/appdata/webrequests/MediaRequest;I)Landroid/content/Intent;

    move-result-object v0

    .line 2096
    iget-object v1, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->c:Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 2097
    return-void

    .line 2076
    :cond_0
    iget-boolean v0, p0, Lcom/yelp/android/ui/activities/businesspage/BusinessPageFragment$9;->a:Z

    if-eqz v0, :cond_1

    .line 2077
    const v0, 0x7f070647

    goto :goto_0

    .line 2079
    :cond_1
    const v0, 0x7f070185

    goto :goto_0
.end method
