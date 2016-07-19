.class Lcom/yelp/android/serializable/MediaCategory$1;
.super Ljava/lang/Object;
.source "MediaCategory.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/serializable/MediaCategory;->h()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/yelp/android/serializable/Media;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/serializable/MediaCategory;


# direct methods
.method constructor <init>(Lcom/yelp/android/serializable/MediaCategory;)V
    .locals 0

    .prologue
    .line 81
    iput-object p1, p0, Lcom/yelp/android/serializable/MediaCategory$1;->a:Lcom/yelp/android/serializable/MediaCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/serializable/Media;)I
    .locals 2

    .prologue
    .line 84
    invoke-interface {p1}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v0

    invoke-interface {p2}, Lcom/yelp/android/serializable/Media;->e()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 81
    check-cast p1, Lcom/yelp/android/serializable/Media;

    check-cast p2, Lcom/yelp/android/serializable/Media;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/serializable/MediaCategory$1;->a(Lcom/yelp/android/serializable/Media;Lcom/yelp/android/serializable/Media;)I

    move-result v0

    return v0
.end method
