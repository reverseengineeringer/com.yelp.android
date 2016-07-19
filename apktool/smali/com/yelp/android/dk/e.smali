.class public Lcom/yelp/android/dk/e;
.super Ljava/lang/Object;
.source "RxJavaSchedulersHook.java"


# static fields
.field private static final a:Lcom/yelp/android/dk/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    new-instance v0, Lcom/yelp/android/dk/e;

    invoke-direct {v0}, Lcom/yelp/android/dk/e;-><init>()V

    sput-object v0, Lcom/yelp/android/dk/e;->a:Lcom/yelp/android/dk/e;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static d()Lcom/yelp/android/dk/e;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/yelp/android/dk/e;->a:Lcom/yelp/android/dk/e;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/yelp/android/dg/a;)Lcom/yelp/android/dg/a;
    .locals 0

    .prologue
    .line 79
    return-object p1
.end method

.method public a()Lrx/d;
    .locals 1

    .prologue
    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public b()Lrx/d;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Lrx/d;
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    return-object v0
.end method
