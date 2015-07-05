.class public Landroid/support/v7/internal/widget/TintAutoCompleteTextView;
.super Landroid/widget/AutoCompleteTextView;
.source "TintAutoCompleteTextView.java"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Landroid/support/v7/internal/widget/bd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 44
    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    sget-object v0, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->a:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 52
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    :cond_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 58
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->c()Landroid/support/v7/internal/widget/bd;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/bd;

    .line 59
    return-void
.end method


# virtual methods
.method public setDropDownBackgroundResource(I)V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->b:Landroid/support/v7/internal/widget/bd;

    invoke-virtual {v0, p1}, Landroid/support/v7/internal/widget/bd;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/widget/TintAutoCompleteTextView;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 64
    return-void
.end method
