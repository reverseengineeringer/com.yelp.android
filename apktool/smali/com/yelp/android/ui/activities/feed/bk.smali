.class Lcom/yelp/android/ui/activities/feed/bk;
.super Ljava/lang/Object;
.source "TipFeedViewBinder.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/feed/bg;

.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Landroid/view/animation/Animation;

.field final synthetic d:Lcom/yelp/android/ui/activities/feed/bi;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/feed/bi;Lcom/yelp/android/ui/activities/feed/bg;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/yelp/android/ui/activities/feed/bk;->d:Lcom/yelp/android/ui/activities/feed/bi;

    iput-object p2, p0, Lcom/yelp/android/ui/activities/feed/bk;->a:Lcom/yelp/android/ui/activities/feed/bg;

    iput-object p3, p0, Lcom/yelp/android/ui/activities/feed/bk;->b:Landroid/view/animation/Animation;

    iput-object p4, p0, Lcom/yelp/android/ui/activities/feed/bk;->c:Landroid/view/animation/Animation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 98
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 100
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bk;->d:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->d(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/CompoundButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bk;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/activities/feed/bk;->d:Lcom/yelp/android/ui/activities/feed/bi;

    invoke-static {v0}, Lcom/yelp/android/ui/activities/feed/bi;->d(Lcom/yelp/android/ui/activities/feed/bi;)Landroid/widget/CompoundButton;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/activities/feed/bk;->c:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
