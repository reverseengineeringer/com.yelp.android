.class Lcom/yelp/android/ui/activities/addphoto/a$1;
.super Lcom/yelp/android/analytics/d;
.source "AllTheUploadedMediaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/addphoto/a;-><init>(Landroid/content/Context;Lcom/yelp/android/ui/activities/addphoto/a$b;Landroid/view/View$OnClickListener;Landroid/util/Pair;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/addphoto/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/addphoto/a;Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/yelp/android/ui/activities/addphoto/a$1;->a:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-direct {p0, p2, p3}, Lcom/yelp/android/analytics/d;-><init>(Lcom/yelp/android/analytics/iris/EventIri;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a$1;->a:Lcom/yelp/android/ui/activities/addphoto/a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/addphoto/a;->a(Lcom/yelp/android/ui/activities/addphoto/a;Z)Z

    .line 118
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a$1;->a:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->b()V

    .line 119
    iget-object v0, p0, Lcom/yelp/android/ui/activities/addphoto/a$1;->a:Lcom/yelp/android/ui/activities/addphoto/a;

    invoke-virtual {v0}, Lcom/yelp/android/ui/activities/addphoto/a;->notifyDataSetChanged()V

    .line 120
    return-void
.end method
