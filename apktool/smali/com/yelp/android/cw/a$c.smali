.class final Lcom/yelp/android/cw/a$c;
.super Ljava/lang/Object;

# interfaces
.implements Ljp/line/android/sdk/api/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/cw/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RO:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljp/line/android/sdk/api/c",
        "<TRO;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/cw/c;

.field private final b:Lcom/yelp/android/cw/e;


# direct methods
.method constructor <init>(Lcom/yelp/android/cw/c;Lcom/yelp/android/cw/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/yelp/android/cw/a$c;->a:Lcom/yelp/android/cw/c;

    iput-object p2, p0, Lcom/yelp/android/cw/a$c;->b:Lcom/yelp/android/cw/e;

    return-void
.end method


# virtual methods
.method public final a(Ljp/line/android/sdk/api/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljp/line/android/sdk/api/b",
            "<TRO;>;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->b()Ljp/line/android/sdk/api/FutureStatus;

    move-result-object v0

    sget-object v1, Ljp/line/android/sdk/api/FutureStatus;->SUCCESS:Ljp/line/android/sdk/api/FutureStatus;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljp/line/android/sdk/api/b;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/yelp/android/cw/a$c;->b:Lcom/yelp/android/cw/e;

    iget-object v0, p0, Lcom/yelp/android/cw/a$c;->a:Lcom/yelp/android/cw/c;

    :cond_0
    return-void
.end method
