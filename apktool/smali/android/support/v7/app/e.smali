.class Landroid/support/v7/app/e;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegate.java"

# interfaces
.implements Landroid/support/v4/app/ActionBarDrawerToggle$Delegate;
.implements Landroid/support/v7/app/r;


# instance fields
.field final synthetic a:Landroid/support/v7/app/c;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/c;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/c;Landroid/support/v7/app/d;)V
    .locals 0

    .prologue
    .line 273
    invoke-direct {p0, p1}, Landroid/support/v7/app/e;-><init>(Landroid/support/v7/app/c;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->m()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 278
    invoke-virtual {p0}, Landroid/support/v7/app/e;->a()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [I

    iget-object v3, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/c;

    invoke-virtual {v3}, Landroid/support/v7/app/c;->k()I

    move-result v3

    aput v3, v2, v4

    invoke-static {v0, v1, v2}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 280
    invoke-virtual {v0, v4}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 281
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 282
    return-object v1
.end method

.method public setActionBarDescription(I)V
    .locals 1

    .prologue
    .line 307
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 308
    if-eqz v0, :cond_0

    .line 309
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->c(I)V

    .line 311
    :cond_0
    return-void
.end method

.method public setActionBarUpIndicator(Landroid/graphics/drawable/Drawable;I)V
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Landroid/support/v7/app/e;->a:Landroid/support/v7/app/c;

    invoke-virtual {v0}, Landroid/support/v7/app/c;->b()Landroid/support/v7/app/ActionBar;

    move-result-object v0

    .line 299
    if-eqz v0, :cond_0

    .line 300
    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBar;->b(Landroid/graphics/drawable/Drawable;)V

    .line 301
    invoke-virtual {v0, p2}, Landroid/support/v7/app/ActionBar;->c(I)V

    .line 303
    :cond_0
    return-void
.end method
