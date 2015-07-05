.class Lcom/yelp/android/ui/panels/ao;
.super Ljava/lang/Object;
.source "YourNextReviewAwaitsItem.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/ak;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/ak;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/yelp/android/ui/panels/ao;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/yelp/android/ui/panels/ao;->a:Lcom/yelp/android/ui/panels/ak;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/ao;->a:Lcom/yelp/android/ui/panels/ak;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/ak;->d(Lcom/yelp/android/ui/panels/ak;)Lcom/yelp/android/ui/activities/reviews/StarsView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/yelp/android/ui/activities/reviews/StarsView;->getNumStars()I

    move-result v1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/ak;->a(Lcom/yelp/android/ui/panels/ak;I)V

    .line 115
    return-void
.end method
