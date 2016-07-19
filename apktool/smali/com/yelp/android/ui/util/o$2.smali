.class Lcom/yelp/android/ui/util/o$2;
.super Lcom/yelp/android/am/b;
.source "GlideImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/util/o;->a(Landroid/widget/ImageView;Lcom/yelp/android/ui/util/t$c;)Lcom/yelp/android/am/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/yelp/android/ui/util/t$c;

.field final synthetic c:Lcom/yelp/android/ui/util/o;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/util/o;Landroid/widget/ImageView;Lcom/yelp/android/ui/util/t$c;)V
    .locals 0

    .prologue
    .line 200
    iput-object p1, p0, Lcom/yelp/android/ui/util/o$2;->c:Lcom/yelp/android/ui/util/o;

    iput-object p3, p0, Lcom/yelp/android/ui/util/o$2;->b:Lcom/yelp/android/ui/util/t$c;

    invoke-direct {p0, p2}, Lcom/yelp/android/am/b;-><init>(Landroid/widget/ImageView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Lcom/yelp/android/al/c;)V
    .locals 1

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Lcom/yelp/android/am/b;->a(Ljava/lang/Object;Lcom/yelp/android/al/c;)V

    .line 207
    iget-object v0, p0, Lcom/yelp/android/ui/util/o$2;->b:Lcom/yelp/android/ui/util/t$c;

    invoke-interface {v0, p1}, Lcom/yelp/android/ui/util/t$c;->a(Landroid/graphics/Bitmap;)V

    .line 208
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/yelp/android/al/c;)V
    .locals 0

    .prologue
    .line 200
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/util/o$2;->a(Landroid/graphics/Bitmap;Lcom/yelp/android/al/c;)V

    return-void
.end method
