.class public final Lcom/yelp/android/dm/d;
.super Ljava/lang/Object;
.source "Subscriptions.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/yelp/android/dm/d$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/yelp/android/dm/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    new-instance v0, Lcom/yelp/android/dm/d$a;

    invoke-direct {v0}, Lcom/yelp/android/dm/d$a;-><init>()V

    sput-object v0, Lcom/yelp/android/dm/d;->a:Lcom/yelp/android/dm/d$a;

    return-void
.end method

.method public static a()Lrx/f;
    .locals 1

    .prologue
    .line 46
    invoke-static {}, Lcom/yelp/android/dm/a;->a()Lcom/yelp/android/dm/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Lcom/yelp/android/dg/a;)Lrx/f;
    .locals 1

    .prologue
    .line 73
    invoke-static {p0}, Lcom/yelp/android/dm/a;->a(Lcom/yelp/android/dg/a;)Lcom/yelp/android/dm/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/f;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/yelp/android/dm/d;->a:Lcom/yelp/android/dm/d$a;

    return-object v0
.end method
