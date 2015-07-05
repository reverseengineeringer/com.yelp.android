.class public Landroid/support/v7/internal/widget/TintCheckedTextView;
.super Landroid/widget/CheckedTextView;
.source "TintCheckedTextView.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v7/internal/widget/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010108

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/internal/widget/TintCheckedTextView;->a:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 42
    const v0, 0x10103c8

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    sget-object v0, Landroid/support/v7/internal/widget/TintCheckedTextView;->a:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 50
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 51
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 53
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintCheckedTextView;->b:Landroid/support/v7/internal/widget/bd;

    .line 54
    return-void
.end method


# virtual methods
.method public setCheckMarkDrawable(I)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintCheckedTextView;->b:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintCheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 59
    return-void
.end method
