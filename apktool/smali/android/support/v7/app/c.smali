.class abstract Landroid/support/v7/app/c;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"


# instance fields
.field final a:Landroid/support/v7/app/ActionBarActivity;

.field b:Z

.field c:Z

.field d:Z

.field e:Z

.field final f:Lcom/yelp/android/i/h;

.field private g:Landroid/support/v7/app/ActionBar;

.field private h:Landroid/view/MenuInflater;

.field private i:Lcom/yelp/android/i/h;

.field private j:Z


# direct methods
.method constructor <init>(Landroid/support/v7/app/ActionBarActivity;)V
    .locals 1

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Landroid/support/v7/app/d;

    invoke-direct {v0, p0}, Landroid/support/v7/app/d;-><init>(Landroid/support/v7/app/c;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->f:Lcom/yelp/android/i/h;

    .line 113
    iput-object p1, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 114
    iget-object v0, p0, Landroid/support/v7/app/c;->f:Lcom/yelp/android/i/h;

    iput-object v0, p0, Landroid/support/v7/app/c;->i:Lcom/yelp/android/i/h;

    .line 115
    return-void
.end method

.method static a(Landroid/support/v7/app/ActionBarActivity;)Landroid/support/v7/app/c;
    .locals 2

    .prologue
    .line 51
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 52
    new-instance v0, Landroid/support/v7/app/o;

    invoke-direct {v0, p0}, Landroid/support/v7/app/o;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    .line 54
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {v0, p0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;-><init>(Landroid/support/v7/app/ActionBarActivity;)V

    goto :goto_0
.end method


# virtual methods
.method abstract a()Landroid/support/v7/app/ActionBar;
.end method

.method abstract a(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
.end method

.method abstract a(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
.end method

.method abstract a(I)V
.end method

.method abstract a(ILandroid/view/Menu;)V
.end method

.method abstract a(Landroid/content/res/Configuration;)V
.end method

.method a(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 148
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    sget-object v1, Lcom/yelp/android/g/l;->Theme:[I

    invoke-virtual {v0, v1}, Landroid/support/v7/app/ActionBarActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 150
    sget v1, Lcom/yelp/android/g/l;->Theme_windowActionBar:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "You need to use a Theme.AppCompat theme (or descendant) with this activity."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 156
    :cond_0
    sget v1, Lcom/yelp/android/g/l;->Theme_windowActionBar:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 157
    iput-boolean v3, p0, Landroid/support/v7/app/c;->b:Z

    .line 159
    :cond_1
    sget v1, Lcom/yelp/android/g/l;->Theme_windowActionBarOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 160
    iput-boolean v3, p0, Landroid/support/v7/app/c;->c:Z

    .line 162
    :cond_2
    sget v1, Lcom/yelp/android/g/l;->Theme_windowActionModeOverlay:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 163
    iput-boolean v3, p0, Landroid/support/v7/app/c;->d:Z

    .line 165
    :cond_3
    sget v1, Lcom/yelp/android/g/l;->Theme_android_windowIsFloating:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Landroid/support/v7/app/c;->e:Z

    .line 166
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 167
    return-void
.end method

.method protected final a(Landroid/support/v7/app/ActionBar;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Landroid/support/v7/app/c;->g:Landroid/support/v7/app/ActionBar;

    .line 136
    return-void
.end method

.method abstract a(Landroid/support/v7/widget/Toolbar;)V
.end method

.method abstract a(Landroid/view/View;)V
.end method

.method abstract a(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method final a(Lcom/yelp/android/i/h;)V
    .locals 2

    .prologue
    .line 317
    if-nez p1, :cond_0

    .line 318
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "callback can not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 320
    :cond_0
    iput-object p1, p0, Landroid/support/v7/app/c;->i:Lcom/yelp/android/i/h;

    .line 321
    return-void
.end method

.method abstract a(Ljava/lang/CharSequence;)V
.end method

.method abstract a(Z)V
.end method

.method abstract a(ILandroid/view/KeyEvent;)Z
.end method

.method abstract a(ILandroid/view/View;Landroid/view/Menu;)Z
.end method

.method abstract a(Landroid/view/KeyEvent;)Z
.end method

.method a(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 199
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-ge v0, v1, :cond_0

    .line 203
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBarActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    .line 205
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    invoke-virtual {v0, p1, p2}, Landroid/support/v7/app/ActionBarActivity;->superOnPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method final b()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 122
    iget-boolean v0, p0, Landroid/support/v7/app/c;->b:Z

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Landroid/support/v7/app/c;->g:Landroid/support/v7/app/ActionBar;

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p0}, Landroid/support/v7/app/c;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/c;->g:Landroid/support/v7/app/ActionBar;

    .line 127
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->g:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method abstract b(Lcom/yelp/android/m/b;)Lcom/yelp/android/m/a;
.end method

.method abstract b(Landroid/os/Bundle;)V
.end method

.method abstract b(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
.end method

.method abstract b(Z)V
.end method

.method abstract b(I)Z
.end method

.method abstract b(ILandroid/view/Menu;)Z
.end method

.method final c()Landroid/support/v7/app/ActionBar;
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Landroid/support/v7/app/c;->g:Landroid/support/v7/app/ActionBar;

    return-object v0
.end method

.method abstract c(I)V
.end method

.method abstract c(Z)V
.end method

.method abstract c(ILandroid/view/Menu;)Z
.end method

.method d()Landroid/view/MenuInflater;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Landroid/support/v7/app/c;->h:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/yelp/android/l/e;

    invoke-virtual {p0}, Landroid/support/v7/app/c;->m()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/yelp/android/l/e;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/support/v7/app/c;->h:Landroid/view/MenuInflater;

    .line 144
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/c;->h:Landroid/view/MenuInflater;

    return-object v0
.end method

.method abstract e()V
.end method

.method abstract f()V
.end method

.method abstract g()V
.end method

.method abstract h()Z
.end method

.method final i()Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
    .locals 2

    .prologue
    .line 227
    new-instance v0, Landroid/support/v7/app/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/c;Landroid/support/v7/app/d;)V

    return-object v0
.end method

.method final j()Landroid/support/v7/app/r;
    .locals 2

    .prologue
    .line 231
    new-instance v0, Landroid/support/v7/app/e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/c;Landroid/support/v7/app/d;)V

    return-object v0
.end method

.method abstract k()I
.end method

.method abstract l()V
.end method

.method protected final m()Landroid/content/Context;
    .locals 2

    .prologue
    .line 257
    const/4 v0, 0x0

    .line 260
    invoke-virtual {p0}, Landroid/support/v7/app/c;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    .line 261
    if-eqz v1, :cond_0

    .line 262
    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->f()Landroid/content/Context;

    move-result-object v0

    .line 265
    :cond_0
    if-nez v0, :cond_1

    .line 266
    iget-object v0, p0, Landroid/support/v7/app/c;->a:Landroid/support/v7/app/ActionBarActivity;

    .line 268
    :cond_1
    return-object v0
.end method

.method final n()Lcom/yelp/android/i/h;
    .locals 1

    .prologue
    .line 324
    iget-object v0, p0, Landroid/support/v7/app/c;->i:Lcom/yelp/android/i/h;

    return-object v0
.end method

.method final o()V
    .locals 1

    .prologue
    .line 328
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/app/c;->j:Z

    .line 329
    return-void
.end method

.method final p()Z
    .locals 1

    .prologue
    .line 332
    iget-boolean v0, p0, Landroid/support/v7/app/c;->j:Z

    return v0
.end method
