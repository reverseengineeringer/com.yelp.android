.class public Landroid/support/v7/internal/widget/TintCheckBox;
.super Landroid/widget/CheckBox;
.source "TintCheckBox.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v7/internal/widget/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010107

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/TintCheckBox;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 41
    const v0, 0x101006c

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    sget-object v0, Landroid/support/v7/internal/widget/TintCheckBox;->a:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 49
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 50
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 52
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintCheckBox;->b:Landroid/support/v7/internal/widget/bd;

    .line 53
    return-void
.end method


# virtual methods
.method public setButtonDrawable(I)V
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintCheckBox;->b:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintCheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 58
    return-void
.end method
