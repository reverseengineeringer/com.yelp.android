.class final Lcom/yelp/android/dm/c$a;
.super Ljava/lang/Object;
.source "MultipleAssignmentSubscription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/dm/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field final a:Z

.field final b:Lrx/f;


# direct methods
.method constructor <init>(ZLrx/f;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-boolean p1, p0, Lcom/yelp/android/dm/c$a;->a:Z

    .line 37
    iput-object p2, p0, Lcom/yelp/android/dm/c$a;->b:Lrx/f;

    .line 38
    return-void
.end method


# virtual methods
.method a()Lcom/yelp/android/dm/c$a;
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/yelp/android/dm/c$a;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/yelp/android/dm/c$a;->b:Lrx/f;

    invoke-direct {v0, v1, v2}, Lcom/yelp/android/dm/c$a;-><init>(ZLrx/f;)V

    return-object v0
.end method

.method a(Lrx/f;)Lcom/yelp/android/dm/c$a;
    .locals 2

    .prologue
    .line 45
    new-instance v0, Lcom/yelp/android/dm/c$a;

    iget-boolean v1, p0, Lcom/yelp/android/dm/c$a;->a:Z

    invoke-direct {v0, v1, p1}, Lcom/yelp/android/dm/c$a;-><init>(ZLrx/f;)V

    return-object v0
.end method
