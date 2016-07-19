.class final Lcom/yelp/android/cz/f;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lcom/yelp/android/cz/d;


# direct methods
.method constructor <init>(Lcom/yelp/android/cz/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/yelp/android/cz/f;->b:Lcom/yelp/android/cz/d;

    iput-object p2, p0, Lcom/yelp/android/cz/f;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yelp/android/cz/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/login/c;

    iget-object v2, p0, Lcom/yelp/android/cz/f;->b:Lcom/yelp/android/cz/d;

    invoke-virtual {v2, v0}, Lcom/yelp/android/cz/d;->b(Ljp/line/android/sdk/login/c;)V

    goto :goto_0

    :cond_0
    return-void
.end method
