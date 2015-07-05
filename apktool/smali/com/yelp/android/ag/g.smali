.class public abstract Lcom/yelp/android/ag/g;
.super Lcom/yelp/android/ag/a;
.source "SimpleTarget.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Z:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yelp/android/ag/a",
        "<TZ;>;"
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/yelp/android/ag/a;-><init>()V

    .line 51
    iput p1, p0, Lcom/yelp/android/ag/g;->a:I

    .line 52
    iput p2, p0, Lcom/yelp/android/ag/g;->b:I

    .line 53
    return-void
.end method


# virtual methods
.method public final a(Lcom/yelp/android/ag/h;)V
    .locals 3

    .prologue
    .line 62
    iget v0, p0, Lcom/yelp/android/ag/g;->a:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/yelp/android/ag/g;->b:I

    if-gtz v0, :cond_1

    .line 63
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Width and height must both be > 0, but given width: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ag/g;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " and"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " height: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/yelp/android/ag/g;->b:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", either provide dimensions in the constructor or call override()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iget v0, p0, Lcom/yelp/android/ag/g;->a:I

    iget v1, p0, Lcom/yelp/android/ag/g;->b:I

    invoke-interface {p1, v0, v1}, Lcom/yelp/android/ag/h;->a(II)V

    .line 67
    return-void
.end method
