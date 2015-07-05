.class Lcom/yelp/android/ui/activities/reviews/aa;
.super Ljava/lang/Object;
.source "ReviewAdapterTiny.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/ab;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviews/z;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/z;Ljava/lang/Integer;Lcom/yelp/android/ui/activities/reviews/ab;)V
    .locals 0

    .prologue
    .line 66
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/aa;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/aa;->b:Lcom/yelp/android/ui/activities/reviews/ab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/z;->a(Lcom/yelp/android/ui/activities/reviews/z;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/z;->a(Lcom/yelp/android/ui/activities/reviews/z;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 71
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsCollapse:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->b:Lcom/yelp/android/ui/activities/reviews/ab;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/z;->a(Lcom/yelp/android/ui/activities/reviews/z;Lcom/yelp/android/ui/activities/reviews/ab;)V

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/z;->a(Lcom/yelp/android/ui/activities/reviews/z;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 75
    sget-object v0, Lcom/yelp/android/analytics/iris/ReviewEventIri;->PreviousReviewsExpand:Lcom/yelp/android/analytics/iris/ReviewEventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/b;)V

    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/aa;->c:Lcom/yelp/android/ui/activities/reviews/z;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/aa;->b:Lcom/yelp/android/ui/activities/reviews/ab;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/z;->b(Lcom/yelp/android/ui/activities/reviews/z;Lcom/yelp/android/ui/activities/reviews/ab;)V

    goto :goto_0
.end method
