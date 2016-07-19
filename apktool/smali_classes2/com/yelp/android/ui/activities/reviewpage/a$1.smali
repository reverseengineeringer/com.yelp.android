.class Lcom/yelp/android/ui/activities/reviewpage/a$1;
.super Ljava/lang/Object;
.source "BusinessReviewHighlightsAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/reviewpage/a;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/ReviewHighlight;

.field final synthetic b:Lcom/yelp/android/ui/activities/reviewpage/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviewpage/a;Lcom/yelp/android/serializable/ReviewHighlight;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviewpage/a$1;->b:Lcom/yelp/android/ui/activities/reviewpage/a;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/reviewpage/a$1;->a:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviewpage/a$1;->b:Lcom/yelp/android/ui/activities/reviewpage/a;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviewpage/a;->a(Lcom/yelp/android/ui/activities/reviewpage/a;)Lcom/yelp/android/ui/activities/reviewpage/a$a;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/reviewpage/a$1;->a:Lcom/yelp/android/serializable/ReviewHighlight;

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/activities/reviewpage/a$a;->a(Lcom/yelp/android/serializable/ReviewHighlight;)V

    .line 91
    return-void
.end method
