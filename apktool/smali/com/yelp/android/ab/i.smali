.class Lcom/yelp/android/ab/i;
.super Ljava/lang/Object;
.source "GifFrameManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ab/h;

.field final synthetic b:Lcom/yelp/android/ab/h;


# direct methods
.method constructor <init>(Lcom/yelp/android/ab/h;Lcom/yelp/android/ab/h;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/yelp/android/ab/i;->b:Lcom/yelp/android/ab/h;

    iput-object p2, p0, Lcom/yelp/android/ab/i;->a:Lcom/yelp/android/ab/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/yelp/android/ab/i;->a:Lcom/yelp/android/ab/h;

    invoke-static {v0}, Lcom/bumptech/glide/h;->a(Lcom/yelp/android/ag/j;)V

    .line 153
    return-void
.end method
