.class Lcom/yelp/android/ui/activities/reviews/b$1;
.super Ljava/lang/Object;
.source "ReviewAdapterTiny.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviews/b;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviews/b$a;

.field final synthetic c:Lcom/yelp/android/ui/activities/reviews/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/b;Ljava/lang/Integer;Lcom/yelp/android/ui/activities/reviews/b$a;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->a:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->b:Lcom/yelp/android/ui/activities/reviews/b$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 72
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PreviousReviewsCollapse:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->b:Lcom/yelp/android/ui/activities/reviews/b$a;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b;Lcom/yelp/android/ui/activities/reviews/b$a;)V

    .line 79
    :goto_0
    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/b;->a(Lcom/yelp/android/ui/activities/reviews/b;)Ljava/util/Set;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->a:Ljava/lang/Integer;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 76
    sget-object v0, Lcom/yelp/android/analytics/iris/EventIri;->PreviousReviewsExpand:Lcom/yelp/android/analytics/iris/EventIri;

    invoke-static {v0}, Lcom/yelp/android/appdata/AppData;->a(Lcom/yelp/android/analytics/iris/a;)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->c:Lcom/yelp/android/ui/activities/reviews/b;

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviews/b$1;->b:Lcom/yelp/android/ui/activities/reviews/b$a;

    invoke-static {v0, v1}, Lcom/yelp/android/ui/activities/reviews/b;->b(Lcom/yelp/android/ui/activities/reviews/b;Lcom/yelp/android/ui/activities/reviews/b$a;)V

    goto :goto_0
.end method
