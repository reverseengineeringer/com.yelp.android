.class Lcom/yelp/android/ui/activities/addphoto/j;
.super Lcom/yelp/android/analytics/d;
.source "AllTheUploadedMediaAdapter.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/i;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/j;->a:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-direct {p0, p2, p3}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/j;->a:Lcom/yelp/android/ui/activities/addphoto/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/i;->a(Lcom/yelp/android/ui/activities/addphoto/i;Z)Z

    .line 121
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/j;->a:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->f_()V

    .line 122
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/j;->a:Lcom/yelp/android/ui/activities/addphoto/i;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/i;->notifyDataSetChanged()V

    .line 123
    return-void
.end method
