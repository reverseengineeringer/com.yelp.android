.class public Landroid/support/v7/internal/widget/TintSpinner;
.super Landroid/widget/Spinner;
.source "TintSpinner.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v7/internal/widget/TintSpinner;->a:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100d4
        0x1010176
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const v0, 0x1010081

    invoke-direct {p0, p1, p2, v0}, Landroid/support/v7/internal/widget/TintSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    sget-object v0, Landroid/support/v7/internal/widget/TintSpinner;->a:[I

    invoke-static {p1, p2, v0, p3, v1}, Landroid/support/v7/internal/widget/bg;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/internal/widget/bg;

    move-result-object v0

    .line 54
    invoke-virtual {v0, v1}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->d(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0, v2}, Landroid/support/v7/internal/widget/bg;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 58
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x10

    if-lt v2, v3, :cond_1

    .line 59
    invoke-virtual {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->setPopupBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 65
    :cond_0
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/internal/widget/bg;->b()V

    .line 66
    return-void

    .line 60
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xb

    if-lt v2, v3, :cond_0

    .line 61
    invoke-static {p0, v1}, Landroid/support/v7/internal/widget/TintSpinner;->a(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method private static a(Landroid/widget/Spinner;Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 71
    :try_start_0
    const-class v0, Landroid/widget/Spinner;

    const-string/jumbo v1, "mPopup"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 72
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 74
    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v1, v0, Landroid/widget/ListPopupWindow;

    if-eqz v1, :cond_0

    .line 77
    check-cast v0, Landroid/widget/ListPopupWindow;

    invoke-virtual {v0, p1}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    .line 84
    :cond_0
    :goto_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 81
    :catch_1
    move-exception v0

    .line 82
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method
