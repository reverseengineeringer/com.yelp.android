.class public Lcom/yelp/android/d/a;
.super Ljava/lang/Object;
.source "ICUCompat.java"


# static fields
.field private static final a:Lcom/yelp/android/d/b;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 55
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 56
    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 57
    new-instance v0, Lcom/yelp/android/d/d;

    invoke-direct {v0}, Lcom/yelp/android/d/d;-><init>()V

    sput-object v0, Lcom/yelp/android/d/a;->a:Lcom/yelp/android/d/b;

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    new-instance v0, Lcom/yelp/android/d/c;

    invoke-direct {v0}, Lcom/yelp/android/d/c;-><init>()V

    sput-object v0, Lcom/yelp/android/d/a;->a:Lcom/yelp/android/d/b;

    goto :goto_0
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    sget-object v0, Lcom/yelp/android/d/a;->a:Lcom/yelp/android/d/b;

    invoke-interface {v0, p0}, Lcom/yelp/android/d/b;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    sget-object v0, Lcom/yelp/android/d/a;->a:Lcom/yelp/android/d/b;

    invoke-interface {v0, p0}, Lcom/yelp/android/d/b;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
