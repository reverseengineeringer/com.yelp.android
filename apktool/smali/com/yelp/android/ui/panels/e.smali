.class Lcom/yelp/android/ui/panels/e;
.super Lcom/yelp/android/ui/util/dd;
.source "BizAttributePanel.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/yelp/android/ui/panels/e;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/dd;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 97
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/e;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/yelp/android/ui/util/cw;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/panels/BizAttributePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 89
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/dd;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 90
    iget-object v0, p0, Lcom/yelp/android/ui/panels/e;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/f;->a(Z)V

    .line 91
    return-void
.end method
