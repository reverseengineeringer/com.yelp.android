.class Lcom/yelp/android/ui/util/ay;
.super Ljava/lang/Object;
.source "MediaAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/ax;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/ax;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/yelp/android/ui/util/ay;->a:Lcom/yelp/android/ui/util/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    .line 132
    sget-object v0, Lcom/yelp/android/analytics/iris/IriSource;->Carousel:Lcom/yelp/android/analytics/iris/IriSource;

    invoke-virtual {v0}, Lcom/yelp/android/analytics/iris/IriSource;->getMapWithParameter()Ljava/util/Map;

    move-result-object v0

    .line 133
    const-string/jumbo v1, "business_id"

    iget-object v2, p0, Lcom/yelp/android/ui/util/ay;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v2}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    invoke-virtual {v2}, Lcom/yelp/android/serializable/YelpBusiness;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lcom/yelp/android/analytics/iris/EventIri;->BusinessAddPhoto:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v1, v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;Ljava/util/Map;)V

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/util/ay;->a:Lcom/yelp/android/ui/util/ax;

    invoke-static {v1}, Lcom/yelp/android/ui/util/ax;->a(Lcom/yelp/android/ui/util/ax;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;)Landroid/content/Intent;

    move-result-object v1

    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const/16 v3, 0x12c

    const v4, 0x7f070352

    invoke-static {v2, v3, v4, v1}, Lcom/yelp/android/ui/activities/ActivityLogin;->a(Landroid/content/Context;IILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 141
    return-void
.end method
