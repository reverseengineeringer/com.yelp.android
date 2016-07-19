.class Lcom/yelp/android/ui/activities/search/f$1;
.super Ljava/lang/Object;
.source "SeparatedSearchAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/ui/activities/search/f;->a(Lcom/yelp/android/appdata/webrequests/SearchRequest$SearchResponse;)V
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
        "Lcom/yelp/android/serializable/SearchSeparator;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/ui/activities/search/f;


# direct methods
.method constructor <init>(Lcom/yelp/android/ui/activities/search/f;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/yelp/android/ui/activities/search/f$1;->a:Lcom/yelp/android/ui/activities/search/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/yelp/android/serializable/SearchSeparator;Lcom/yelp/android/serializable/SearchSeparator;)I
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p2}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v0

    invoke-virtual {p1}, Lcom/yelp/android/serializable/SearchSeparator;->a()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 152
    check-cast p1, Lcom/yelp/android/serializable/SearchSeparator;

    check-cast p2, Lcom/yelp/android/serializable/SearchSeparator;

    invoke-virtual {p0, p1, p2}, Lcom/yelp/android/ui/activities/search/f$1;->a(Lcom/yelp/android/serializable/SearchSeparator;Lcom/yelp/android/serializable/SearchSeparator;)I

    move-result v0

    return v0
.end method
