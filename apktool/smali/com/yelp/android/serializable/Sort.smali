.class public final enum Lcom/yelp/android/serializable/Sort;
.super Ljava/lang/Enum;
.source "Sort.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/yelp/android/serializable/Sort;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/yelp/android/serializable/Sort;

.field public static final enum Default:Lcom/yelp/android/serializable/Sort;

.field public static final enum Distance:Lcom/yelp/android/serializable/Sort;

.field public static final enum Rating:Lcom/yelp/android/serializable/Sort;


# instance fields
.field private final queryParam:Ljava/lang/String;

.field private final res:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 11
    new-instance v0, Lcom/yelp/android/serializable/Sort;

    const-string/jumbo v1, "Default"

    const v2, 0x7f07035e

    const-string/jumbo v3, "default"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/yelp/android/serializable/Sort;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    .line 12
    new-instance v0, Lcom/yelp/android/serializable/Sort;

    const-string/jumbo v1, "Distance"

    const v2, 0x7f07035f

    const-string/jumbo v3, "distance"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/yelp/android/serializable/Sort;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Sort;->Distance:Lcom/yelp/android/serializable/Sort;

    .line 13
    new-instance v0, Lcom/yelp/android/serializable/Sort;

    const-string/jumbo v1, "Rating"

    const v2, 0x7f070361

    const-string/jumbo v3, "rating"

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/yelp/android/serializable/Sort;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/yelp/android/serializable/Sort;->Rating:Lcom/yelp/android/serializable/Sort;

    .line 10
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/yelp/android/serializable/Sort;

    sget-object v1, Lcom/yelp/android/serializable/Sort;->Default:Lcom/yelp/android/serializable/Sort;

    aput-object v1, v0, v4

    sget-object v1, Lcom/yelp/android/serializable/Sort;->Distance:Lcom/yelp/android/serializable/Sort;

    aput-object v1, v0, v5

    sget-object v1, Lcom/yelp/android/serializable/Sort;->Rating:Lcom/yelp/android/serializable/Sort;

    aput-object v1, v0, v6

    sput-object v0, Lcom/yelp/android/serializable/Sort;->$VALUES:[Lcom/yelp/android/serializable/Sort;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 31
    iput p3, p0, Lcom/yelp/android/serializable/Sort;->res:I

    .line 32
    iput-object p4, p0, Lcom/yelp/android/serializable/Sort;->queryParam:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public static fromQueryParameter(Ljava/lang/String;)Lcom/yelp/android/serializable/Sort;
    .locals 5

    .prologue
    .line 19
    if-eqz p0, :cond_1

    .line 20
    invoke-static {}, Lcom/yelp/android/serializable/Sort;->values()[Lcom/yelp/android/serializable/Sort;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 21
    iget-object v4, v0, Lcom/yelp/android/serializable/Sort;->queryParam:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 27
    :goto_1
    return-object v0

    .line 20
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 27
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/yelp/android/serializable/Sort;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/yelp/android/serializable/Sort;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/yelp/android/serializable/Sort;

    return-object v0
.end method

.method public static values()[Lcom/yelp/android/serializable/Sort;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/yelp/android/serializable/Sort;->$VALUES:[Lcom/yelp/android/serializable/Sort;

    invoke-virtual {v0}, [Lcom/yelp/android/serializable/Sort;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/yelp/android/serializable/Sort;

    return-object v0
.end method


# virtual methods
.method public getLabel(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/yelp/android/serializable/Sort;->res:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method
