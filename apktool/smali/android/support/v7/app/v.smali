.class Landroid/support/v7/app/v;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggle.java"

# interfaces
.implements Landroid/support/v7/app/r;


# instance fields
.field final a:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 679
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 680
    iput-object p1, p0, Landroid/support/v7/app/v;->a:Landroid/app/Activity;

    .line 681
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 700
    iget-object v0, p0, Landroid/support/v7/app/v;->a:Landroid/app/Activity;

    return-object v0
.end method

.method public getThemeUpIndicator()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 695
    const/4 v0, 0x0

    return-object v0
.end method

.method public setActionBarDescription(I)V
    .locals 0

    .prologue
    .line 691
    return-void
.end method
