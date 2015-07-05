.class Lcom/yelp/android/i/j;
.super Landroid/support/v4/view/ey;
.source "WindowDecorActionBar.java"


# instance fields
.field final synthetic a:Lcom/yelp/android/i/i;


# direct methods
.method constructor <init>(Lcom/yelp/android/i/i;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-direct {p0}, Landroid/support/v4/view/ey;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Landroid/view/View;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 138
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->a(Lcom/yelp/android/i/i;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->b(Lcom/yelp/android/i/i;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->b(Lcom/yelp/android/i/i;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 140
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/support/v4/view/ce;->b(Landroid/view/View;F)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->d(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->e(Lcom/yelp/android/i/i;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 143
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->d(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 145
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 146
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->c(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 147
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/yelp/android/i/i;->a(Lcom/yelp/android/i/i;Lcom/yelp/android/l/h;)Lcom/yelp/android/l/h;

    .line 148
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-virtual {v0}, Lcom/yelp/android/i/i;->i()V

    .line 149
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->f(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 150
    iget-object v0, p0, Lcom/yelp/android/i/j;->a:Lcom/yelp/android/i/i;

    invoke-static {v0}, Lcom/yelp/android/i/i;->f(Lcom/yelp/android/i/i;)Landroid/support/v7/internal/widget/ActionBarOverlayLayout;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/ce;->t(Landroid/view/View;)V

    .line 152
    :cond_2
    return-void
.end method
