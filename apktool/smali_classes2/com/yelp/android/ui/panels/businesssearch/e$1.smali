.class Lcom/yelp/android/ui/panels/businesssearch/e$1;
.super Ljava/lang/Object;
.source "RelatedBusinessAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/businesssearch/e;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/YelpBusinessTiny;

.field final synthetic b:Lcom/yelp/android/ui/panels/businesssearch/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/businesssearch/e;Lcom/yelp/android/serializable/YelpBusinessTiny;)V
    .locals 0

    .prologue
    .line 75
    iput-object p1, p0, Lcom/yelp/android/ui/panels/businesssearch/e$1;->b:Lcom/yelp/android/ui/panels/businesssearch/e;

    iput-object p2, p0, Lcom/yelp/android/ui/panels/businesssearch/e$1;->a:Lcom/yelp/android/serializable/YelpBusinessTiny;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    .line 78
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    .line 79
    const-string/jumbo v1, "id"

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/e$1;->a:Lcom/yelp/android/serializable/YelpBusinessTiny;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessTiny;->d()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    invoke-static {}, Lcom/yelp/android/appdata/AppData;->b()Lcom/yelp/android/appdata/AppData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/appdata/AppData;->k()Lcom/yelp/android/appdata/webrequests/core/MetricsManager;

    move-result-object v1

    sget-object v2, Lcom/yelp/android/analytics/iris/EventIri;->BusinessRelatedBusiness:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-virtual {v1, v2, v0}, Lcom/yelp/android/appdata/webrequests/core/MetricsManager;->a(Lcom/yelp/android/analytics/iris/a;Ljava/util/Map;)V

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/panels/businesssearch/e$1;->a:Lcom/yelp/android/serializable/YelpBusinessTiny;

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusinessTiny;->d()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/activities/businesspage/ActivityBusinessPage;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 88
    return-void
.end method
