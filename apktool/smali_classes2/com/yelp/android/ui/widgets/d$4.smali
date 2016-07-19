.class Lcom/yelp/android/ui/widgets/d$4;
.super Ljava/lang/Object;
.source "PanelPullDownHeader.java"

# interfaces
.implements Lcom/yelp/android/ui/util/PullDownListView$a;


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
    .line 177
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 185
    div-float v0, p1, v4

    const v1, 0x3b808081

    div-float/2addr v0, v1

    .line 190
    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->a(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;I)V

    .line 192
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->g(Lcom/yelp/android/ui/widgets/d;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/d;->h(Lcom/yelp/android/ui/widgets/d;)I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/ar;->b(Landroid/view/View;I)V

    .line 194
    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    .line 195
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->c(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 196
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->i(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->j(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->f(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 205
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->c(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 201
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->i(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->j(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->d(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public b(F)Z
    .locals 1

    .prologue
    .line 209
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 210
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->k(Lcom/yelp/android/ui/widgets/d;)Lcom/yelp/android/ui/widgets/d$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$4;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->k(Lcom/yelp/android/ui/widgets/d;)Lcom/yelp/android/ui/widgets/d$a;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/d$a;->c()V

    .line 213
    :cond_0
    const/4 v0, 0x1

    .line 215
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
