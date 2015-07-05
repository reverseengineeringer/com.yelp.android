.class public final enum Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
.super Ljava/lang/Enum;
.source "ListBookmarksRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field public static final enum ALPHABETICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field public static final enum CHRONOLOGICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

.field public static final enum DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;


# instance fields
.field public final description:I

.field final query:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 25
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    const-string/jumbo v1, "DISTANCE"

    const-string/jumbo v2, "distance"

    const v3, 0x7f07058d

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 26
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    const-string/jumbo v1, "ALPHABETICAL"

    const-string/jumbo v2, "alpha"

    const v3, 0x7f07058b

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ALPHABETICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 27
    new-instance v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    const-string/jumbo v1, "CHRONOLOGICAL"

    const-string/jumbo v2, "date"

    const v3, 0x7f07058c

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->CHRONOLOGICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    .line 24
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->DISTANCE:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->ALPHABETICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->CHRONOLOGICAL:Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 33
    iput-object p3, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->query:Ljava/lang/String;

    .line 34
    iput p4, p0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->description:I

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 1

    .prologue
    .line 24
    const-class v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->$VALUES:[Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    invoke-virtual {v0}, [Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/appdata/webrequests/ListBookmarksRequest$SortType;

    return-object v0
.end method
