.class Lcom/yelp/android/ar/e;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/yelp/android/ar/b;

.field final synthetic b:Lcom/yelp/android/ar/c;


# direct methods
.method constructor <init>(Lcom/yelp/android/ar/c;Lcom/yelp/android/ar/b;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/ar/e;->b:Lcom/yelp/android/ar/c;

    iput-object p2, p0, Lcom/yelp/android/ar/e;->a:Lcom/yelp/android/ar/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/yelp/android/ar/e;->b:Lcom/yelp/android/ar/c;

    iget-object v1, p0, Lcom/yelp/android/ar/e;->a:Lcom/yelp/android/ar/b;

    invoke-static {v0, v1}, Lcom/yelp/android/ar/c;->a(Lcom/yelp/android/ar/c;Lcom/yelp/android/ar/b;)V

    return-void
.end method
