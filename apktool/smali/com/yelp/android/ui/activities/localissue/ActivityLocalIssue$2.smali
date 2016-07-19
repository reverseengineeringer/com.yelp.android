.class Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;
.super Ljava/lang/Object;
.source "ActivityLocalIssue.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


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
    .line 357
    iput-object p1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

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
    .line 362
    iget-object v0, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->d(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->c(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p3, v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/businesssearch/BusinessAdapter;->a(I)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v0

    .line 365
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->b(Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;)Ljava/util/Map;

    move-result-object v1

    .line 366
    const-string/jumbo v2, "biz_id"

    invoke-virtual {v0}, Lcom/yelp/android/serializable/YelpBusiness;->aD()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->LocalIssueBusinessClicked:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v2, v1}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 368
    iget-object v1, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue$2;->a:Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;

    invoke-static {v2, v0}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/localissue/ActivityLocalIssue;->startActivity(Landroid/content/Intent;)V

    .line 371
    return-void
.end method
