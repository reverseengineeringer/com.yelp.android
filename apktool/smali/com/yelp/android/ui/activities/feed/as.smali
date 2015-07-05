.class Lcom/yelp/android/ui/activities/feed/as;
.super Ljava/lang/Object;
.source "FeedListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/ar;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/ar;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/as;->a:Lcom/yelp/android/ui/activities/feed/ar;

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
    .line 219
    const/4 v0, 0x1

    return v0
.end method
