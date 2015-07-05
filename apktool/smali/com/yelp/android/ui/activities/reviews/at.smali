.class Lcom/yelp/android/ui/activities/reviews/at;
.super Ljava/lang/Object;
.source "ReviewOverviewFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/yelp/android/ui/activities/reviews/at;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 167
    iget-object v0, p0, Lcom/yelp/android/ui/activities/reviews/at;->a:Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;->a(Lcom/yelp/android/ui/activities/reviews/ReviewOverviewFragment;)V

    .line 168
    const/4 v0, 0x0

    return v0
.end method
