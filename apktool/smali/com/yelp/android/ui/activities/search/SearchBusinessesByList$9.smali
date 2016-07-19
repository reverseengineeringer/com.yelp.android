.class Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;
.super Ljava/lang/Object;
.source "SearchBusinessesByList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;)V
    .locals 0

    .prologue
    .line 2041
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 2045
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 2047
    new-instance v1, Lcom/yelp/android/g/a;

    invoke-direct {v1}, Lcom/yelp/android/g/a;-><init>()V

    .line 2048
    const-string/jumbo v2, "claim_popup_add_business_biz_search_page_experiment"

    sget-object v0, Lcom/yelp/android/appdata/experiment/e;->r:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    invoke-virtual {v0}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2051
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->SearchViewPopupAddBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 2052
    sget-object v0, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->enabled:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;

    sget-object v1, Lcom/yelp/android/appdata/experiment/e;->r:Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;

    invoke-virtual {v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment;->b()Ljava/lang/Enum;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/appdata/experiment/TwoBucketExperiment$Cohort;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2054
    invoke-static {}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->a()Lcom/yelp/android/ui/activities/AddNewBizDialog;

    move-result-object v0

    .line 2055
    iget-object v1, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->getSupportFragmentManager()Landroid/support/v4/app/l;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/AddNewBizDialog;->show(Landroid/support/v4/app/l;Ljava/lang/String;)V

    .line 2059
    :goto_0
    return-void

    .line 2057
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList$9;->a:Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/activities/search/SearchBusinessesByList;->a(Landroid/content/Context;)V

    goto :goto_0
.end method
