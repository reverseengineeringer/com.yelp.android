.class Lcom/yelp/android/m/e$1;
.super Landroid/support/v4/view/be;
.source "WindowDecorActionBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/m/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/m/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/m/e;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-direct {p0}, Landroid/support/v4/view/be;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 140
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->a(Lcom/yelp/android/m/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->b(Lcom/yelp/android/m/e;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->b(Lcom/yelp/android/m/e;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 142
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ai;->b(Landroid/view/View;F)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->c(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/m/e;->a(Lcom/yelp/android/m/e;Lcom/yelp/android/p/f;)Lcom/yelp/android/p/f;

    .line 147
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-virtual {v0}, Lcom/yelp/android/m/e;->i()V

    .line 148
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->d(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 149
    iget-object v0, p0, Lcom/yelp/android/m/e$1;->a:Lcom/yelp/android/m/e;

    invoke-static {v0}, Lcom/yelp/android/m/e;->d(Lcom/yelp/android/m/e;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ai;->w(Landroid/view/View;)V

    .line 151
    :cond_1
    return-void
.end method
