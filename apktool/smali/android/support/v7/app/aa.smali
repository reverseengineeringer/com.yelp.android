.class Landroid/support/v7/app/aa;
.super Ljava/lang/Object;
.source "ActionBarDrawerToggleHoneycomb.java"


# static fields
.field private static final a:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101030b

    aput v2, v0, v1

    sput-object v0, Landroid/support/v7/app/aa;->a:[I

    return-void
.end method

.method public static a(Landroid/app/Activity;)Landroid/graphics/drawable/Drawable;
    .locals 2

    .prologue
    .line 92
    sget-object v0, Landroid/support/v7/app/aa;->a:[I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 94
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    return-object v1
.end method

.method public static a(Landroid/support/v7/app/ab;Landroid/app/Activity;I)Landroid/support/v7/app/ab;
    .locals 5

    .prologue
    .line 72
    if-nez p0, :cond_0

    .line 73
    new-instance p0, Landroid/support/v7/app/ab;

    invoke-direct {p0, p1}, Landroid/support/v7/app/ab;-><init>(Landroid/app/Activity;)V

    .line 75
    :cond_0
    iget-object v0, p0, Landroid/support/v7/app/ab;->a:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_1

    .line 77
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 78
    iget-object v1, p0, Landroid/support/v7/app/ab;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-gt v1, v2, :cond_1

    .line 82
    invoke-virtual {v0}, Landroid/app/ActionBar;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setSubtitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    :cond_1
    :goto_0
    return-object p0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    const-string/jumbo v1, "ActionBarDrawerToggleHoneycomb"

    const-string/jumbo v2, "Couldn\'t set content description via JB-MR2 API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
