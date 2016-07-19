.class final Lcom/yelp/android/cz/b$a;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cz/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/d;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/yelp/android/db/a;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/yelp/android/db/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljp/line/android/sdk/login/d;",
            ">;",
            "Lcom/yelp/android/db/a;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/cz/b$a;->a:Ljava/util/List;

    iput-object p2, p0, Lcom/yelp/android/cz/b$a;->b:Lcom/yelp/android/db/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/yelp/android/cz/b$a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljp/line/android/sdk/login/d;

    iget-object v2, p0, Lcom/yelp/android/cz/b$a;->b:Lcom/yelp/android/db/a;

    :try_start_0
    invoke-interface {v0, v2}, Ljp/line/android/sdk/login/d;->a(Lcom/yelp/android/db/a;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    return-void
.end method
