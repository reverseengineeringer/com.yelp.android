.class Lcom/yelp/android/ui/widgets/a$3;
.super Lcom/yelp/android/ui/util/av$a;
.source "Darwin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/widgets/a;->a(Landroid/app/Activity;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/yelp/android/ui/widgets/a;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/a;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/a$3;->b:Lcom/yelp/android/ui/widgets/a;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/a$3;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$3;->a:Landroid/view/View;

    new-instance v1, Lcom/yelp/android/ui/widgets/a$3$1;

    invoke-direct {v1, p0}, Lcom/yelp/android/ui/widgets/a$3$1;-><init>(Lcom/yelp/android/ui/widgets/a$3;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 90
    return-void
.end method
