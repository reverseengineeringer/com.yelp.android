.class public Lcom/yelp/android/af/a;
.super Ljava/lang/Object;
.source "DrawableCrossFadeFactory.java"

# interfaces
.implements Lcom/yelp/android/af/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/yelp/android/af/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/yelp/android/af/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/l",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/yelp/android/af/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/yelp/android/af/d",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    const/16 v0, 0x12c

    invoke-direct {p0, v0}, Lcom/yelp/android/af/a;-><init>(I)V

    .line 30
    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/yelp/android/af/l;

    new-instance v1, Lcom/yelp/android/af/c;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/yelp/android/af/c;-><init>(Lcom/yelp/android/af/b;)V

    invoke-direct {v0, v1}, Lcom/yelp/android/af/l;-><init>(Lcom/yelp/android/af/k;)V

    invoke-direct {p0, v0, p1}, Lcom/yelp/android/af/a;-><init>(Lcom/yelp/android/af/l;I)V

    .line 34
    return-void
.end method

.method constructor <init>(Lcom/yelp/android/af/l;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/af/l",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/yelp/android/af/a;->a:Lcom/yelp/android/af/l;

    .line 46
    iput p2, p0, Lcom/yelp/android/af/a;->b:I

    .line 47
    return-void
.end method


# virtual methods
.method public a(ZZ)Lcom/yelp/android/af/e;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ)",
            "Lcom/yelp/android/af/e",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    if-eqz p1, :cond_0

    .line 52
    invoke-static {}, Lcom/yelp/android/af/h;->b()Lcom/yelp/android/af/e;

    move-result-object v0

    .line 60
    :goto_0
    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/yelp/android/af/a;->c:Lcom/yelp/android/af/d;

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/yelp/android/af/a;->a:Lcom/yelp/android/af/l;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/yelp/android/af/l;->a(ZZ)Lcom/yelp/android/af/e;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/yelp/android/af/d;

    iget v2, p0, Lcom/yelp/android/af/a;->b:I

    invoke-direct {v1, v0, v2}, Lcom/yelp/android/af/d;-><init>(Lcom/yelp/android/af/e;I)V

    iput-object v1, p0, Lcom/yelp/android/af/a;->c:Lcom/yelp/android/af/d;

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/yelp/android/af/a;->c:Lcom/yelp/android/af/d;

    goto :goto_0
.end method
