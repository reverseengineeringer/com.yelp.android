.class public Lcom/yelp/android/l/b;
.super Lcom/yelp/android/m/a;
.source "StandaloneActionMode.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/j;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Landroid/support/v7/internal/widget/ActionBarContextView;

.field private c:Lcom/yelp/android/m/b;

.field private d:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private e:Z

.field private f:Z

.field private g:Landroid/support/v7/internal/view/menu/i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v7/internal/widget/ActionBarContextView;Lcom/yelp/android/m/b;Z)V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/yelp/android/m/a;-><init>()V

    .line 49
    iput-object p1, p0, Lcom/yelp/android/l/b;->a:Landroid/content/Context;

    .line 50
    iput-object p2, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    .line 51
    iput-object p3, p0, Lcom/yelp/android/l/b;->c:Lcom/yelp/android/m/b;

    .line 53
    new-instance v0, Landroid/support/v7/internal/view/menu/i;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/i;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/i;->a(I)Landroid/support/v7/internal/view/menu/i;

    move-result-object v0

    iput-object v0, p0, Lcom/yelp/android/l/b;->g:Landroid/support/v7/internal/view/menu/i;

    .line 54
    iget-object v0, p0, Lcom/yelp/android/l/b;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/i;->a(Landroid/support/v7/internal/view/menu/j;)V

    .line 55
    iput-boolean p4, p0, Lcom/yelp/android/l/b;->f:Z

    .line 56
    return-void
.end method


# virtual methods
.method public a()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 133
    new-instance v0, Landroid/view/MenuInflater;

    iget-object v1, p0, Lcom/yelp/android/l/b;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/yelp/android/l/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/l/b;->b(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)V
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/yelp/android/l/b;->d()V

    .line 157
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->a()Z

    .line 158
    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setCustomView(Landroid/view/View;)V

    .line 92
    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    :goto_0
    iput-object v0, p0, Lcom/yelp/android/l/b;->d:Ljava/lang/ref/WeakReference;

    .line 93
    return-void

    .line 92
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 66
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0, p1}, Lcom/yelp/android/m/a;->a(Z)V

    .line 81
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitleOptional(Z)V

    .line 82
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/yelp/android/l/b;->c:Lcom/yelp/android/m/b;

    invoke-interface {v0, p0, p2}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/view/Menu;
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/l/b;->g:Landroid/support/v7/internal/view/menu/i;

    return-object v0
.end method

.method public b(I)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/yelp/android/l/b;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/yelp/android/l/b;->a(Ljava/lang/CharSequence;)V

    .line 76
    return-void
.end method

.method public b(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/ActionBarContextView;->setTitle(Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method

.method public c()V
    .locals 2

    .prologue
    .line 102
    iget-boolean v0, p0, Lcom/yelp/android/l/b;->e:Z

    if-eqz v0, :cond_0

    .line 109
    :goto_0
    return-void

    .line 105
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/yelp/android/l/b;->e:Z

    .line 107
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 108
    iget-object v0, p0, Lcom/yelp/android/l/b;->c:Lcom/yelp/android/m/b;

    invoke-interface {v0, p0}, Lcom/yelp/android/m/b;->a(Lcom/yelp/android/m/a;)V

    goto :goto_0
.end method

.method public d()V
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/yelp/android/l/b;->c:Lcom/yelp/android/m/b;

    iget-object v1, p0, Lcom/yelp/android/l/b;->g:Landroid/support/v7/internal/view/menu/i;

    invoke-interface {v0, p0, v1}, Lcom/yelp/android/m/b;->b(Lcom/yelp/android/m/a;Landroid/view/Menu;)Z

    .line 98
    return-void
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public g()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public h()Z
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/yelp/android/l/b;->b:Landroid/support/v7/internal/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/internal/widget/ActionBarContextView;->d()Z

    move-result v0

    return v0
.end method

.method public i()Landroid/view/View;
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/l/b;->d:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/l/b;->d:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
