.class Lcom/yelp/android/aa/k$1;
.super Lcom/yelp/android/ao/e;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/aa/k;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/ao/e",
        "<",
        "Lcom/yelp/android/aa/k$a",
        "<TA;>;TB;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/aa/k;


# direct methods
.method constructor <init>(Lcom/yelp/android/aa/k;I)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/yelp/android/aa/k$1;->a:Lcom/yelp/android/aa/k;

    invoke-direct {p0, p2}, Lcom/yelp/android/ao/e;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected a(Lcom/yelp/android/aa/k$a;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/aa/k$a",
            "<TA;>;TB;)V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/yelp/android/aa/k$a;->a()V

    .line 30
    return-void
.end method

.method protected bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Lcom/yelp/android/aa/k$a;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/aa/k$1;->a(Lcom/yelp/android/aa/k$a;Ljava/lang/Object;)V

    return-void
.end method
