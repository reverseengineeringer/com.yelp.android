.class Lcom/yelp/android/ui/activities/reviewpage/u;
.super Ljava/lang/Object;
.source "BusinessReviewHighlightsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReviewHighlight;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/t;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/t;Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/u;->b:Lcom/yelp/android/ui/activities/reviewpage/t;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/u;->a:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/u;->b:Lcom/yelp/android/ui/activities/reviewpage/t;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/t;->a(Lcom/yelp/android/ui/activities/reviewpage/t;)Lcom/yelp/android/ui/activities/reviewpage/v;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/u;->a:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/v;->a(Lcom/yelp/android/serializable/ReviewHighlight;)V

    .line 87
    return-void
.end method
