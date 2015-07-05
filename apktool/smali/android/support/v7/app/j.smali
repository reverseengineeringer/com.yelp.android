.class final Landroid/support/v7/app/j;
.super Ljava/lang/Object;
.source "ActionBarActivityDelegateBase.java"

# interfaces
.implements Landroid/support/v7/internal/view/menu/y;


# instance fields
.field final synthetic a:Landroid/support/v7/app/ActionBarActivityDelegateBase;


# direct methods
.method private constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V
    .locals 0

    .prologue
    .line 1518
    iput-object p1, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/app/f;)V
    .locals 0

    .prologue
    .line 1518
    invoke-direct {p0, p1}, Landroid/support/v7/app/j;-><init>(Landroid/support/v7/app/ActionBarActivityDelegateBase;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/internal/view/menu/i;Z)V
    .locals 1

    .prologue
    .line 1530
    iget-object v0, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-static {v0, p1}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->a(Landroid/support/v7/app/ActionBarActivityDelegateBase;Landroid/support/v7/internal/view/menu/i;)V

    .line 1531
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/i;)Z
    .locals 2

    .prologue
    .line 1521
    iget-object v0, p0, Landroid/support/v7/app/j;->a:Landroid/support/v7/app/ActionBarActivityDelegateBase;

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarActivityDelegateBase;->n()Lcom/yelp/android/i/h;

    move-result-object v0

    .line 1522
    if-eqz v0, :cond_0

    .line 1523
    const/16 v1, 0x8

    invoke-interface {v0, v1, p1}, Lcom/yelp/android/i/h;->c(ILandroid/view/Menu;)Z

    .line 1525
    :cond_0
    const/4 v0, 0x1

    return v0
.end method
