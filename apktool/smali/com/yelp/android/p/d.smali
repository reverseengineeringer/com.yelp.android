.class public Lcom/yelp/android/p/d;
.super Landroid/view/ActionMode;
.source "SupportActionModeWrapper.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/p/d$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Lcom/yelp/android/r/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/yelp/android/r/a;)V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Landroid/view/ActionMode;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/yelp/android/p/d;->a:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    .line 49
    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->c()V

    .line 79
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->i()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lcom/yelp/android/p/d;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->b()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/e/a;

    invoke-static {v1, v0}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/content/Context;Lcom/yelp/android/e/a;)Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->a()Landroid/view/MenuInflater;

    move-result-object v0

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->g()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->j()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->f()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTitleOptionalHint()Z
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->k()Z

    move-result v0

    return v0
.end method

.method public invalidate()V
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->d()V

    .line 74
    return-void
.end method

.method public isTitleOptional()Z
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0}, Lcom/yelp/android/r/a;->h()Z

    move-result v0

    return v0
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->a(Landroid/view/View;)V

    .line 114
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->b(I)V

    .line 104
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->a(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->a(Ljava/lang/Object;)V

    .line 59
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->a(I)V

    .line 94
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->b(Ljava/lang/CharSequence;)V

    .line 64
    return-void
.end method

.method public setTitleOptionalHint(Z)V
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/yelp/android/p/d;->b:Lcom/yelp/android/r/a;

    invoke-virtual {v0, p1}, Lcom/yelp/android/r/a;->a(Z)V

    .line 129
    return-void
.end method
