.class Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;
.super Ljava/lang/Object;
.source "AnimatedToggleButton.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/AnimatedToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/animation/Animation;

.field final synthetic b:Landroid/view/animation/Animation;

.field final synthetic c:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/AnimatedToggleButton;Landroid/view/animation/Animation;Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 42
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->c:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->a:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->b:Landroid/view/animation/Animation;

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
    .line 48
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 57
    :goto_0
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->c:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->a:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 54
    :pswitch_2
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->c:Lcom/yelp/android/ui/widgets/AnimatedToggleButton;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/AnimatedToggleButton$1;->b:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/widgets/AnimatedToggleButton;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 48
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
