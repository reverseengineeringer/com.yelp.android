.class Lcom/yelp/android/ui/widgets/n;
.super Ljava/lang/Object;
.source "PanelPullDownHeader.java"

# interfaces
.implements Lcom/yelp/android/ui/util/bi;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/k;)V
    .locals 0

    .prologue
    .line 166
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 5

    .prologue
    const/high16 v4, 0x42c80000    # 100.0f

    .line 174
    div-float v0, p1, v4

    const v1, 0x3b808081

    div-float/2addr v0, v1

    .line 177
    const/high16 v1, 0x437f0000    # 255.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 178
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->e(Lcom/yelp/android/ui/widgets/k;)Lcom/yelp/android/ui/widgets/WebImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v2}, Lcom/yelp/android/ui/widgets/k;->f(Lcom/yelp/android/ui/widgets/k;)I

    move-result v2

    int-to-float v2, v2

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-static {v1, v2}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;I)V

    .line 179
    iget-object v1, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->g(Lcom/yelp/android/ui/widgets/k;)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v3}, Lcom/yelp/android/ui/widgets/k;->h(Lcom/yelp/android/ui/widgets/k;)I

    move-result v3

    int-to-float v3, v3

    sub-float v0, v3, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v0, v0

    invoke-static {v1, v0}, Lcom/yelp/android/ui/util/cp;->b(Landroid/view/View;I)V

    .line 181
    cmpl-float v0, p1, v4

    if-lez v0, :cond_1

    .line 182
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 183
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->i(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->j(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->d(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 188
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->i(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->j(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public b(F)Z
    .locals 1

    .prologue
    .line 196
    const/high16 v0, 0x42c80000    # 100.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    .line 197
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->k(Lcom/yelp/android/ui/widgets/k;)Lcom/yelp/android/ui/widgets/o;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 198
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/n;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->k(Lcom/yelp/android/ui/widgets/k;)Lcom/yelp/android/ui/widgets/o;

    move-result-object v0

    invoke-interface {v0}, Lcom/yelp/android/ui/widgets/o;->c()V

    .line 200
    :cond_0
    const/4 v0, 0x1

    .line 202
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
