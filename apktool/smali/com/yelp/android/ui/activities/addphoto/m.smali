.class Lcom/yelp/android/ui/activities/addphoto/m;
.super Lcom/yelp/android/analytics/d;
.source "PhotoTeaser.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/m;->a:Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    invoke-direct {p0, p2, p3}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/m;->a:Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/addphoto/m;->a:Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    iget-object v2, p0, Lcom/yelp/android/ui/activities/addphoto/m;->a:Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;

    invoke-static {v2}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->a(Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;)Lcom/yelp/android/serializable/YelpBusiness;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/yelp/android/ui/activities/addphoto/AddBusinessPhoto;->a(Landroid/content/Context;Lcom/yelp/android/serializable/YelpBusiness;Z)Landroid/content/Intent;

    move-result-object v1

    const/16 v2, 0x40d

    invoke-virtual {v0, v1, v2}, Lcom/yelp/android/ui/activities/addphoto/PhotoTeaser;->startActivityForResult(Landroid/content/Intent;I)V

    .line 61
    return-void
.end method
