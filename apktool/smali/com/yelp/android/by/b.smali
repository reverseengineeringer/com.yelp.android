.class public Lcom/yelp/android/by/b;
.super Ljava/lang/Object;
.source "SubscriptionConfig.java"


# instance fields
.field public final a:Lrx/d;

.field public final b:Lrx/d;


# direct methods
.method public constructor <init>(Lrx/d;Lrx/d;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/yelp/android/by/b;->a:Lrx/d;

    .line 17
    iput-object p2, p0, Lcom/yelp/android/by/b;->b:Lrx/d;

    .line 18
    return-void
.end method

.method public static a()Lcom/yelp/android/by/b;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Lcom/yelp/android/by/b;

    invoke-static {}, Lcom/yelp/android/dl/d;->b()Lrx/d;

    move-result-object v1

    invoke-static {}, Lcom/yelp/android/df/a;->a()Lrx/d;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/by/b;-><init>(Lrx/d;Lrx/d;)V

    return-object v0
.end method
