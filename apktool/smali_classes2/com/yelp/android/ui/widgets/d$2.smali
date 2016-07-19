.class Lcom/yelp/android/ui/widgets/d$2;
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
    .line 139
    iput-object p1, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->a(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 143
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->c(Lcom/yelp/android/ui/widgets/d;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v1}, Lcom/yelp/android/ui/widgets/d;->d(Lcom/yelp/android/ui/widgets/d;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 147
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    invoke-static {v0}, Lcom/yelp/android/ui/widgets/d;->e(Lcom/yelp/android/ui/widgets/d;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/yelp/android/ui/widgets/d$2;->a:Lcom/yelp/android/ui/widgets/d;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/widgets/d;->b(Lcom/yelp/android/ui/widgets/d;Z)Z

    .line 153
    return-void
.end method
