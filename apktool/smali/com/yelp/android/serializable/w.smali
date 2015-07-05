.class public Lcom/yelp/android/serializable/w;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lcom/yelp/android/util/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/ag",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Category;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 173
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 170
    check-cast p1, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/w;->a(Lcom/yelp/android/serializable/Category;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
