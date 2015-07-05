.class public Lcom/yelp/android/be/c;
.super Ljava/lang/Object;
.source "TimerFactory.java"


# instance fields
.field private final a:Lcom/yelp/android/av/a;


# direct methods
.method public constructor <init>(Lcom/yelp/android/av/a;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/yelp/android/be/c;->a:Lcom/yelp/android/av/a;

    .line 19
    return-void
.end method


# virtual methods
.method public a()Lcom/yelp/android/be/b;
    .locals 3

    .prologue
    .line 22
    new-instance v0, Lcom/yelp/android/be/b;

    iget-object v1, p0, Lcom/yelp/android/be/c;->a:Lcom/yelp/android/av/a;

    sget-object v2, Lcom/yelp/android/analytics/iris/TimingIri;->ApplicationStartup:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/be/b;-><init>(Lcom/yelp/android/av/a;Lcom/yelp/android/analytics/iris/b;)V

    return-object v0
.end method

.method public b()Lcom/yelp/android/be/b;
    .locals 3

    .prologue
    .line 26
    new-instance v0, Lcom/yelp/android/be/b;

    iget-object v1, p0, Lcom/yelp/android/be/c;->a:Lcom/yelp/android/av/a;

    sget-object v2, Lcom/yelp/android/analytics/iris/TimingIri;->BusinessDetailLoad:Lcom/yelp/android/analytics/iris/TimingIri;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/be/b;-><init>(Lcom/yelp/android/av/a;Lcom/yelp/android/analytics/iris/b;)V

    return-object v0
.end method
