.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)V
    .locals 0

    .prologue
    .line 421
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 424
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;I)I

    .line 425
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->e(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->a(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;Lcom/yelp/android/serializable/YelpBusiness;)Lcom/yelp/android/serializable/YelpBusiness;

    .line 427
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Ljava/util/Map;

    move-result-object v1

    .line 428
    const-string/jumbo v0, "biz_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueBookmarkClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 431
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->U()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueRemoveBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    :goto_0
    invoke-static {v0, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 437
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->g(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/util/c;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$5;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->f(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/util/c;->a(Lcom/yelp/android/serializable/YelpBusiness;)V

    .line 438
    return-void

    .line 431
    :cond_0
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueAddBookmark:Lcom/yelp/android/analytics/iris/EventIri;

    goto :goto_0
.end method
