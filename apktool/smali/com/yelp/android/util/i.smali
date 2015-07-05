.class Lcom/yelp/android/util/i;
.super Ljava/lang/Object;
.source "EclairFetcher.java"

# interfaces
.implements Lcom/yelp/android/util/ag;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/ag",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/yelp/android/util/EclairFetcher;


# direct methods
.method constructor <init>(Lcom/yelp/android/util/EclairFetcher;)V
    .locals 0

    .prologue
    .line 165
    iput-object p1, p0, Lcom/yelp/android/util/i;->a:Lcom/yelp/android/util/EclairFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/util/i;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
