.class public Lcom/yelp/android/serializable/Category$a;
.super Ljava/lang/Object;
.source "Category.java"

# interfaces
.implements Lcom/yelp/android/util/StringUtils$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/yelp/android/serializable/Category;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/StringUtils$c",
        "<",
        "Lcom/yelp/android/serializable/Category;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 198
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/Category;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 202
    invoke-virtual {p1}, Lcom/yelp/android/serializable/Category;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 198
    check-cast p1, Lcom/yelp/android/serializable/Category;

    invoke-virtual {p0, p1}, Lcom/yelp/android/serializable/Category$a;->a(Lcom/yelp/android/serializable/Category;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
