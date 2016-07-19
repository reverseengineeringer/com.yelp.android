.class abstract Landroid/support/v7/app/g;
.super Landroid/support/v7/app/f;
.source "AppCompatDelegateImplBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/g$1;,
        Landroid/support/v7/app/g$b;,
        Landroid/support/v7/app/g$a;
    }
.end annotation


# instance fields
.field final a:Landroid/content/Context;

.field final b:Landroid/view/Window;

.field final c:Landroid/view/Window$Callback;

.field final d:Landroid/view/Window$Callback;

.field final e:Landroid/support/v7/app/e;

.field f:Landroid/support/v7/app/ActionBar;

.field g:Landroid/view/MenuInflater;

.field h:Z

.field i:Z

.field j:Z

.field k:Z

.field l:Z

.field private m:Ljava/lang/CharSequence;

.field private n:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/Window;Landroid/support/v7/app/e;)V
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0}, Landroid/support/v7/app/f;-><init>()V

    .line 63
    iput-object p1, p0, Landroid/support/v7/app/g;->a:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Landroid/support/v7/app/g;->b:Landroid/view/Window;

    .line 65
    iput-object p3, p0, Landroid/support/v7/app/g;->e:Landroid/support/v7/app/e;

    .line 67
    iget-object v0, p0, Landroid/support/v7/app/g;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/g;->c:Landroid/view/Window$Callback;

    .line 68
    iget-object v0, p0, Landroid/support/v7/app/g;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/support/v7/app/g$b;

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "AppCompat has already installed itself into the Window"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->c:Landroid/view/Window$Callback;

    invoke-virtual {p0, v0}, Landroid/support/v7/app/g;->a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/g;->d:Landroid/view/Window$Callback;

    .line 74
    iget-object v0, p0, Landroid/support/v7/app/g;->b:Landroid/view/Window;

    iget-object v1, p0, Landroid/support/v7/app/g;->d:Landroid/view/Window$Callback;

    invoke-virtual {v0, v1}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    .line 75
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/support/v7/app/g;->i()V

    .line 88
    iget-object v0, p0, Landroid/support/v7/app/g;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method a(Landroid/view/Window$Callback;)Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 80
    new-instance v0, Landroid/support/v7/app/g$b;

    invoke-direct {v0, p0, p1}, Landroid/support/v7/app/g$b;-><init>(Landroid/support/v7/app/g;Landroid/view/Window$Callback;)V

    return-object v0
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method public final a(Ljava/lang/CharSequence;)V
    .locals 0

    .prologue
    .line 202
    iput-object p1, p0, Landroid/support/v7/app/g;->m:Ljava/lang/CharSequence;

    .line 203
    invoke-virtual {p0, p1}, Landroid/support/v7/app/g;->b(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method public b()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 98
    iget-object v0, p0, Landroid/support/v7/app/g;->g:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 99
    invoke-virtual {p0}, Landroid/support/v7/app/g;->i()V

    .line 100
    new-instance v1, Lcom/yelp/android/p/e;

    iget-object v0, p0, Landroid/support/v7/app/g;->f:Landroid/support/v7/app/ActionBar;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/app/g;->f:Landroid/support/v7/app/ActionBar;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBar;->f()Landroid/content/Context;

    move-result-object v0

    :goto_0
    invoke-direct {v1, v0}, Lcom/yelp/android/p/e;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v7/app/g;->g:Landroid/view/MenuInflater;

    .line 103
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->g:Landroid/view/MenuInflater;

    return-object v0

    .line 100
    :cond_1
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/content/Context;

    goto :goto_0
.end method

.method abstract b(Lcom/yelp/android/r/a$a;)Lcom/yelp/android/r/a;
.end method

.method abstract b(Ljava/lang/CharSequence;)V
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method public final f()V
    .locals 1

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/g;->n:Z

    .line 179
    return-void
.end method

.method public final g()Landroid/support/v7/app/a$a;
    .locals 2

    .prologue
    .line 117
    new-instance v0, Landroid/support/v7/app/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/g$a;-><init>(Landroid/support/v7/app/g;Landroid/support/v7/app/g$1;)V

    return-object v0
.end method

.method abstract i()V
.end method

.method final j()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Landroid/support/v7/app/g;->f:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method final k()Landroid/content/Context;
    .locals 2

    .prologue
    .line 121
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/g;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 125
    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->f()Landroid/content/Context;

    move-result-object v0

    .line 129
    :cond_0
    if-nez v0, :cond_1

    .line 130
    iget-object v0, p0, Landroid/support/v7/app/g;->a:Landroid/content/Context;

    .line 132
    :cond_1
    return-object v0
.end method

.method public l()Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x0

    return v0
.end method

.method final m()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/support/v7/app/g;->n:Z

    return v0
.end method

.method final n()Landroid/view/Window$Callback;
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Landroid/support/v7/app/g;->b:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v0

    return-object v0
.end method

.method final o()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Landroid/support/v7/app/g;->c:Landroid/view/Window$Callback;

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Landroid/support/v7/app/g;->c:Landroid/view/Window$Callback;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 214
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/g;->m:Ljava/lang/CharSequence;

    goto :goto_0
.end method
