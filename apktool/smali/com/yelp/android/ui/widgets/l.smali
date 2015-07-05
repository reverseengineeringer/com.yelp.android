.class Lcom/yelp/android/ui/widgets/l;
.super Lcom/yelp/android/ui/util/dd;
.source "PanelPullDownHeader.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/widgets/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/widgets/k;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->a(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 134
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->a(Lcom/yelp/android/ui/widgets/k;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 138
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/k;->c(Lcom/yelp/android/ui/widgets/k;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/l;->a:Lcom/yelp/android/ui/widgets/k;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/k;->b(Lcom/yelp/android/ui/widgets/k;Z)Z

    .line 144
    return-void
.end method
