.class Lcom/yelp/android/ui/util/o$1;
.super Lcom/yelp/android/am/a;
.source "GlideImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/o;->a(Lcom/yelp/android/ui/util/t$b;II)Lcom/yelp/android/am/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yelp/android/am/a",
        "<",
        "Lcom/yelp/android/ae/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/util/t$b;

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:Lcom/yelp/android/ui/util/o;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/o;Lcom/yelp/android/ui/util/t$b;II)V
    .locals 0

    .prologue
    .line 173
    iput-object p1, p0, Lcom/yelp/android/ui/util/o$1;->d:Lcom/yelp/android/ui/util/o;

    iput-object p2, p0, Lcom/yelp/android/ui/util/o$1;->a:Lcom/yelp/android/ui/util/t$b;

    iput p3, p0, Lcom/yelp/android/ui/util/o$1;->b:I

    iput p4, p0, Lcom/yelp/android/ui/util/o$1;->c:I

    invoke-direct {p0}, Lcom/yelp/android/am/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/ae/b;Lcom/yelp/android/al/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/yelp/android/ae/b;",
            "Lcom/yelp/android/al/c",
            "<-",
            "Lcom/yelp/android/ae/b;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    iget-object v0, p0, Lcom/yelp/android/ui/util/o$1;->a:Lcom/yelp/android/ui/util/t$b;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/t$b;->a(Landroid/graphics/drawable/Drawable;)V

    .line 180
    return-void
.end method

.method public a(Lcom/yelp/android/am/h;)V
    .locals 2

    .prologue
    .line 184
    iget v0, p0, Lcom/yelp/android/ui/util/o$1;->b:I

    iget v1, p0, Lcom/yelp/android/ui/util/o$1;->c:I

    invoke-interface {p1, v0, v1}, Lcom/yelp/android/am/h;->a(II)V

    .line 185
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/al/c;)V
    .locals 0

    .prologue
    .line 173
    check-cast p1, Lcom/yelp/android/ae/b;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/o$1;->a(Lcom/yelp/android/ae/b;Lcom/yelp/android/al/c;)V

    return-void
.end method
