.class Landroid/support/v7/app/a$f;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/app/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field final a:Landroid/app/Activity;

.field b:Landroid/support/v7/app/b$a;


# direct methods
.method private constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Landroid/support/v7/app/a$f;->a:Landroid/app/Activity;

    .line 509
    return-void
.end method

.method synthetic constructor <init>(Landroid/app/Activity;Landroid/support/v7/app/a$1;)V
    .locals 0

    .prologue
    .line 502
    invoke-direct {p0, p1}, Landroid/support/v7/app/a$f;-><init>(Landroid/app/Activity;)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 513
    iget-object v0, p0, Landroid/support/v7/app/a$f;->a:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v7/app/b;->a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .prologue
    .line 545
    iget-object v0, p0, Landroid/support/v7/app/a$f;->b:Landroid/support/v7/app/b$a;

    iget-object v1, p0, Landroid/support/v7/app/a$f;->a:Landroid/app/Activity;

    invoke-static {v0, v1, p1}, Landroid/support/v7/app/b;->a(Landroid/support/v7/app/b$a;Landroid/app/Activity;I)Landroid/support/v7/app/b$a;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/app/a$f;->b:Landroid/support/v7/app/b$a;

    .line 547
    return-void
.end method

.method public b()Landroid/content/Context;
    .locals 1

    .prologue
    .line 518
    iget-object v0, p0, Landroid/support/v7/app/a$f;->a:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 520
    if-eqz v0, :cond_0

    .line 521
    invoke-virtual {v0}, Landroid/app/ActionBar;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    .line 525
    :goto_0
    return-object v0

    .line 523
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/a$f;->a:Landroid/app/Activity;

    goto :goto_0
.end method
