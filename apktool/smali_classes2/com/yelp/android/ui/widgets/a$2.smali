.class Lcom/yelp/android/ui/widgets/a$2;
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
    .line 65
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/a$2;->b:Lcom/yelp/android/ui/widgets/a;

    iput-object p2, p0, Lcom/yelp/android/ui/widgets/a$2;->a:Landroid/view/View;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 70
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/a$2;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/a$2;->b:Lcom/yelp/android/ui/widgets/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/a;->a(Lcom/yelp/android/ui/widgets/a;Z)Z

    .line 73
    return-void
.end method
