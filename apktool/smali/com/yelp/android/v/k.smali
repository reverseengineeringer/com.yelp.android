.class Lcom/yelp/android/v/k;
.super Lcom/yelp/android/ai/d;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ai/d",
        "<",
        "Lcom/yelp/android/v/l",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/v/j;


# direct methods
.method constructor <init>(Lcom/yelp/android/v/j;I)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/v/k;->a:Lcom/yelp/android/v/j;

    invoke-direct {p0, p2}, Lcom/yelp/android/ai/d;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/v/l;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/v/l",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/yelp/android/v/l;->a()V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/yelp/android/v/l;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/v/k;->a(Lcom/yelp/android/v/l;Ljava/lang/Object;)V

    return-void
.end method
