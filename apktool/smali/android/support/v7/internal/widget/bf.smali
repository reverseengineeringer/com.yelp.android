.class Landroid/support/v7/internal/widget/bf;
.super Landroid/support/v7/internal/widget/an;
.source "TintResources.java"


# instance fields
.field private final a:Landroid/support/v7/internal/widget/bd;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/support/v7/internal/widget/bd;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/support/v7/internal/widget/an;-><init>(Landroid/content/res/Resources;)V

    .line 34
    iput-object p2, p0, Landroid/support/v7/internal/widget/bf;->a:Landroid/support/v7/internal/widget/bd;

    .line 35
    return-void
.end method


# virtual methods
.method public getDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroid/support/v7/internal/widget/an;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    iget-object v1, p0, Landroid/support/v7/internal/widget/bf;->a:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v1, p1, v0}, Landroid/support/v7/internal/widget/bd;->a(ILandroid/graphics/drawable/Drawable;)V

    .line 47
    :cond_0
    return-object v0
.end method
