.class Lcom/yelp/android/ui/widgets/e;
.super Lcom/yelp/android/ui/util/dd;
.source "Darwin.java"


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/widgets/b;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/b;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/e;->b:Lcom/yelp/android/ui/widgets/b;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/e;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/e;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/widgets/f;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/f;-><init>(Lcom/yelp/android/ui/widgets/e;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    return-void
.end method
