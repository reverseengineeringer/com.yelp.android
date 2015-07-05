.class Lcom/yelp/android/ui/panels/d;
.super Lcom/yelp/android/ui/util/dd;
.source "BizAttributePanel.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 68
    iput-object p1, p0, Lcom/yelp/android/ui/panels/d;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/dd;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/f;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/f;->a(Z)V

    .line 79
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/f;->a(Z)V

    .line 73
    iget-object v0, p0, Lcom/yelp/android/ui/panels/d;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 74
    return-void
.end method
