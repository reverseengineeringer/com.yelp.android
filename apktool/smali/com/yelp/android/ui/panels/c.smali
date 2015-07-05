.class Lcom/yelp/android/ui/panels/c;
.super Ljava/lang/Object;
.source "BizAttributePanel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/panels/BizAttributePanel;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/panels/BizAttributePanel;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/yelp/android/ui/panels/c;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/yelp/android/ui/panels/c;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-virtual {v0}, Lcom/yelp/android/ui/panels/BizAttributePanel;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/yelp/android/ui/panels/c;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    iget-object v1, p0, Lcom/yelp/android/ui/panels/c;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    invoke-static {v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 57
    iget-object v0, p0, Lcom/yelp/android/ui/panels/c;->a:Lcom/yelp/android/ui/panels/BizAttributePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/ui/panels/BizAttributePanel;->a(Lcom/yelp/android/ui/panels/BizAttributePanel;Z)V

    .line 59
    :cond_0
    return-void
.end method
