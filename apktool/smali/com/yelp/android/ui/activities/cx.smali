.class Lcom/yelp/android/ui/activities/cx;
.super Ljava/lang/Object;
.source "ActivityMediaBrowser.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/cv;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/cv;)V
    .locals 0

    .prologue
    .line 507
    iput-object p1, p0, Lcom/yelp/android/ui/activities/cx;->a:Lcom/yelp/android/ui/activities/cv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 510
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->PhotoGridCell:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 511
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/activities/cx;->a:Lcom/yelp/android/ui/activities/cv;

    iget-object v2, v2, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 512
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 513
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/cx;->a:Lcom/yelp/android/ui/activities/cv;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-static {v1}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->g(Lcom/yelp/android/ui/activities/ActivityMediaBrowser;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v0

    .line 515
    iget-object v1, p0, Lcom/yelp/android/ui/activities/cx;->a:Lcom/yelp/android/ui/activities/cv;

    iget-object v1, v1, Lcom/yelp/android/ui/activities/cv;->a:Lcom/yelp/android/ui/activities/ActivityMediaBrowser;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x12c

    const v4, 0x7f070352

    invoke-static {v2, v3, v4, v0}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/yelp/android/ui/activities/ActivityMediaBrowser;->startActivity(Landroid/content/Intent;)V

    .line 519
    return-void
.end method
