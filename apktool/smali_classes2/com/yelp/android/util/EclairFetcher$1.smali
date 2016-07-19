.class Lcom/yelp/android/util/EclairFetcher$1;
.super Ljava/lang/Object;
.source "EclairFetcher.java"

# interfaces
.implements Lcom/yelp/android/util/StringUtils$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/yelp/android/util/EclairFetcher;->a(Landroid/content/Context;Ljava/util/Set;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/yelp/android/util/StringUtils$c",
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
    .line 183
    iput-object p1, p0, Lcom/yelp/android/util/EclairFetcher$1;->a:Lcom/yelp/android/util/EclairFetcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/yelp/android/util/EclairFetcher$1;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 186
    invoke-static {p1}, Landroid/database/DatabaseUtils;->sqlEscapeString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
