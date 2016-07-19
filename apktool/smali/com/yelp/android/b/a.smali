.class public abstract Lcom/yelp/android/b/a;
.super Ljava/lang/Object;
.source "AnimatorCompatHelper.java"


# static fields
.field static a:Lcom/yelp/android/b/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    .line 28
    new-instance v0, Lcom/yelp/android/b/d;

    invoke-direct {v0}, Lcom/yelp/android/b/d;-><init>()V

    sput-object v0, Lcom/yelp/android/b/a;->a:Lcom/yelp/android/b/b;

    .line 32
    :goto_0
    return-void

    .line 30
    :cond_0
    new-instance v0, Lcom/yelp/android/b/c;

    invoke-direct {v0}, Lcom/yelp/android/b/c;-><init>()V

    sput-object v0, Lcom/yelp/android/b/a;->a:Lcom/yelp/android/b/b;

    goto :goto_0
.end method

.method public static a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/yelp/android/b/a;->a:Lcom/yelp/android/b/b;

    invoke-interface {v0, p0}, Lcom/yelp/android/b/b;->a(Landroid/view/View;)V

    .line 44
    return-void
.end method
