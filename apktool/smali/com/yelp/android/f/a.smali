.class public Lcom/yelp/android/f/a;
.super Ljava/lang/Object;
.source "AccessibilityEventCompat.java"


# static fields
.field private static final a:Lcom/yelp/android/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 98
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 99
    new-instance v0, Lcom/yelp/android/f/c;

    invoke-direct {v0}, Lcom/yelp/android/f/c;-><init>()V

    sput-object v0, Lcom/yelp/android/f/a;->a:Lcom/yelp/android/f/e;

    .line 105
    :goto_0
    return-void

    .line 100
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_1

    .line 101
    new-instance v0, Lcom/yelp/android/f/b;

    invoke-direct {v0}, Lcom/yelp/android/f/b;-><init>()V

    sput-object v0, Lcom/yelp/android/f/a;->a:Lcom/yelp/android/f/e;

    goto :goto_0

    .line 103
    :cond_1
    new-instance v0, Lcom/yelp/android/f/d;

    invoke-direct {v0}, Lcom/yelp/android/f/d;-><init>()V

    sput-object v0, Lcom/yelp/android/f/a;->a:Lcom/yelp/android/f/e;

    goto :goto_0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;)Lcom/yelp/android/f/aj;
    .locals 1

    .prologue
    .line 284
    new-instance v0, Lcom/yelp/android/f/aj;

    invoke-direct {v0, p0}, Lcom/yelp/android/f/aj;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static a(Landroid/view/accessibility/AccessibilityEvent;I)V
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/yelp/android/f/a;->a:Lcom/yelp/android/f/e;

    invoke-interface {v0, p0, p1}, Lcom/yelp/android/f/e;->a(Landroid/view/accessibility/AccessibilityEvent;I)V

    .line 297
    return-void
.end method

.method public static b(Landroid/view/accessibility/AccessibilityEvent;)I
    .locals 1

    .prologue
    .line 313
    sget-object v0, Lcom/yelp/android/f/a;->a:Lcom/yelp/android/f/e;

    invoke-interface {v0, p0}, Lcom/yelp/android/f/e;->a(Landroid/view/accessibility/AccessibilityEvent;)I

    move-result v0

    return v0
.end method
