.class Lcom/yelp/android/ui/activities/weekly/e;
.super Ljava/lang/Object;
.source "ActivityWeeklyIssue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)V
    .locals 0

    .prologue
    .line 323
    iput-object p1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    .line 326
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;I)I

    .line 327
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->e(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->g(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->a(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 329
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 330
    const-string/jumbo v1, "biz_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 331
    const-string/jumbo v1, "market_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->f(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->WeeklyBookmarkClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 335
    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/serializable/YelpBusiness;->isBookmarked()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 336
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->WeeklyRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 337
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->b(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 353
    :goto_0
    return-void

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3ec

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 344
    :cond_1
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->WeeklyAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 345
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/AppData;->m()Lcom/yelp/android/appdata/webrequests/dc;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/appdata/webrequests/dc;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 346
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->c(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;Lcom/yelp/android/serializable/YelpBusiness;)V

    goto :goto_0

    .line 348
    :cond_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    const v3, 0x7f07060a

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/yelp/android/ui/activities/weekly/e;->a:Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;

    invoke-static {v6}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->h(Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v6

    invoke-virtual {v6}, Lcom/yelp/android/serializable/YelpBusiness;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x3eb

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/weekly/ActivityWeeklyIssue;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method
