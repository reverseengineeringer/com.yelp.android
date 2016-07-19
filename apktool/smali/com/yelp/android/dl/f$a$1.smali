.class Lcom/yelp/android/dl/f$a$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lcom/yelp/android/dg/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/dl/f$a;->a(Lcom/yelp/android/dg/a;J)Lrx/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/dl/f$b;

.field final synthetic b:Lcom/yelp/android/dl/f$a;


# direct methods
.method constructor <init>(Lcom/yelp/android/dl/f$a;Lcom/yelp/android/dl/f$b;)V
    .locals 0

    .prologue
    .line 86
    iput-object p1, p0, Lcom/yelp/android/dl/f$a$1;->b:Lcom/yelp/android/dl/f$a;

    iput-object p2, p0, Lcom/yelp/android/dl/f$a$1;->a:Lcom/yelp/android/dl/f$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/yelp/android/dl/f$a$1;->b:Lcom/yelp/android/dl/f$a;

    iget-object v0, v0, Lcom/yelp/android/dl/f$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lcom/yelp/android/dl/f$a$1;->a:Lcom/yelp/android/dl/f$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 91
    return-void
.end method
