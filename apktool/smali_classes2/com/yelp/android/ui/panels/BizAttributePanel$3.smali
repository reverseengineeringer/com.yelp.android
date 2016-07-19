.class Lcom/yelp/android/ui/panels/BizAttributePanel$3;
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
    .line 72
    iput-object p1, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$3;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Lcom/yelp/android/ui/util/av$a;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$3;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel$a;->a(Z)V

    .line 83
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$3;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;)Lcom/yelp/android/ui/panels/BizAttributePanel$a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel$a;->a(Z)V

    .line 77
    iget-object v0, p0, Lcom/yelp/android/ui/panels/BizAttributePanel$3;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 78
    return-void
.end method
