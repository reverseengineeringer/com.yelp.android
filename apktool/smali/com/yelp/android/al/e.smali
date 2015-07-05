.class Lcom/yelp/android/al/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/al/b;

.field final synthetic b:Lcom/yelp/android/al/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/al/c;Lcom/yelp/android/al/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/al/e;->b:Lcom/yelp/android/al/c;

    iput-object p2, p0, Lcom/yelp/android/al/e;->a:Lcom/yelp/android/al/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/al/e;->b:Lcom/yelp/android/al/c;

    iget-object v1, p0, Lcom/yelp/android/al/e;->a:Lcom/yelp/android/al/b;

    invoke-static {v0, v1}, Lcom/yelp/android/al/c;->a(Lcom/yelp/android/al/c;Lcom/yelp/android/al/b;)V

    return-void
.end method
