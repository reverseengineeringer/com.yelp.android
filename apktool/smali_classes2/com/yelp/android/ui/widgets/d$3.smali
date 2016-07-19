.class Lcom/yelp/android/ui/widgets/d$3;
.super Lcom/yelp/android/ui/util/av$a;
.source "PanelPullDownHeader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/ui/widgets/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/d;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 160
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/d;->a(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->c(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->f(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 166
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 167
    return-void

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 172
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$3;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 173
    return-void
.end method
