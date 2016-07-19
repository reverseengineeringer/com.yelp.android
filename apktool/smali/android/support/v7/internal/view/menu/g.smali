.class public Landroid/support/v7/internal/view/menu/g;
.super Ljava/lang/Object;
.source "MenuDialogHelper.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/support/v7/internal/view/menu/l$a;


# instance fields
.field a:Landroid/support/v7/internal/view/menu/e;

.field private b:Landroid/support/v7/internal/view/menu/f;

.field private c:Landroid/support/v7/app/d;

.field private d:Landroid/support/v7/internal/view/menu/l$a;


# direct methods
.method public constructor <init>(Landroid/support/v7/internal/view/menu/f;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    .line 45
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->dismiss()V

    .line 142
    :cond_0
    return-void
.end method

.method public a(Landroid/os/IBinder;)V
    .locals 5

    .prologue
    .line 54
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    .line 57
    new-instance v1, Landroid/support/v7/app/d$a;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->e()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/app/d$a;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v2, Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v1}, Landroid/support/v7/app/d$a;->a()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/yelp/android/j/a$h;->abc_list_menu_item_layout:I

    invoke-direct {v2, v3, v4}, Landroid/support/v7/internal/view/menu/e;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    .line 62
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v2, p0}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/l$a;)V

    .line 63
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    iget-object v3, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v2, v3}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/support/v7/internal/view/menu/l;)V

    .line 64
    iget-object v2, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v2}, Landroid/support/v7/internal/view/menu/e;->d()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-virtual {v1, v2, p0}, Landroid/support/v7/app/d$a;->a(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/d$a;

    .line 67
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->o()Landroid/view/View;

    move-result-object v2

    .line 68
    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {v1, v2}, Landroid/support/v7/app/d$a;->a(Landroid/view/View;)Landroid/support/v7/app/d$a;

    .line 77
    :goto_0
    invoke-virtual {v1, p0}, Landroid/support/v7/app/d$a;->a(Landroid/content/DialogInterface$OnKeyListener;)Landroid/support/v7/app/d$a;

    .line 80
    invoke-virtual {v1}, Landroid/support/v7/app/d$a;->b()Landroid/support/v7/app/d;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    .line 81
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v0, p0}, Landroid/support/v7/app/d;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 83
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 84
    const/16 v1, 0x3eb

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 85
    if-eqz p1, :cond_0

    .line 86
    iput-object p1, v0, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 88
    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x20000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v0}, Landroid/support/v7/app/d;->show()V

    .line 91
    return-void

    .line 73
    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->n()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/app/d$a;->a(Landroid/graphics/drawable/Drawable;)Landroid/support/v7/app/d$a;

    move-result-object v2

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/f;->m()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/app/d$a;->a(Ljava/lang/CharSequence;)Landroid/support/v7/app/d$a;

    goto :goto_0
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;Z)V
    .locals 1

    .prologue
    .line 151
    if-nez p2, :cond_0

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    if-ne p1, v0, :cond_1

    .line 152
    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/internal/view/menu/g;->a()V

    .line 154
    :cond_1
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/support/v7/internal/view/menu/l$a;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/support/v7/internal/view/menu/l$a;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/l$a;->a(Landroid/support/v7/internal/view/menu/f;Z)V

    .line 157
    :cond_2
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/f;)Z
    .locals 1

    .prologue
    .line 161
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/support/v7/internal/view/menu/l$a;

    if-eqz v0, :cond_0

    .line 162
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->d:Landroid/support/v7/internal/view/menu/l$a;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/l$a;->a(Landroid/support/v7/internal/view/menu/f;)Z

    move-result v0

    .line 164
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .prologue
    .line 168
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/e;->d()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/h;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v7/internal/view/menu/f;->a(Landroid/view/MenuItem;I)Z

    .line 169
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .prologue
    .line 146
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->a:Landroid/support/v7/internal/view/menu/e;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/e;->a(Landroid/support/v7/internal/view/menu/f;Z)V

    .line 147
    return-void
.end method

.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 94
    const/16 v1, 0x52

    if-eq p2, v1, :cond_0

    const/4 v1, 0x4

    if-ne p2, v1, :cond_2

    .line 95
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_1

    .line 97
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v1}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 98
    if-eqz v1, :cond_2

    .line 99
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 100
    if-eqz v1, :cond_2

    .line 101
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 102
    if-eqz v1, :cond_2

    .line 103
    invoke-virtual {v1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    .line 125
    :goto_0
    return v0

    .line 108
    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 109
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->c:Landroid/support/v7/app/d;

    invoke-virtual {v1}, Landroid/support/v7/app/d;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 110
    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 113
    invoke-virtual {v1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v1

    .line 114
    if-eqz v1, :cond_2

    invoke-virtual {v1, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 115
    iget-object v1, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    invoke-virtual {v1, v0}, Landroid/support/v7/internal/view/menu/f;->a(Z)V

    .line 116
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    goto :goto_0

    .line 125
    :cond_2
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/g;->b:Landroid/support/v7/internal/view/menu/f;

    const/4 v1, 0x0

    invoke-virtual {v0, p2, p3, v1}, Landroid/support/v7/internal/view/menu/f;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result v0

    goto :goto_0
.end method
