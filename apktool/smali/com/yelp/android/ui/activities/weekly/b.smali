.class Lcom/yelp/android/ui/activities/weekly/b;
.super Ljava/lang/Object;
.source "ActivityWeeklyIssue.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V
    .locals 0

    .prologue
    .line 263
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->d(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 270
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 271
    const-string/jumbo v2, "biz_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string/jumbo v2, "market_id"

    iget-object v3, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v3}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->WeeklyBusinessClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 274
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/b;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->startActivity(Landroid/content/Intent;)V

    .line 276
    return-void
.end method
