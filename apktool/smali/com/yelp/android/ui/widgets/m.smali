.class Lcom/yelp/android/ui/widgets/m;
.super Lcom/yelp/android/ui/util/dd;
.source "PanelPullDownHeader.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/k;)V
    .locals 0

    .prologue
    .line 147
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 150
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/k;->a(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->a(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->d(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 156
    :goto_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0, v2}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 157
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/m;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 163
    return-void
.end method
