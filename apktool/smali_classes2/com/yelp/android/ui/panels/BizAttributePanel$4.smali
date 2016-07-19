.class Lcom/yelp/android/ui/panels/BizAttributePanel$4;
.super Lcom/yelp/android/ui/util/av$a;
.source "BizAttributePanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$4;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/av$a;->onAnimationEnd(Landroid/view/animation/Animation;)V

    .line 102
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$4;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 103
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$4;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$4;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;)Ljava/lang/Runnable;

    move-result-object v1

    sget v2, Lcom/yelp/android/ui/util/av;->a:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/yelp/android/ui/panels/BizAttributePanel;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 95
    invoke-super {p0, p1}, Lcom/yelp/android/ui/util/av$a;->onAnimationStart(Landroid/view/animation/Animation;)V

    .line 96
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$4;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel$a;->a(Z)V

    .line 97
    return-void
.end method
